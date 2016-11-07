def step(start, stop, step_value)
  value = start
  while value <= stop
    yield(value)
    value += step_value
  end
  value
end

step(1,10,2) { |x| puts x }