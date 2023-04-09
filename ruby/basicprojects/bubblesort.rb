# Author: Jonathan Bell
# Date(YYYY/MM/DD): 2023/03/21 
# Project: Bubble sorter

# Sorts an array using my own bubble sort method
# Bubble sorting compares each array's element against the next element
# If first element is larger than second element, they get swapped
# this continues until the whole array is ordered

def bubble(array)
  array_sorted = false
  counter = 0
  while array_sorted == false
    counter = 0
    for i in 1...array.length
      if array[i-1] > array[i]
        temp = array[i]
        array[i] = array[i-1]
        array[i-1] = temp
      else
        counter += 1
      end
    end
    if counter == array.length-2
      array_sorted = true
    end
  end
  puts array
end



arr = [4,3,78,2,0,2] 
puts bubble(arr)
