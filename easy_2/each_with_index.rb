def each_with_index(array)
  0.upto(array.size) { |index| yield(array(index), index) }
  array
end