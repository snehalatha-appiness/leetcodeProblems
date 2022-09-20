// Implement the myAtoi(string s) function, which converts a string to a 32-bit signed integer (similar to C/C++'s atoi function).

// The algorithm for myAtoi(string s) is as follows:

// Read in and ignore any leading whitespace.
// Check if the next character (if not already at the end of the string) is '-' or '+'. Read this character in if it is either. This determines if the final result is negative or positive respectively. Assume the result is positive if neither is present.
// Read in next the characters until the next non-digit character or the end of the input is reached. The rest of the string is ignored.
// Convert these digits into an integer (i.e. "123" -> 123, "0032" -> 32). If no digits were read, then the integer is 0. Change the sign as necessary (from step 2).
// If the integer is out of the 32-bit signed integer range [-231, 231 - 1], then clamp the integer so that it remains in the range. Specifically, integers less than -231 should be clamped to -231, and integers greater than 231 - 1 should be clamped to 231 - 1.
// Return the integer as the final result.
// Note:

// Only the space character ' ' is considered a whitespace character.
// Do not ignore any characters other than the leading whitespace or the rest of the string after the digits.
class Solution {
   
 int minInt = -2147483648;
  int maxInt =  2147483647;
  int myAtoi(String s) {

     String str =  s.replaceAll(new RegExp(r'[^0-9]'),'');
     
      int sign = 1, base = 0, i = 0;
 
     
        while (str[i] == ' ')
        {
            i++;
        }
 
       
        if (str[i] == '-' || str[i] == '+')
        {
            sign = 1 - 2 * (str[i++] == '-' ? 1 : 0);
        }
 
        
        while (i < str.length
               && int.parse(str[i]) >= 0
               && int.parse(str[i]) <= 9) {
 
            // handling overflow test case
            if (base > maxInt / 10
                || (base == maxInt/ 10
                    && int.parse(str[i]) - 0 > 7))
            {
                if (sign == 1)
                    return maxInt;
                else
                    return minInt;
            }
            base = 10 * base + (int.parse(str[i++]) - 0);
        }
        return base * sign;
      
  }
}
