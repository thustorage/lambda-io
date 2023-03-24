#include <dlfcn.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "fmap.h"

#define MAX_CMD_LEN (4096)
#define MAX_CMD_OUTPUT_LEN (4096)
#define PHYSICAL_SECTOR_SIZE (4096)

const char FILEFRAG_CMD[] = "filefrag -v ";
const char FILEFRAG_FILTER_CMD[] =
        " | cut -d \":\" -f 3,4 | awk 'NR > 3' | sed \"s/.* "
        "\\([0-9]\\+\\)\\.\\..*:\\(.*\\)/\\1 \\2/g\"";
const char LS_CMD[] = "ls -l ";
const char LS_FILTER_CMD[] = " | awk '{print $5}'";

static size_t get_file_length(const char *real_file_name)
{
    FILE *fp;
    char *cmd = (char*)calloc(1, MAX_CMD_LEN);
    char *buf = (char*)calloc(1, MAX_CMD_OUTPUT_LEN);
    size_t file_size;

    cmd[0] = 0;
    strcat(cmd, LS_CMD);
    strcat(cmd, real_file_name);
    strcat(cmd, LS_FILTER_CMD);
    fp = popen(cmd, "r");
    char * ret = fgets(buf, MAX_CMD_OUTPUT_LEN, fp);
    (void) ret;
    sscanf(buf, "%zu", &file_size);
    if (fp)
        pclose(fp);
    free(cmd);
    return file_size;
}

/**
 * @param real_file_name
 * @param extents
 * @return number of extents, 0 means error
 */
uint32_t get_file_extents(const char *real_file_name, struct extent *extents)
{
    FILE *fp;
    uint32_t nr_extents = 0;
    char *buf = (char *)calloc(1, MAX_CMD_OUTPUT_LEN);
    char *cmd = (char *)calloc(1, MAX_CMD_LEN);

    // get file extents
    cmd[0] = 0;
    strcat(cmd, FILEFRAG_CMD);
    strcat(cmd, real_file_name);
    strcat(cmd, FILEFRAG_FILTER_CMD);
    unsigned int start, len;
    fp = popen(cmd, "r");
    ssize_t ret = fread(buf, 1, MAX_CMD_OUTPUT_LEN, fp);
    (void)ret;
    char *filefrag_output = buf;
    size_t total_extents_length = 0;
//    printf("filefrag_output=\n%s\n", filefrag_output);
    while (sscanf(filefrag_output, "%u %u", &start, &len) > 0)
    {
        uint64_t cur_addr = (unsigned long long)(start)*PHYSICAL_SECTOR_SIZE;
        uint64_t cur_len = (unsigned long long)(len)*PHYSICAL_SECTOR_SIZE;
        if (nr_extents > 0) {
            uint64_t last_addr = extents[nr_extents - 1].addr;
            uint64_t last_len = extents[nr_extents - 1].len;
            if (last_addr + last_len == cur_addr) {
                extents[nr_extents - 1].len += cur_len;
                goto cut_filefrag;
            }
        }
        extents[nr_extents].addr = cur_addr;
        extents[nr_extents].len = cur_len;
        nr_extents++;

        if (nr_extents >= MAX_EXTENT_NUM)
        {
            printf("nr_extents(%u) > MAX_EXTENT_NUM\n", nr_extents);
            return 0;
        }
cut_filefrag:
        total_extents_length += cur_len;

        filefrag_output = strstr(filefrag_output, "\n");
        if (filefrag_output)
        {
            filefrag_output++;
        }
        else
        {
            break;
        }
    }
    extents[nr_extents - 1].len -=
            total_extents_length - get_file_length(real_file_name);

    if (fp)
        pclose(fp);

    free(buf);
    free(cmd);

    return nr_extents;
}

/**
 *
 * @param offset
 * @param len
 * @param all_extents
 * @param nr_all_extents
 * @param output_extents
 * @return number of output extents
 */
uint32_t extract_file_extents(size_t offset, size_t len,
                              struct extent *all_extents, uint32_t nr_all_extents,
                              struct extent *output_extents)
{
    size_t i;
    size_t starting_extent_num = 0;
    uint32_t nr_output_extents = 0;
    for (i = 0; i < nr_all_extents; i++)
    {
        if (offset < all_extents[i].len)
        {
            starting_extent_num = i;
            break;
        }
        else
        {
            offset -= all_extents[i].len;
        }
    }
    unsigned long long total_extents_size = 0;
    for (i = 0; i < nr_all_extents - starting_extent_num; i++)
    {
        if (i == 0)
        {
            output_extents[i].addr =
                    all_extents[starting_extent_num].addr + offset;
            output_extents[i].len = all_extents[starting_extent_num].len - offset;
        }
        else
        {
            output_extents[i].addr =
                    all_extents[starting_extent_num + i].addr;
            output_extents[i].len = all_extents[starting_extent_num + i].len;
        }
        total_extents_size += output_extents[i].len;
        if (total_extents_size >= len)
        {
            nr_output_extents = i + 1;
            output_extents[i].len -= total_extents_size - len;
            break;
        }
    }

    return nr_output_extents;
}
