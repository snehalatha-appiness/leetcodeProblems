// Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
// The overall run time complexity should be O(log (m+n)).

// Solution
class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
 List<int> mergedArray = new List.from(nums1)..addAll(nums2);
      int index =0;
     

   
    mergedArray.sort((a, b) => a.compareTo(b));

    double median;

    int middle = mergedArray.length ~/ 2;
    if (mergedArray.length % 2 == 1) {
      median = mergedArray[middle].toDouble();
    } else {
      median = ((mergedArray[middle - 1] + mergedArray[middle]) / 2.0);
    }

    return median;
      
  }
}
