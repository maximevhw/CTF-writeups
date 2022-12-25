Description:  
This garden contains more than it seems.  
<br />
Lets download the file we get first.
```
wget https://jupiter.challenges.picoctf.org/static/43c4743b3946f427e883f6b286f47467/garden.jpg
```
It's a jpg, this reminds me of another ctf i did (obedient cat) where i used the cat command to extract the flag from the image.  

```
cat garden.jpg
```
At the very bottom of all this giberish we can see our flag in plain text.  
<br />
<br />
Another way would be to use the strings command to find strings in the file.
```
string garden.jpg
```
Now in that list of strings you'll find the flag. Luckily it's at the bottom.

<details><summary>Flag</summary>
  picoCTF{more_than_m33ts_the_3y3657BaB2C}
</details>