#include <iostream>
#include <string>
#include <cstring>
#include <algorithm>
#include <fstream>
#include <sstream>

#include <hip/hip_runtime.h>

using namespace std;

std::string load_file(const std::string& filename) {
    ifstream src_file(filename);
    if (!src_file.is_open()) {
        std::cout << "FATAL : Open File Error @" << __LINE__ << std::endl;
        exit(1);
    }
    return std::string(std::istreambuf_iterator<char>(src_file), (std::istreambuf_iterator<char>()));
}

int main(int argc, char **argv) {
    if (argc != 2) {
        cout << "FATAL : The num of arg should be 2 @" << __LINE__ << endl;
        exit(1);
    }
    string filename = argv[1];

    hipError_t err;
    hipModule_t module;
    string gcn = load_file(filename);
    std::cout << "Sth" << std::endl;
    err = hipModuleLoadData(&module, gcn.c_str());
    if (err != hipSuccess) {
        cout << err << endl;
        cout << hipGetErrorName(err) << endl;
        exit(1);
    }
    exit(0);
}
