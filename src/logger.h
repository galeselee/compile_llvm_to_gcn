#define COLOR_RESET "\033[0m"
#define COLOR_DEBUG "\033[36m" /* Cyan */
#define COLOR_INFO "\033[32m"  /* Green */
#define COLOR_WARN "\033[33m"  /* Yellow */
#define COLOR_ERROR "\033[35m" /* Magenta */
#define COLOR_FATAL "\033[31m" /* Red */

#include <iostream>

#define debug(x)                                                              \
    do {                                                                      \
        std::cerr << "[" COLOR_DEBUG "DEBUG" COLOR_RESET " " << __FILE__  \
                  << ":" << __FUNCTION__ << ":" << __LINE__ << "] " << #x \
                  << " = " << (x) << std::endl;                           \
    } while (0)

#define tick                                                                \
    do {                                                                    \
        std::cerr << "[" COLOR_DEBUG "TICK" COLOR_RESET " " << __FILE__ \
                  << ":" << __FUNCTION__ << ":" << __LINE__ << "] "     \
                  << std::endl;                                         \
    } while (0)
