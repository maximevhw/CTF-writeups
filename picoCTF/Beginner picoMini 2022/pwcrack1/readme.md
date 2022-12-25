Description: Can you crack the password to get the flag? Download the password checker and you'll need the encrypted flag in the same directory too.

Wget both files into a new directory.
```
wget https://artifacts.picoctf.net/c/51/level1.py
wget https://artifacts.picoctf.net/c/51/level1.flag.txt.enc
```
Run the script.
```
python level1.py
```
Output:
```
Please enter correct password for flag: 
```
The program asks us a password to decode the file. So let us check out the script.
```
subl level1.py
```
On line 19 we can see this bit of code which has the required password in plain text.
```
if( user_pw == "691d"):
```
Run the script again and enter 691d as the password.
```
python level1.py
```
Output:  
Welcome back... your flag, user:
<details><summary>Flag</summary>
  picoCTF{545h_r1ng1ng_56891419}
</details>
