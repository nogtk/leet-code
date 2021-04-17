#
# @lc app=leetcode id=2 lang=ruby
#
# [2] Add Two Numbers
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  n1, n2 = l1, l2

  current = answer = ListNode.new(nil)
  c = 0

  while n1 || n2 || c > 0
    a = n1 ? n1.val : 0
    b = n2 ? n2.val : 0
    v = a + b + c

    c = v / 10
    v -= 10 if c > 0

    n = ListNode.new(v)
    current.next = n
    current = n

    n1, n2 = n1&.next, n2&.next
  end

  answer.next
end
# @lc code=end

