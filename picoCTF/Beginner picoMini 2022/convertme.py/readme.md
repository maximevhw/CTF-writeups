Description: Run the Python script and convert the given number from decimal to binary to get the flag.

I preffer to always start with a fresh directory to work with so let's go ahead and make a folder.
```
mkdir convertme.py
```
Now we can cd into our folder and download the pythont script using wget. Right click the url on picoctf and copy url.
```
wget https://artifacts.picoctf.net/c/30/convertme.py
```
Lets run the script and see what it does.
```
python convertme.py
```
The script asks for the binary value of a decimal. (in my case 59, you get a random number each time)  
Keep this terminal open and open a new terminal window  
You could use an online tool for this or install a program such as bc then we can simply convert this in the terminal.  
On kali (and ubuntu based systems) this is installed as followed:
```
sudo apt-get install bc -y
``` 
And to get more information on how to use this program we can open the manual as followed:
```
man bc
```
Then we use the following to convert our variable to binary (replace 59 with your decimal)
```
echo "obase=2; 59" | bc
```
This should output a binary value which we can enter in the python program.  
Enter this value in the program and simply hit enter.  
That is correct! Here's your flag: 
<details><summary>The flag</summary>
  picoCTF{4ll_y0ur_b4535_762f748e}
</details>
