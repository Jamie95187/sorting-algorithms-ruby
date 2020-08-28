class SortingAlgorithms

  def displayArray(arr)
    p arr
  end

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

end
