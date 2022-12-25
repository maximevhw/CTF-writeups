Description: Can you crack the password to get the flag? Download the password checker and you'll need the encrypted flag and the hash in the same directory too. There are 7 potential passwords with 1 being correct. You can find these by examining the password checker script.


wget the files into a new directory
```
wget https://artifacts.picoctf.net/c/24/level3.py
wget https://artifacts.picoctf.net/c/24/level3.flag.txt.enc
wget https://artifacts.picoctf.net/c/24/level3.hash.bin
```
Try running the file first to see what it does.
```
python level3.py
```
We're being asked for a pass.

Lets examine the python file. 
```
subl level3.py
```
This one was abit trickier since i dont really know how to program yet. So i had to follow a walkthrough myself.
At the bottom we have a list of possible password with only one being the right one.
So we have a function called level_3_pw_check() which goes and asks us for a input (our password). Then it will hash this password and compare it to the known hash.
But instead of typing our password into the function we could make a loop that takes each value in the pos_pw_list and uses it as the input. When correct it will display the flag, when false it will keep looping untill the list is done.
```python
def level_3_pw_check():
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
Move the pos_pw_list above this function so it has access to this list.
Run the new code, this will no longer ask us for an input and just start the loop.
```
python level3.py
```
Output:  
Welcome back... your flag, user:
<details><summary>Flag</summary>
  picoCTF{m45h_fl1ng1ng_cd6ed2eb}
</details>
