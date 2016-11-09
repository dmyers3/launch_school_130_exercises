def missing(sorted_array)
  missing_numbers = []
  (sorted_array[0]...sorted_array[-1]).each do |number|
    missing_numbers << number if sorted_array.include?(number) == false
  end
  missing_numbers
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []