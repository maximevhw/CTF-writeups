Description: Can you crack the password to get the flag?  
Download the password checker and you'll need the encrypted flag and the hash in the same directory too.  
Here's a dictionary with all possible passwords based on the password conventions we've seen so far.  
  

wget the files into a new directory
```
wget https://artifacts.picoctf.net/c/79/level5.py
wget https://artifacts.picoctf.net/c/79/level5.flag.txt.enc
wget https://artifacts.picoctf.net/c/79/level5.hash.bin
wget https://artifacts.picoctf.net/c/79/dictionary.txt
```
Try running the file first to see what it does.
```
python level5.py
```
We're being asked for a pass.

Lets examine the python file. 
```
subl level5.py
```
This challenge is almost the same as pw crack 3 and 4 but with a list of passwords in an external file.  
So we'll have to modify our code a bit to import that list.
So we have a function called level_5_pw_check() which goes and asks us for a input (our password). Then it will hash this password and compare it to the known hash.
But instead of typing our password into the function we could make a loop that takes each value in the dictionary.txt and uses it as the input. When correct it will display the flag, when false it will keep looping untill the list is done.
But first we have to open or dictionary and put it in a variable(dictionary).  
Then we do a for loop taking all strings one by one out of dictionary and putting them in the var line.  
Then we want to strip the string stored in the var line of whitespace. With .strip() leading and trailing whitespaces are removed.  
We put this into the var user_pw = line.strip()  
And finaly we compare the hashed version of our user_pw to the known hash.
```python
def level_5_pw_check():
    dictionary = open("dictionary.txt")
    for line in dictionary:
        user_pw = line.strip()
        user_pw_hash = hash_pw(user_pw)
        if( user_pw_hash == correct_pw_hash ):
            print("Welcome back... your flag, user:")
            decryption = str_xor(flag_enc.decode(), user_pw)
            print(decryption)
            return
        else:
            pass
```
Run the new code, this will no longer ask us for an input and just start the loop.
```
python level5.py
```
Output:  
Welcome back... your flag, user:
<details><summary>Flag</summary>
  picoCTF{h45h_sl1ng1ng_36e992a6}
</details>
  

For this challenge i had to do some searching as i dont know how to program yet.  
These are the sources i used. One being another ctf writeup.
```
https://www.w3schools.com/python/python_file_open.asp
https://www.pythonforbeginners.com/files/reading-and-writing-files-in-python#htoc-reading-files-in-python
https://infosecwriteups.com/beginner-picomini-ctf-2022-writeup-94174d0ea64b
https://www.programiz.com/python-programming/methods/string/strip
```