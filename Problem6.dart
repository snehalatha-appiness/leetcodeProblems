// Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
// Assume the environment does not allow you to store 64-bit integers (signed or unsigned).
 
class Solution {
  int reverse(int x) {

      int limit = 2147483648;
      int k = x< 0 ? -1 : 1;
      int n = x< 0 ? int.parse(x.abs.toString().split('').reversed.join('')) :
      int.parse(x.toString().split('').reversed.join(''));
      return n >limit ? 0 : n * k;
  }
}
