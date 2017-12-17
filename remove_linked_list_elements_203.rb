def remove_elements(head, val)
  tmp = head
  while !tmp.nil?
    if !tmp.next.nil? && tmp.next.val == val
      inner_tmp = tmp.next.next
      inner_tmp = inner_tmp.next while !inner_tmp.nil? && inner_tmp.val == val
      tmp.next = inner_tmp
      tmp = inner_tmp
    else
      tmp = tmp.next
    end
  end

  if !head.nil? && head.val == val
    binding.pry
    head_next = head.next
    return head_next
  end

  return head
end

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

a = ListNode.new(1)
a.next = ListNode.new(1)
a.next.next = ListNode.new(1)

puts remove_elements(a, 1)
