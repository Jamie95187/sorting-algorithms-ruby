class SortingAlgorithms

  def createArray(size)

  end

  def selectionSort(arr)
    # Go through the array and pick the minimum element and place at the front
    # Then search through the array again from the next element onwards first loop start 0, second start at 1 etc
    ans = [];
    for i in 0...arr.length do
      min = arr[i]
      for j in i...arr.length do
        min = arr[j] if arr[i] > arr[j]
      end
      ans.push(min)
    end
    ans
  end

end
