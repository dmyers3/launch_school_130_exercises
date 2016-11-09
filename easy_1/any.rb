# def any?(array)
#   array.each { |element| return true if yield(element) }
#   false
# end

# puts any?([1, 3, 5, 6]) { |value| value.even? }
# p any?([]) { |value| true }
# p any?([2, 4, 6, 8])

def count(array)
  true_array = array.map { |obj| yield(obj) }
  true_array.count(true)
end

a = [1,2,3,4,5]

p count(a) { |element| element.odd? }