Description: Can you crack the password to get the flag? Download the password checker and you'll need the encrypted flag in the same directory too.  

Wget both files in a new directory.
```
wget https://artifacts.picoctf.net/c/17/level2.py
wget https://artifacts.picoctf.net/c/17/level2.flag.txt.enc
```
Run the python program to test it.
```
python level2.py
```
Its asking for a password. So lets examine the code.
Open the code in your editor of choice.
```
subl level2.py
```
On line 18 we can see the following:
```
if( user_pw == chr(0x34) + chr(0x65) + chr(0x63) + chr(0x39) ):
```
This is the required password but we'll have to figure out the characters.

Let's open python in our terminal.
```
python
```
Here we can simply use print() to convert the chr's.
```
print(chr(0x34) + chr(0x65) + chr(0x63) + chr(0x39))
```
Output:
```
4ec9
```
Let's try to run the script again with 4ec9 as our password.
```
python level2.py
```
Output:  
Welcome back... your flag, user:
<details><summary>Flag</summary>
  picoCTF{tr45h_51ng1ng_9701e681}
</details>
