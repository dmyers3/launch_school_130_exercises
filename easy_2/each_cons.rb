# input: array, integer n of consecutive elements
# output: returns nil, yields n elements to block

# runs array_size - n + 1 times through array - i.e for array of size 4 and 
# n = 2, it will run 3 times



def each_cons(array, cons_elements)
  array.each_with_index do |value, index|
    if index <= array.size - cons_elements
      yield(value, *array[(index + 1)...(index + cons_elements)])
    end
  end
  nil
end



hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash