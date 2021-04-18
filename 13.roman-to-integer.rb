#
# @lc app=leetcode id=13 lang=ruby
#
# [13] Roman to Integer
#

# @lc code=start
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  x = s.split('')
  ans = 0
  index = 0
  while index < x.size
    one_flag = false
    num = if x[index] == 'I' && x[index+1] == 'V'
      4
    elsif x[index] == 'I' && x[index+1] == 'X'
      9
    elsif x[index] == 'X' && x[index+1] == 'L'
      40
    elsif x[index] == 'X' && x[index+1] == 'C'
      90
    elsif x[index] == 'C' && x[index+1] == 'D'
      400
    elsif x[index] == 'C' && x[index+1] == 'M'
      900
    else
      one_flag = true
      roman_str(x[index])
    end

    ans += num

    one_flag ? index+=1 : index+=2
  end

  ans
end

def roman_str(s)
  case s
  when 'I'
    1
  when 'V'
    5
  when 'X'
    10
  when 'L'
    50
  when 'C'
    100
  when 'D'
    500
  when 'M'
    1000
  end
end
# @lc code=end

