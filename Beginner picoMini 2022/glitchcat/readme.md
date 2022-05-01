Description: Our flag printing service has started glitching! $ nc saturn.picoctf.net 53933

Lets start off by typing that command in our terminal.
```
nc saturn.picoctf.net 53933
```
Output:
```
'picoCTF{gl17ch_m3_n07_' + chr(0x61) + chr(0x34) + chr(0x33) + chr(0x39) + chr(0x32) + chr(0x64) + chr(0x32) + chr(0x65) + '}'
```
As you can see it seems to start out as a flag but then it changes into something else.  
Some of you may have already spotted it but chr stands for character.  
We could google those values one by one. But im feeling lazy.  

Lets try putting it in a very very very simple line of python and see if the computer can lookup these characters for me.

Let open a python interface in our terminal.
```
python
```
Now we can use the print() function and our computer should automaticly convert those chr.
```
print('picoCTF{gl17ch_m3_n07_' + chr(0x61) + chr(0x34) + chr(0x33) + chr(0x39) + chr(0x32) + chr(0x64) + chr(0x32) + chr(0x65) + '}')
```
Output:
<details><summary>flag</summary>
  picoCTF{gl17ch_m3_n07_a4392d2e}
</details>
