// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// You can return the answer in any order.

// Solution:
class Solution {
  List<int> twoSum(List<int> nums, int target) {
   for(int i = 0;i<nums.length ;i++)
       for(int j= i+1; j<nums.length ; j++)
       {
           if(nums[i] == target - nums[j])
               return <int>[i,j];
       }
     return <int>[0,0];
      
  }
}
