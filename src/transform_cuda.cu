#include <cuda_runtime_api.h>
#include <bits/huge_val.h>

namespace {

__global__ void kernel(const int count, double* x, double* y) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    while (i < count) {
        
        i += gridDim.x * blockDim.x;
    }
}

}  // anonymous namespace

namespace cu {

void func(const int grid_size, const int block_size, const int count,
                    double* x, double* y) {}
                        
void func1(int* a) {
    *a = 99;
}

}  // namespace cu