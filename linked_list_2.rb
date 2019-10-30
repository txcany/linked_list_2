class LinkedList2
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end


   def reverse_list(list, previous_node=nil)
      a_node = list.next_node
      list.next_node = previous_node
      #if there is a node set it to that node and the value in list
      if a_node
        reverse_list(a_node, list)
      #when there are no more nodes return the list
      else
         list
      end     
  end



    def print_values(list_node)
      if list_node
        print "#{list_node.value} --> "
        print_values(list_node.next_node)
      else
        print "nil\n"
        return
      end
    end

 node1 = LinkedList2.new(4,)
 node2 = LinkedList2.new(3, node1)
 node3 = LinkedList2.new(2, node2)
 node4 = LinkedList2.new(1, node3)
  

 print_values(node4)
 puts "------------------------"
 revlist = reverse_list(node4)
 print_values(revlist)
