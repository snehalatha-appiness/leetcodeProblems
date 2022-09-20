//Roman to Integer

class Solution {
  int romanToInt(String s) {
    Map<int,String> symbols = Map<int,String>();
      symbols.addAll({
          1  : 'I' ,
          5 : 'V',
          10 : 'X',
          50 : 'L',
          100 : 'C',
          500 : 'D',
          1000 : 'M'
      });
      int sum =0;
      for(int i =0;i<s.length;i++)
      {
          int key = symbols.keys.firstWhere((k) => symbols[k] == s[i], orElse: () => 0);
          sum = sum + key;
      }
      return sum;
  }
}
