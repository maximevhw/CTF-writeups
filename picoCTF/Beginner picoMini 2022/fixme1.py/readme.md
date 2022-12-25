Description: Fix the syntax error in this Python script to print the flag.  

Make a new folder for this challenge.
```
mkdir fixme1.py
```
Wget the file.
```
wget https://artifacts.picoctf.net/c/38/fixme1.py
```
Run the script in python.
```
python fixme1.py
```
Output:
```
File "/home/kali/Desktop/picoctf/Beginner picoMini 2022/fixme1.py/fixme1.py", line 20
    print('That is correct! Here\'s your flag: ' + flag)
IndentationError: unexpected indent
```
In this error message we can see two interesting things. The error most likely has something to do with line 20 and indentation.
So let's first check out line 20 as the error mentions.  
I'll be using sublime (yes, i've been influenced by John Hammond)
```
subl fixme1.py
```
At line 20 our print is indented which python doesn't like.  
So bring this in line with the variable flag above on line 19.  
Save and run the script again.  

Output:  
That is correct! Here's your flag:
<details><summary>Flag</summary>
picoCTF{1nd3nt1ty_cr1515_09ee727a}
</details>
