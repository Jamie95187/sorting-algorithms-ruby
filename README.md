# Sorting Algorithms

This repository demonstrates a few possible algorithms to sort data. Each have their own pros and cons. Different uses of algorithms depends on the domain you are working in; in particular how sorted the data is, the size of data needed to be sorted and the data type that needs to be sorted.

## Selection Sort

Selects the smallest item and places it at the beginning. This algorithm has the same time complexity regardless of how the data is structured (O(n^2)). It generally contains two nested loops and does nxn checks. In short you don't want to use this method but rather would use insertion sort.

Pros: Simple and easy to implement
Cons: Inefficient for large lists

Best Case: O(n^2)
Worst Case: O(n^2)

## Insertion sort

Insertion sort - inserts each item into its proper place in the final list. It works as follows:
- Iterate from arr[1] to arr[n] over the array.
- Compare the current element (key) to its predecessor.
- If the key element is smaller than its predecessor, compare it to the elements before. Move the greater elements one position up to make space for the swapped element.
The insertion sort is a good middle-of-the-road choice for sorting lists of a few thousand items or less

Pros: Simple and easy to implement
Cons: Inefficient for large lists

Best Case: O(n^2)
Worst Case: O(n^2)
