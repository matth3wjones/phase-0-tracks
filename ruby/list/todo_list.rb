class TodoList
  def initialize(array)
    @list = array
  end

  def get_items
    return @list
  end

  def add_item(item)
    @list << item
  end

  def delete_item(array)
    @list.delete_at(array.to_i)
  end

  def get_item(index)
    @list[index]
  end
end
