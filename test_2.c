#include <stdio.h>

const int MAX = 10;

int factorial(int n) {
    if (n == 0 || n == 1) return 1;
    else return n * factorial(n - 1);
}

float power(float base, int exp) {
    float result = 1.0;
    for (int i = 0; i < exp; i++) {
        result *= base;
    }
    return result;
}

int main() {
    int arr[MAX];
    int n;
    float f;

    // factorial for first 10 numbers
    for (int i = 0; i < MAX; i++) {
        arr[i] = factorial(i);
        printf("Factorial of %d is: %d\n", i, arr[i]);
    }

    // power function
    printf("Enter a float and an integer for the power function:\n");
    scanf("%f %d", &f, &n);
    printf("Power of %f raised to %d is: %f\n", f, n, power(f, n));

    // Fibonacci using array
    arr[0] = 0;
    arr[1] = 1;
    printf("%d\n%d\n", arr[0], arr[1]);
    for (int i = 2; i < MAX; i++) {
        arr[i] = arr[i - 1] + arr[i - 2];
        printf("%d\n", arr[i]);
    }

    return 0;
}
