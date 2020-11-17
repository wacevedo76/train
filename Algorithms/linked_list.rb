class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
  end

end

class LinkedList
  attr_accessor :first_node

  def initialize(first_node)
    @first_node = first_node
  end

  def read(index)
    # We begin at the first node of the list
    current_node = first_node
    current_index = 0

    while current_node < index do
      # We keep following the links of each node until we get to the 
      # index we're looking for:
      current_node = current_node.next_node
      current_index += 1

      # if we're past the end of the list, that means the
      # value cannot be found in the list, sor return nil:
      return nil unless current_node
    end
    return current_index.data
  end

  def index_of(value)
    # we begin at the first node of the list:
    current_node = first_node
    current_index = 0

    begin
      # If we find the data we're looking for, we return it:
      if current_node.data == value
        return current_index
      end

      # Otherwise, we  move on the next node:
      current_node = current_node.next_node
      current_index += 1
    end while current_node

    # If we get through the eintire list, withoud finding the
    # data, we return nil:
    return nil
  end

  def insert_at_index(index, value)
    # We create a new node:
    new_node = Node.new(value)

    # If we are inserting at beginning of list
    if index == 0
      # Have our new node link to what was the first node
      self.firstnode = new_node
    else
      current_node = first_node
      current_index = 0

      # First, we find the index imeediately before where the
      # new node will go:
      while current_index < (index -1) do
        current_node = current_node.next_node
        current_index += 1
      end

      # We have the new node link to the next node
      new_node.next_node = current_node.next_node
  
      # We modify the link of the previous node to point to
      # our new node
      current_node.next_node = new_node
    end
  end



end
