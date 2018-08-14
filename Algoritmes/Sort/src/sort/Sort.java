/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sort;

/**
 *
 * @author nbaklanov
 */
public class Sort {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int arr[] ={3, 60, 35, 2, 45, 320, 5};
        
        System.out.println("Array Before Bubble Sort");  
        for(int i=0; i < arr.length; i++){  
            System.out.print(arr[i] + " ");  
        }  
        System.out.println();  
                  
        bubbleSort(arr);//sorting array elements using bubble sort  
                 
        System.out.println("Array After Bubble Sort");  
        for(int i=0; i < arr.length; i++){  
            System.out.print(arr[i] + " ");  
        }                  
    }
    
    
    static void bubbleSort(int[] arr) {  
        int n = arr.length;  
        int temp = 0; 
        
        for(int i = 0; i < n; i++){  
            for(int j = 1; j < (n-i); j++){  
                
                if(arr[j-1] > arr[j]){                                  
                    temp = arr[j-1];  
                    arr[j-1] = arr[j];  
                    arr[j] = temp;  
                }                            
            }  
         }  
    }
    
    public void selectionSort(int arr[])  {
        int n = arr.length;
        
        for (int i = 0; i < n-1; i++) {            
            int min_idx = i;
            for (int j = i+1; j < n; j++) {
                if (arr[j] < arr[min_idx]) {
                    min_idx = j;
                }                    
            }                 
            int temp = arr[min_idx];
            arr[min_idx] = arr[i];
            arr[i] = temp;
        }
    }
    
    public void insertionSort(int arr[])
    {
        int n = arr.length;
        for (int i = 1; i < n; ++i) {
            int key = arr[i];
            int j = i-1;
 
            while (j>=0 && arr[j] > key) {
                arr[j+1] = arr[j];
                j = j-1;
            }
            arr[j+1] = key;
        }
    }
    
    
    public void cocktailSort(int a[]) {
        boolean swapped = true;
        int start = 0;
        int end = a.length;
 
        while (swapped == true) {
            swapped = false;
 
            for (int i = start; i < end - 1; ++i) {
                if (a[i] > a[i + 1]) {
                    int temp = a[i];
                    a[i] = a[i + 1];
                    a[i + 1] = temp;
                    swapped = true;
                }
            }
             
            if (swapped == false)
                break;
 
            swapped = false;
            end = end - 1;
 
            for (int i = end - 1; i >= start; i--) {
                if (a[i] > a[i + 1]) {
                    int temp = a[i];
                    a[i] = a[i + 1];
                    a[i + 1] = temp;
                    swapped = true;
                }
            }
            start = start + 1;
        }
    }
    
    int sort(int arr[])
    {
        int n = arr.length;
         
        for (int gap = n/2; gap > 0; gap /= 2)
        {
            for (int i = gap; i < n; i += 1)
            {
                int temp = arr[i];
                int j;
                
                for (j = i; j >= gap && arr[j - gap] > temp; j -= gap) {
                    arr[j] = arr[j - gap];
                }                    
                arr[j] = temp;
            }
        }
        return 0;
    }
    
    public static void quickSort() {
        int startIndex = 0;
        int endIndex = ARRAY_LENGTH - 1;
        doSort(startIndex, endIndex);
    }

    private static void doSort(int start, int end) {
        if (start >= end)
            return;
        int i = start, j = end;
        int cur = i - (i - j) / 2;
        while (i < j) {
            while (i < cur && (array[i] <= array[cur])) {
                i++;
            }
            while (j > cur && (array[cur] <= array[j])) {
                j--;
            }
            if (i < j) {
                int temp = array[i];
                array[i] = array[j];
                array[j] = temp;
                if (i == cur)
                    cur = j;
                else if (j == cur)
                    cur = i;
            }
        }
        doSort(start, cur);
        doSort(cur+1, end);
    }
}
