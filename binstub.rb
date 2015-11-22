
require_relative 'lib/btree'
sequence = Array.new
100.times do
  sequence << rand(10)
end

sequence.uniq!

# sequence = [4, 2, 6, 1, 6, 7]
btree = BTree.new(sequence.shift)

sequence.each do |e|
  btree.add(e)
end
puts sequence
result = btree.find(9)
puts result
