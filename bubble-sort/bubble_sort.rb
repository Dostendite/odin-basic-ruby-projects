array = [4, 1, 3, 9, 7]

def bubble_sort(array)

  # For as many times as elements in the array
  (array.size - 1).times do

    # Loop through the elements
    array.each_with_index do |num, idx|

      temp = 0

      # If the number in array[idx]
      # is greater than the number in array[idx + 1]
      if (array[idx + 1] != nil) && (array[idx] > array[idx + 1])
        
        # array[idx] is greater
        # 1. temp = array[idx]
        # 2. array[idx] = array[idx + 1]
        # 3. array[idx + 1] = temp
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
