def zip(array1, array2)
  zipped_array = []
  array1.size.times do |index|
    zipped_array[index] = [array1[index], array2[index]]
  end
  zipped_array
end

array1 = [1,2,3]
array2 = [4,5,6]
p zip(array1, array2)