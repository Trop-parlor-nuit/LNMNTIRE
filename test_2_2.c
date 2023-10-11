#include <stdio.h> // 为了输入和输出

// 常量声明和初始化
const int MAX_SIZE = 100;

// int数据类型的变量声明和初始化
int x = 10;
float f = 3.14; // 浮点数变量声明和初始化

// 一维和二维数组的声明和初始化
int arr1[10];
float arr2[5][5];

// 函数声明
int add(int a, int b);
float multiply(float a, float b);

int main() {
    // int数据类型的变量声明和初始化
    int y = x + 5;
    float g = f * 2.0; 

    // if 语句
    if (x > y) {
        printf("x is greater than y\n");
    } else if (x == y) {
        printf("x is equal to y\n");
    } else {
        printf("x is less than y\n");
    }

    // while 语句
    int i = 0;
    while (i < 5) {
        printf("Value of i: %d\n", i);
        i++;
    }

    // 函数调用
    int sum = add(x, y);
    float product = multiply(f, g);

    printf("Sum: %d, Product: %.2f\n", sum, product);

    // 数组元素访问
    for (int j = 0; j < 10; j++) {
        arr1[j] = j;
    }

    for (int k = 0; k < 5; k++) {
        for (int l = 0; l < 5; l++) {
            arr2[k][l] = k * l * 1.0; // 浮点数运算
        }
    }

    // break和continue语句
    for (int m = 0; m < 10; m++) {
        if (m == 3) continue;
        if (m == 7) break;
        printf("m: %d\n", m);
    }

    return 0; // return语句
}

// 函数定义
int add(int a, int b) {
    return a + b;
}

float multiply(float a, float b) {
    return a * b;
}
