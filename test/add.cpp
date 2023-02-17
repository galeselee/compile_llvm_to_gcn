#include "hip/hip_runtime.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
using namespace std;

extern "C"
__global__ void add(double *a, double *b, double *c) {
    *c = *a + *b;
}

