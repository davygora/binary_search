
require_relative 'lib/btree'

sequence = Array.new

20.times do
  sequence << rand(20)
end

sequence.uniq!

btree = BTree.new(sequence.shift)

sequence.each do |e|
  btree.add(e)
end

#result = btree.find(0)
#puts (result ? 'yes' : 'no')
puts btree.sort_asc
puts btree.sort_desc