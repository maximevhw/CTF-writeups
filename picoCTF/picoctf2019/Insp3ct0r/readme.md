Description:  
Kishor Balan tipped us off that the following code may need inspection: https://jupiter.challenges.picoctf.org/problem/41511/ (link) or http://jupiter.challenges.picoctf.org:41511  
  
For this challenge can open the url in our browser and use the inspector(f12) to find our flag hidden in the code.  
  
In the html code of the page at the bottom we find the first part of our flag.  
<details><summary>flag part 1/3</summary>
   Html is neat. Anyways have 1/3 of the flag: picoCTF{tru3_d3 
</details>
<br />
In our html code i see the css file is called mycss.css so lets pull up that link.  
https://jupiter.challenges.picoctf.org/problem/41511/mycss.css  
At the bottom we find a comment with the next part of our flag.
<details><summary>flag part 2/3</summary>
  /* You need CSS to make pretty pages. Here's part 2/3 of the flag: t3ct1ve_0r_ju5t */
</details>
<br />
Now we switch to the debugger. Under Main Thread -> jupiter.challenges.picoctf.org/ -> problem/41511/ there is a file called myjs.js.  
In this javascript file we find the following comment with the third and final part of our code.
<details><summary>flag part 3/3</summary>
  /* Javascript sure is neat. Anyways part 3/3 of the flag: _lucky?832b0699} */
</details>
<br />
Now all that's left is stick the pieces togheter and you have the flag.
<details><summary>Flag</summary>
  picoCTF{tru3_d3t3ct1ve_0r_ju5t_lucky?832b0699}
</details>