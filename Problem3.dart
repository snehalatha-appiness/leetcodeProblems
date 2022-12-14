// Given a string s, find the length of the longest substring without repeating characters.
// Solution
class Solution {
  int lengthOfLongestSubstring(String s) {

      Map<String,int> map = Map<String,int>();
      int start =0,len=0;
      for(int i=0;i<s.length;i++)
      {
          var c = s[i];
          if(map.containsKey(c))
          {
              if(map.indexOf(c) >= start)
                  start = map.indexOf(c) + 1;
          }
          len = max(len,i-start+1);
          map.put(c,i);
      }
      return len;
}
}
