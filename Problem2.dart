// You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
// You may assume the two numbers do not contain any leading zero, except the number 0 itself.

//Solution
/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
     ListNode dummyHead = ListNode(0);
     int carry = 0;
     ListNode current = dummyHead;
    
     while(l1 != null || l2 != null || carry != 0)
     {
        int x = (l1 != null) ? int.parse(reverse(l1.val.toString()))  : 0;
     int y = (l2 != null) ?  int.parse(reverse(l2.val.toString())) : 0;
      int sum = x+y;
      dummyHead.val =int.parse(reverse(sum.toString()));
     }
      return dummyHead.next;
          
  }
    String reverse(str) {
  return str.split('').reversed.join('');
}
}
