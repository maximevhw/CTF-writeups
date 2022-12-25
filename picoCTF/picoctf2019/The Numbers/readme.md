Description:  
The numbers... what do they mean?


Lets download the file.
```
wget https://jupiter.challenges.picoctf.org/static/f209a32253affb6f547a585649ba4fda/the_numbers.png
```


Its an image with the following text on it.  
16 9 3 15 3 20 6 { 20 8 5 14 21 13 2 5 18 19 13 1 19 15 14 }  
I think the number simply represents the number in the alphabet. The 16th letter being p and the ninth i. So it seems to start to form picoCTF.  
We can use online convers to decipher this 'encryption' called A1Z26.  
https://planetcalc.com/4884/
<details><summary>Flag</summary>
  picoCTF{thenumbersmason}
</details>