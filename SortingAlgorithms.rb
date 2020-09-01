class SortingAlgorithms

  def createArray(size)
    Array.new(size) { rand(0..100) }
  end

  def selectionSort(arr)
    # Go through the array and pick the minimum element and place at the front
    # Then search through the array again from the next element onwards first loop start 0, second start at 1 etc
    ans = arr
    for i in 0...arr.length do
      minIndex = i
      min = arr[i]
      for j in i...arr.length do
        if arr[minIndex] > arr[j]
          minIndex = j
          min = arr[j]
        end
      end
      arr[minIndex] = arr[i]
      arr[i] = min
    end
    arr
  end

  def insertionSort(arr)
    # 1: Iterate from arr[1] to arr[n] over the array.
    # 2: Compare the current element (key) to its predecessor.
    # 3: If the key element is smaller than its predecessor, compare it to the elements before. Move the greater elements one position up to make space for the swapped element.
    for i in 1...arr.length do
      key = arr[i]
      j = i - 1
      # Move elements of arr[0..i-1], that are greater than key, to one position ahead of their current position
      while (j >= 0 && arr[j] > key) do
        arr[j + 1] = arr[j]
        j = j - 1
      end
      arr[j + 1] = key
    end
    arr
  end

  def bubbleSort(arr)
    # Repeatedly swapping adjacent elements until sorted
    # Note this does not check if there have been swaps made.
    (arr.length-1).times do
      for i in 0...arr.length-1 do
        if arr[i] > arr[i+1]
          temp = arr[i]
          arr[i] = arr[i+1]
          arr[i+1] = temp
        end
      end
    end
    arr
  end

  def bubbleSortWithCheck(arr)
    # Repeatedly swapping adjacent elements until sorted
    # Note this algorithm checks whether a swap has been made in the inner loop
    (arr.length-1).times do
      swapped = false
        for i in 0...arr.length-1 do
          if arr[i] > arr[i+1]
            temp = arr[i]
            arr[i] = arr[i+1]
            arr[i+1] = temp
            swapped = true
          end
        end
        break if swapped == false
    end
    arr
  end

  def quickSort(arr, low, high)
    # Divide and conquer algorithm that puts the pivot in the correct place
    # Sorts by using the recursive function and calls itself
    if (low < high)
      # Partition index after calling partitionQuickSort, pi is at the right place
      pi = partitionQuickSort(arr, low, high)

      # Quick sort before the pivot position
      quickSort(arr, low, pi - 1)
      # Quick sort after the pivot position
      quickSort(arr, pi, high)
    end

  end

  def partitionQuickSort(arr, low, high)
    # Element to be placed at the right position
    pivot = arr[high]

    i = low - 1

    for j in low...high
      if arr[j] < pivot
        i += 1
        temp = arr[j]
        arr[j] = arr[i]
        arr[i] = temp
      end
    end
    temp = arr[high]
    arr[high] = arr[i+1]
    arr[i+1] = temp
    return i + 1
  end

end
