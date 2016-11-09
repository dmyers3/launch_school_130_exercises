def birds_of_prey(birds)
  yield(birds)
end

birds = %w(raven finch hawk eagle)

p birds_of_prey(birds) { |birds| birds.slice(2..-1) }

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do | *produce, grain |
  puts produce.join(', ')
  puts grain
end