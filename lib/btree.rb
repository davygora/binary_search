class BTree
  def initialize(value)
    @value = value
    @left  = nil
    @right = nil
  end

  def add(value)
    if value < @value
      if @left.nil?
        @left = BTree.new(value)
      else
        @left.add(value)
      end
     else
       if @right.nil?
         @right = BTree.new(value)
       else
         @right.add(value)
       end
    end
  end

  def find(value)
    return true if value == @value
    if value < @value
      if @left.nil?
        false
      else
        @left.find(value)
      end
    else
      if @right.nil?
        false
      else
        @right.find(value)
      end
    end
  end
end
