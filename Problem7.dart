// Given an integer x, return true if x is palindrome integer.
// An integer is a palindrome when it reads the same backward as forward.
// 	•	For example, 121 is a palindrome while 123 is not.

// Solution
class Solution {
  bool isPalindrome(int x) {

      int reverse = int.parse(x.toString().split('').reversed.join(''));
      if(x == reverse)
      {
          return true;
      }
      return false;
  }
}
