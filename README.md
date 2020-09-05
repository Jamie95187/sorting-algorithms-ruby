# Sorting Algorithms

This repository demonstrates a few possible algorithms to sort data. Each have their own pros and cons. Different uses of algorithms depends on the domain you are working in; in particular how sorted the data is, the size of data needed to be sorted and the data type that needs to be sorted.

### Selection Sort

Selects the smallest item and places it at the beginning. This algorithm has the same time complexity regardless of how the data is structured (O(n^2)). It generally contains two nested loops and does nxn checks. In short you don't want to use this method but rather would use insertion sort.

Pros: Simple and easy to implement </br>
Cons: Inefficient for large lists

Best Case: O(n^2) </br>
Worst Case: O(n^2)

### Insertion sort

Insertion sort - inserts each item into its proper place in the final list. It works as follows:
- Iterate from arr[1] to arr[n] over the array.
- Compare the current element (key) to its predecessor.
- If the key element is smaller than its predecessor, compare it to the elements before. Move the greater elements one position up to make space for the swapped element.
The insertion sort is a good middle-of-the-road choice for sorting lists of a few thousand items or less

Pros: Simple and easy to implement </br>
Cons: Inefficient for large lists

Best Case: O(n^2) </br>
Worst Case: O(n^2)

### Bubble Sort

The bubble sort is generally considered to be the most inefficient sorting algorithm in common usage. It is implemented by repeatedly swapping adjacent elements until sorted. The best case is if the list is already sorted. While insertion and selection sort have O(n^2) complexity they are significantly more efficient that bubble sort.

Pros: Simplicity and ease of implementation </br>
Cons: Horribly inefficient

Best Case: O(n) (already sorted list and no swaps are made) </br>
Worst Case: O(n^2)

### Quick Sort

Quick Sort is a recursive divide and conquer algorithm. Puts the pivot in the correct place and sorts by using the recursive function and calls itself repeatedly.

Pros: Fast sorting algorithm, used best won medium to large lists </br>
Cons: Has a very bad worse case of O(n^2). Not good for semi-ordered lists

Best Case: O(nlog(n)) </br>
Worst Case: O(n^2)

### Counting Sort

Stores the counts of each occurrence of the item. Loops through the count array and adds it to the output array. Best used for small data sets. Data type must be integers.

Pros: Linear time for sorting small data set </br>
Cons: Counting sort assumes that each of the n input elements is an integer in the range 0 to k, for some integer k.

Best Case: O(n+k) </br>
Worse Case: O(n+k)

### Heap Sort

Heap sort involves building a heap data structure and utilizing the heap to sort the array. The heap data structure is always a complete binary tree.

Pros: Memory usage is less. Consistent performance worse and best cases are the same </br>
Cons: Unstable sort (if there are two or more objects with equal keys which don't appear in same order before and after sorting)

Best Case: O(nlog(n)) </br>
Worse Case: O(nlog(n))

### Merge Sort

Merges two sorted arrays together. It is also divide and conquer algorithm.

Pros: Worst, best, average case has same time complexity, which makes it very efficient. Stable sort </br>
Cons: Not as space-efficient as other sorting algorithms e.g. block sort

Best Case: O(nlog(n)) </br>
Worse Case: O(nlog(n))

## Comparison

| Algorithm | Best Case | Worst Case |
| --- | --- | --- | 
| Selection Sort | O(n^2) | O(n^2) |
| Insertion Sort | O(n^2) | O(n^2) |
| Bubble Sort | O(n^2) | O(n^2) |
| Bubble Sort With Check | O(n) | O(n^2) |
| Counting Sort | O(n+k) | O(n+k) |
| Quick Sort | O(nlog(n)) | O(n^2) |
| Heap Sort | O(nlog(n)) | O(nlog(n)) |
| Merge Sort | O(nlog(n)) | O(nlog(n)) |

The best algorithm to use depends on the data that needs to be sorted. For example Counting Sort only works if the data is of an integer type. Of the three selection, bubble and insertion sort the most common one used is insertion sort.
