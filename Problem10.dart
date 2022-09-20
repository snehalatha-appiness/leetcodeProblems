// Given a string s, return the longest palindromic substring in s.

// A string is called a palindrome string if the reverse of that string is the same as the original string.

class Solution {
  String longestPalindrome(String s) {
 if (s == null || s.length < 1) return "";
        int start = 0, end = 0;
        for (int i = 0; i < s.length; i++) {
            int len1 = expandAroundCenter(s, i, i);
            int len2 = expandAroundCenter(s, i, i + 1);
            int len = max(len1, len2);
            if (len > end - start) {
                start = (i - (len - 1) / 2).round();
                end = (i + len / 2).round();
            }
        }
        return s.substring(start, end + 1);
    }

     int expandAroundCenter(String s, int left, int right) {
        int L = left, R = right;
        while (L >= 0 && R < s.length && s[L] == s[R]) {
            L--;
            R++;
        }
        return R - L - 1;
    }
}
