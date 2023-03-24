#pragma once
#ifdef __cplusplus
extern "C" {
#endif
#define MAX_EXTENT_NUM 32
struct extent {
    uint64_t addr;
    uint64_t len;
};

/**
 * @param real_file_name
 * @param extents
 * @return number of extents
 */
uint32_t get_file_extents(const char *real_file_name, struct extent *extents);

/**
 * @param offset
 * @param len
 * @param all_extents
 * @param nr_all_extents
 * @param output_extents
 * @return number of extents
 */
uint32_t extract_file_extents(size_t offset, size_t len,
                              struct extent *all_extents, uint32_t nr_all_extents,
                              struct extent *output_extents);
#ifdef __cplusplus
}
#endif
