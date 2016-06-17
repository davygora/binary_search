require_relative 'lib/btree'

sequence = Array.new

20.times { sequence << rand(20) }

sequence.uniq!

btree = BTree.new(sequence.shift)

sequence.each { |e| btree.add(e)}

result = btree.find(10)
puts (result ? 'yes' : 'no')
puts btree.sort_asc
puts btree.sort_desc
