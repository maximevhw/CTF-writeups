Challenge: Fix the syntax error in the Python script to print the flag. 

First off lets make a new folder for this ctf
```
mkdir fixme2.py
```
cd into the folder and download the file from picoctf.
```
cd fixme2.py
```
```
wget https://artifacts.picoctf.net/c/67/fixme2.py
```
Let's try to run it before trying anything else.
```
python fixme2.py
```
Output:
```
File "/home/kali/Desktop/picoctf/Beginner picoMini 2022/fixme2.py/fixme2.py", line 22
    if flag = "":
            ^
SyntaxError: invalid syntax
```
As we can see in our error we most likely have a syntax error on line 22. Lets check out the code.
```
subl fixme2.py
```
On line 22 there is an if statement that uses a single equal "=" sign instead of double. "==".  
Change this to a double equal sign.  
More information about this can be found here [w3school](https://www.w3schools.com/python/python_conditions.asp)
```
if flag == "":
```
Save the file and run it again in the terminal.
```
python fixme2.py
```
Output:  
That is correct! Here's your flag:
<details><summary>flag</summary>
  picoCTF{3qu4l1ty_n0t_4551gnm3nt_f6a5aefc}
</details>
