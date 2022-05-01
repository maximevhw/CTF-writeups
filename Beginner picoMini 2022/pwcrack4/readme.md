Description: Can you crack the password to get the flag?  
Download the password checker here and you'll need the encrypted flag and the hash in the same directory too.  
There are 100 potential passwords with only 1 being correct. You can find these by examining the password checker script.  


wget the files into a new directory
```
wget https://artifacts.picoctf.net/c/60/level4.py
wget https://artifacts.picoctf.net/c/60/level4.flag.txt.enc
wget https://artifacts.picoctf.net/c/60/level4.hash.bin
```
Try running the file first to see what it does.
```
python level4.py
```
We're being asked for a pass.

Lets examine the python file. 
```
subl level4.py
```
This challenge is almost the same as pw crack 3 but with a longer list. But our code from pw crack 3 should work just fine.
At the bottom we have a list of possible password with only one being the right one.
So we have a function called level_4_pw_check() which goes and asks us for a input (our password). Then it will hash this password and compare it to the known hash.
But instead of typing our password into the function we could make a loop that takes each value in the pos_pw_list and uses it as the input. When correct it will display the flag, when false it will keep looping untill the list is done.
```python
def level_4_pw_check():
    for user_pw in pos_pw_list:
        user_pw_hash = hash_pw(user_pw)
        if( user_pw_hash == correct_pw_hash ):
            print("Welcome back... your flag, user:")
            decryption = str_xor(flag_enc.decode(), user_pw)
            print(decryption)
            return
        else:
            pass
```
Move the pos_pw_list above this function so the function can use the list.
Run the new code, this will no longer ask us for an input and just start the loop.
```
python level4.py
```
Output:  
Welcome back... your flag, user:
<details><summary>Flag</summary>
  picoCTF{fl45h_5pr1ng1ng_d770d48c}
</details>