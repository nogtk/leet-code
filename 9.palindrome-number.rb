#
# @lc app=leetcode id=9 lang=ruby
#
# [9] Palindrome Number
#

# @lc code=start
# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  x.to_s == x.to_s.split('').reverse.join ? true : false
end
# @lc code=end

