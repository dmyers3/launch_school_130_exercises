def drop_while(array)
  dropped_array = []
  truth_flag = true
  array.each do |element|
    truth_flag = false unless yield(element)
    dropped_array << element if truth_flag == false
  end
  dropped_array
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? }
p drop_while([1, 3, 5, 6]) { |value| value.even? }