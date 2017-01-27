class BTree

  def initialize(value)
    @value = value
    @left  = nil
    @right = nil
  end

  def add(value)
    if value < @value
      @left.nil? ? @left = BTree.new(value) : @left.add(value)
    else
      @right.nil? ? @right = BTree.new(value) : @right.add(value)
    end
  end

  def find(value)
    return true if value == @value
    if value < @value
      @left.nil? ? false : @left.find(value)
    else
      @right.nil? ? false : @right.find(value)
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
