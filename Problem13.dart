// Integer to Roman
class Solution {
  String intToRoman(int num) {
List<int> values = [1000,900,500,400,100,90,50,40,10,9,5,4,1];  
List<String> romanLetters = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"];  
String roman = '';  
      
      for(int i=0;i<values.length;i++)   
{  
while(num >= values[i])   
{  
num = num - values[i];  
roman = roman + romanLetters[i];  
}  
}
   return roman;   
  }
}
