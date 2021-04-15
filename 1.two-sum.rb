#
# @lc app=leetcode id=1 lang=ruby
#
# [1] Two Sum
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  for i in 0..nums.size do
    for j in i+1..nums.size-1 do
      if nums[i] + nums[j] == target
        return [i,j]
      end
    end
  end
end
# @lc code=end

