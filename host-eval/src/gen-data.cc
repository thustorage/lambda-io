#include <iostream>
#include <cassert>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <vector>
#include <string>
#include <cstring>

#define SZ_16G (16ul << 30)
#define SZ_32G (32ul << 30)
#define SZ_40G (40ul << 30)
#define SZ_4K (4ul << 10)
#define SZ_1M (1ul << 20)
#define SZ_1G (1ul << 30)
#define SZ_FILE SZ_16G

using std::string;

void gen_sparksql(int fd)
{
    char *buf = (char *)malloc(SZ_1G);

    auto random_char = []() -> char {
        char min_ascii = 'a';
        char max_ascii = 'z';
        return min_ascii + rand() % (max_ascii - min_ascii + 1);
    };

    auto random_str = [random_char](int len) {
        string s;
        s.resize(len);
        for (int i = 0; i < len; i++) {
            s[i] = random_char();
        }
        return s;
    };

    auto random_int = [](int upper) {
        return rand() % upper;
    };

    for (int i = 0; i < SZ_1G; i += 32) {
        sprintf(buf + i, "%08u,%10s,%11s\n", random_int(1e8), random_str(10).c_str(), random_str(11).c_str());
    }

    for (size_t off = 0; off < SZ_FILE; off += SZ_1G) {
        printf("0x%lx\n", off);
        assert(pwrite(fd, buf, SZ_1G, off) == SZ_1G);
    }
}

void gen_sql(int fd)
{
    std::vector<string> round_name_vec;
    char *buf = (char *)malloc(SZ_1G);

    auto random_char = []() -> char {
        char min_ascii = 'A';
        char max_ascii = 'D';
        return min_ascii + rand() % (max_ascii - min_ascii + 1);
    };

    auto random_str = [random_char](int len) {
        string s;
        for (int i = 0; i < len; i++) {
            s += random_char();
        }
        return s;
    };

    round_name_vec.reserve(1024);
    for (int i = 0; i < 1024; i++) {
        round_name_vec.push_back(random_str(9));
    }

    for (int i = 0; i < SZ_1G; i += 32) {
        string round_name = round_name_vec[rand() % round_name_vec.size()];

        string player_name = random_str(9);

        string score = std::to_string(rand() % 100);
        while (score.size() < 2) {
            score = "0" + score;
        }

        string month = std::to_string(rand() % 12 + 1);
        while (month.size() < 2) {
            month = "0" + month;
        }

        string day = std::to_string(rand() % 30 + 1);
        while (day.size() < 2) {
            day = "0" + day;
        }

        string year = std::to_string(rand() % 100);
        while (year.size() < 2) {
            year = "0" + year;
        }

        string record_str = round_name + ',' + player_name + ',' + score + ',' + month + ',' + day + ',' + year + '\n';
        assert(record_str.size() == 32);

        memcpy(buf + i, record_str.c_str(), 32);
    }

    for (size_t off = 0; off < SZ_FILE; off += SZ_1G) {
        printf("0x%lx\n", off);
        assert(pwrite(fd, buf, SZ_1G, off) == SZ_1G);
    }

    free(buf);
}

void gen_stats(int fd)
{
    for (int64_t i = 0; i < SZ_32G; i += SZ_1M) {
        if (i % SZ_1G == 0) {
            printf("0x%lx\n", i);
        }
        assert(pwrite(fd, &i, sizeof(int64_t), i) == sizeof(int64_t));
    }
}

void gen_grep(int fd)
{
    char *buf = new char[SZ_1G];
    auto random_char = []() -> char {
        char min_ascii = 'A';
        char max_ascii = 'D';
        return min_ascii + rand() % (max_ascii - min_ascii + 1);
    };

    const int kColumnSize = 4096;
    for (int i = 0; i < SZ_1G; i++) {
        if (buf[i]) { printf("buf[%d]=%u ", i, buf[i]); }
        buf[i] = random_char();
        if (i % kColumnSize == kColumnSize - 1) {
            buf[i] = '\n';
        }
    }

    for (size_t off = 0; off < SZ_FILE; off += SZ_1G) {
        printf("\r%ldG", off / SZ_1G);
        fflush(stdout);
        assert(pwrite(fd, buf, SZ_1G, off) == SZ_1G);
    }
    printf("\n");

    delete[] buf;
}


int main(int argc, char *argv[])
{
    if (argc != 2) {
        fprintf(stderr, "%s <file>\n", argv[0]);
        exit(EXIT_FAILURE);
    }
    int fd = open(argv[1], O_CREAT | O_RDWR, 0644);
    if (fd < 0) {
        perror("open");
        exit(EXIT_FAILURE);
    }

    gen_grep(fd);

    fsync(fd);
    close(fd);

    return 0;
}
