def bubble_sort array
  (array.size - 1).times do
    array.each_with_index do |num, idx|
      if array[idx + 1] && array[idx] > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
      end
    end
  end
  array
end
