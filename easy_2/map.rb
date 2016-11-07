def map(array)
  mapped_array = []
  array.size.times { |index| mapped_array[index] = yield(array[index]) }
  mapped_array
end