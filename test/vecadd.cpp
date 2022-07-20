#include "hip/hip_runtime.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
using namespace std;

__global__ void add(double *a, double *b, double *c, int n) {
    int idx = hipThreadIdx_x + hipBlockDim_x * hipBlockIdx_x;
    c[idx] = a[idx] + b[idx];
}

void InitHost(double *va, double *vb, double *ref, int n) {
    for (int ii = 0; ii < n; ii ++) {
        va[ii] = ii;
	vb[ii] = n-ii;
	ref[ii] = n;
    }
}

int main() {
	int n = 2048;
	double *h_va = reinterpret_cast<double *>(malloc(n * sizeof(double)));
	double *h_vb = reinterpret_cast<double *>(malloc(n * sizeof(double)));
	double *h_out = reinterpret_cast<double *>(malloc(n * sizeof(double)));
	double *h_ref = reinterpret_cast<double *>(malloc(n * sizeof(double)));
	InitHost(h_va, h_vb, h_ref, n);
	double *d_va;
	double *d_vb;
	double *d_out;
	hipMalloc(reinterpret_cast<void**>(&d_va), n * sizeof(double));
	hipMalloc(reinterpret_cast<void**>(&d_vb), n * sizeof(double));
	hipMalloc(reinterpret_cast<void**>(&d_out), n * sizeof(double));

	hipMemcpy(d_va, h_va, n * sizeof(double), hipMemcpyHostToDevice);
	hipMemcpy(d_vb, h_vb, n * sizeof(double), hipMemcpyHostToDevice);
	
	dim3 TPB(128);
	dim3 BPG((n+127) / 128);
	

	hipLaunchKernelGGL(add, BPG, TPB, 0, 0, d_va, d_vb, d_out, n);
	int err = hipGetLastError();
	if (err == 0) {
		cout << "Done" << endl;
	} 	
    return 0;
}
