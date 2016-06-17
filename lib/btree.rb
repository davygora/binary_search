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

  def sort_asc
    @sorted_array = []
    @sorted_array.concat(@left.sort_asc) if @left
    puts @value
    @sorted_array.concat(@right.sort_asc) if @right
    @sorted_array
  end

  def sort_desc
    @sorted_array = []
    @sorted_array.concat(@right.sort_desc) if @right
    puts @value
    @sorted_array.concat(@left.sort_desc) if @left
    @sorted_array
  end
end
