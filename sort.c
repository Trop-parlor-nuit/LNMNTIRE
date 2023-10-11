#include<stdio.h>
const int N = 1000;

void bubble_sort(int *a,int len) {
	
	for (int i = 0; i < len - 1; i++) {
		for (int j = i; j < len - 1; j++) {
			if (a[j] > a[j + 1]) {
				int temp = a[j];
				a[j] = a[j+1];
				a[j+1] = temp;
			}
		}
	}
}
int main() {
	int a[N];
	int n = 0;
	scanf("%d", &n);
	for (int i = 0; i < n; i++)scanf("%d",&a[i]);
	bubble_sort(a, n);
	printf("max is: %d\n", a[n-1]);
	return 0;
}
