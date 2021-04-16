#
# @lc app=leetcode id=7 lang=ruby
#
# [7] Reverse Integer
#

# @lc code=start
# @param {Integer} x
# @return {Integer}
def reverse(x)
  s = x.to_s.split('')
  if x < 0
    s.shift
  end

  ans = x >= 0 ? s.reverse.join.to_i : s.reverse.join.to_i * -1
  return (ans < -2**31 || ans > (2**31 - 1)) ? 0 : ans
end
# @lc code=end

