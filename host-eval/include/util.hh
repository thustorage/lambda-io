#pragma once
#include <cstdlib>
#include <string>
#include <optional>

namespace util {
    int getenv_int_or(const char *env, const int default_value)
    {
        const char *v = getenv(env);
        return v ? std::stoi(v) : default_value;
    }

    std::optional<std::string> getenv_str_opt(const char *env)
    {
        const char *v = getenv(env);
        if (v) {
            return v;
        }
        return {};
    }

    std::string getenv_str_or(const char *env, const std::string &default_value)
    {
        return getenv_str_opt(env).value_or(default_value);
    }
};
