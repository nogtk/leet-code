#
# @lc app=leetcode id=14 lang=ruby
#
# [14] Longest Common Prefix
#

# @lc code=start
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  first_str = strs.first
  return '' unless first_str
  remain_strs = strs[1..strs.size-1]
  prefix_length = 0
  first_str.split('').each_with_index do |s, i|
    remain_strs.all? { |r_s| s == r_s[i] } ? prefix_length+=1 : break
  end

  prefix_length.zero? ? '' : first_str[0...prefix_length]
end
# @lc code=end

