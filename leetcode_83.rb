# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  dup_begin = head

  while !dup_begin.nil?
    dup_end = dup_begin.next
    begin_value = dup_begin.val

    while !dup_end.nil? && dup_end.val == begin_value
      dup_end = dup_end.next
    end

    dup_begin.next = dup_end

    dup_begin = dup_end
  end

  head
end
