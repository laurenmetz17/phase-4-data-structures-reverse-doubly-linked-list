require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    temp = nil
    current = @head
    count = 0 
    if @head != @tail
      while current != nil
        temp = current.prev_node
        current.prev_node = current.next_node
        current.next_node = temp
        current = current.prev_node
      end

      if temp != nil
        @tail = @head
        @head = temp.prev_node
      end
    end
  end
end
