# Author: Jonathan Bell
# Date(YYYY/MM/DD): 2023/03/21 
# Project: Bubble sorter

# Sorts an array using my own bubble sort method
# Bubble sorting compares each array's element against the next element
# If first element is larger than second element, they get swapped
# this continues until the whole array is ordered

def bubble(array)
  if array.size == 1
    array
  elsif array[0] > array[1]
    array.reverse
    return bubble[0]
end



arr = [4,3,78,2,0,2]
bubble(arr)