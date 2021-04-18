#
# @lc app=leetcode id=13 lang=ruby
#
# [13] Roman to Integer
#

# @lc code=start
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman_hash = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000,
  }

  s = s.split('')
  i = s.size-1
  ans = roman_hash[s[i]]
  (i-1).downto(0) do |j|
    roman_hash[s[j]] < roman_hash[s[j+1]] ? ans -= roman_hash[s[j]] : ans += roman_hash[s[j]]
  end

  ans
end
# @lc code=end

