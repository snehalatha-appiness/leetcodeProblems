// You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

// Find two lines that together with the x-axis form a container, such that the container contains the most water.

// Return the maximum amount of water a container can store.
class Solution {
  int maxArea(List<int> height) {

       int maxnum =0;
      for(int i =0;i<height.length;i++){
           for(int j = i+1;j<height.length;j++)
           {
               int currentArea = min(height[i],height[j] * (j-i));
               maxnum = max(maxnum,currentArea);
           }
      }
      return maxnum;
  }
    
} 
