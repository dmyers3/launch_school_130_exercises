def convert_to_base_8(n)
  n.map(&:to_s(8))
end

# The correct type of argument must be used below
base8_proc = method(argument).to_proc

# We'll need a Proc object to make this code work. Replace `a_proc`
# with the correct object
[8,10,12,14,16,33].map(&a_proc)