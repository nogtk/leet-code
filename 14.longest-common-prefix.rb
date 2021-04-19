#
# @lc app=leetcode id=14 lang=ruby
#
# [14] Longest Common Prefix
#

# @lc code=start
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.empty?
  longest_prefix(strs, 0, strs.size - 1)
end

def longest_prefix(strs, l, r)
  return strs[l] if l == r
  mid = (l + r)/2
  left = longest_prefix(strs, l, mid)
  right = longest_prefix(strs, mid + 1, r)
  calc_longest_value(left, right)
end

def calc_longest_value(left, right)
  min = left.size > right.size ? right.size : left.size
  for i in 0...min do
    if left[i] != right[i]
      return i == 0 ? '' : left[0...i]
    end
  end

  left[0...min]
end
# @lc code=end

