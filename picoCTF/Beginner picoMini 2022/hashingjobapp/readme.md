Description: If you want to hash with the best, beat this test! nc saturn.picoctf.net 63116

Let's start with typing that command in our terminal.
```
nc saturn.picoctf.net 63116
```
Output:
```
Please md5 hash the text between quotes, excluding the quotes: 'Backstreet Boys'
Answer:
```
We're asked to md5 hash the text between quotes. (These will be random each time). This will be asked for three words.  

First way to tackle this is with an online tool such as [md5hashgenerator.com](www.md5hashgenerator.com).  
Enter your text, hit generate, copy the md5 hash and copy it into the terminal.

Another way would be to use the terminal. This will output the same md5 as the online tool.  
My text was Backstreet Boys but change this to whatever text you want to convert.  
Also ignore the dash at the end.
```
echo -n 'Backstreet Boys' | md5sum
```

We can also write a little bash script for this.
```
subl hash.sh
```
```bash
#!/bin/bash 
echo what do you wanna md5 hash?
read VALUE
echo The md5 hash of $VALUE is:
echo -n $VALUE | md5sum | awk '{print $1}'
```
Save the file.
We need to make it executable before we can run it.
```
chmod +x hash.sh
```
Now we can run it from the terminal.
```
./hash.sh
```
After entering three correct hashes you should get your flag.
<details><summary>flag</summary>
  picoCTF{4ppl1c4710n_r3c31v3d_bf2ceb02}
</details>
