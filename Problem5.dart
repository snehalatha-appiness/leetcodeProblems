// The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

class Solution {
  String convert(String s, int numRows) {

      if(numRows == 1) return s;
      String ret = "";
      int n = s.length;
      int cycleLength = 2 * numRows -2;
      for(int i =0 ;i < numRows;i++)
      {
          for(int j=0;j+i<n;j+=cycleLength)
          {
              ret = ret + s[j+i];
              if(i !=0 && i != numRows -1 && j +cycleLength -i<n)
                  ret= ret + s[j+(cycleLength -i)];
          }
      }
      return ret;
  }
}
