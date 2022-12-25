Description: Find the flag in the Python script!

Lets download the script first.
```
wget https://artifacts.picoctf.net/c/94/serpentine.py
```
Lets open the file as they tell us to look at the script.
```
subl serpentine.py
```
While going over the code i spot def print_flag():  
This is DEFining a new function name print_flag(), sounds like an interesting thing to look at no?  
Going down you can see which functions are being called after the chosen user input (a,b or c)  
```
if choice == 'a':
      print_encouragement()
      
    elif choice == 'b':
      print('\nOops! I must have misplaced the print_flag function! Check my source code!\n\n')
```
As the code hints the print_flag() must have been misplaced.  

So let us change the function associated with b from print to print_flag().
```
elif choice == 'b':
      print_flag()
```
Save and run the script from the terminal.
```
python serpentine.py
```
Choose b

Output:
<details><summary>Flag</summary>
  picoCTF{7h3_r04d_l355_7r4v3l3d_aa2340b2}
</details>
