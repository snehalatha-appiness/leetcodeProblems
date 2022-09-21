//Regular Expression Matching
class Solution {
  bool isMatch(String s, String p) {
     var dp = List.filled(s.length + 1, (i) => List(p.length + 1), growable: false);
      dp[0][0] = true;
      for(int j =1;j<p.lenght;j++)
      {
          if(p[j-1] == '*' && dp[0][j-2])
          {
              dp[0][j] = true;
          }
      }
     
      for(int i =0 ;i< s.length ;i++)
      {
          for(int j=0 ;j< p.length ;j++)
          {
              if(p[j-1] == s[i-1] || p[j-1] =='.')
              {
                  dp[i][j] = dp[i-1][j-1];
                 
              }
              else if(p[j-1] =="*")
              {
                  if(p[j-2] != s[i-1] &&p[j-2] != '.')
                  {
                      dp[i][j] = dp[i][j-2];
                  }
                  else
                  {
                      dp[i][j] = (dp[i][j-2] || dp[i][j-1] || dp[i-1][j]);
                  }
              }
          }
      }
      return dp[s.length][p.length];
  }
}
