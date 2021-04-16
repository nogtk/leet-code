/*
 * @lc app=leetcode id=7 lang=golang
 *
 * [7] Reverse Integer
 */

// @lc code=start
func reverse(x int) int {
	rev := 0
	for ; x != 0; x /= 10 {
		rev = rev*10 + x%10
	}

	if rev < (-1<<31) || rev > (1<<31-1) {
		return 0
	}

	return rev
}

// @lc code=end

