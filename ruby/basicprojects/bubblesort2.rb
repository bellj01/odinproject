# Author: Jonathan Bell
# Date(YYYY/MM/DD): 2023/03/21 
# Project: Bubble sorter

# Sorts an array using my own bubble sort method
# Bubble sorting compares each array's element against the next element
# If first element is larger than second element, they get swapped
# this continues until the whole array is ordered

def bubble(array)
  length = array.length
  swapped = false
  while swapped == false
    for i in 0...array.length do
      if array[i-1] > array[i]
        array[i-1], array[i] = array[i], array[i-1]
        swapped = true
      end
    end
  end
end



arr = [4,3,78,2,0,2] 
puts bubble(arr)


#array.each_with_index do |outer, i|
  #array.each_with_index do |inner, j|
   # puts i
    #puts j
    #if outer > inner
    #  temp = outer
    #  array[i] = inner
    #  array[j] = temp
   # end
  #end