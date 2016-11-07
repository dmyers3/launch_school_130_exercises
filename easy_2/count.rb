def count(*collection)
  total_count = 0
  collection.each do |value|
    total_count += 1 if yield(value)
  end
  total_count
end