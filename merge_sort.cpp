#include <iostream>
#include <cstdlib>
#include <cstdio>
using namespace std;
int *temp;
void merge(int arr[], int start, int mid, int end) {


  int i, j, k;
  i = start;
  j = mid;
  k = start;

  while (i < mid && j < end) {
    if (arr[i] <= arr[j]) {
      temp[k] = arr[i];
      i++;
    } else {
      temp[k] = arr[j];
      j++;
    }
    k++;
  }

  while (i < mid) {
    temp[k] = arr[i];
    i++;
    k++;
  }

  while (j < end) {
    temp[k] = arr[j];
    j++;
    k++;
  }
  for (i = start; i < end; i++) {
    arr[i] = temp[i];
  }
}

void mergeSort(int arr[], int start, int end) {
  if (start < end - 1) {

    int mid = start + (end - start) / 2;
    mergeSort(arr, start, mid);
    mergeSort(arr, mid, end);
    merge(arr, start, mid, end);
  }
}

void display(int arr[], int size) {
  for (int i = 0; i < size; i++)
    printf("%d ", arr[i]);
  printf("\n");
}

int main(int argc, char** argv) 
{ 
    int n = atoi(argv[1]);
    int *arr = new int [n];
    temp = new int [n];
    for(int i =0; i < n; i++){
  arr[i] = rand()%100;
    }
  // display(arr, n);
  
  mergeSort(arr, 0, n);
  return 0;
}

  