array = [4, 3, 78, 2, 0, 2]

def bubble_sort(array)
  (array.size - 1).times do
    array.each_with_index do |num, idx|
      if (array[idx + 1] != nil) && (array[idx] > array[idx + 1])
        temp = array[idx]
        array[idx] = array[idx + 1]
        array[idx + 1] = temp
      end
    end
  end
end

puts "Unsorted array: #{array}"
bubble_sort array
puts "> Sorted array: #{array}"
