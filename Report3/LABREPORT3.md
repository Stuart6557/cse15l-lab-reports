# Week 5 Lab Report: Researching Commands
## grep command

The following are 4 interesting command-line options for the `grep` command:

* `-i` ignores case distinctions so that characters that differ only in case match each other.
* `-w` select only those lines containing matches that form  whole words.
* `-x` select only  those  matches  that  exactly match the whole line.
    * Notes: If both `-w` and `-x` are used, then `-x` takes precedence
* `-c` suppress normal output; instead print a count  of  matching lines  for  each  input  file.

I found all of these on the [grep man page](https://linuxcommand.org/lc3_man_pages/grep1.html) on LinuxCommand.org

Here are some examples of using these command-line options on files and directories from `./written_2`:

* `-i`
```
$ grep -ilr "lucayans" .
./travel_guides/berlitz2/Bahamas-History.txt
```
This grep command still returns the Bahamas-History.txt file although Bahamas-History.txt contains the capitalized word "Lucayans".

```
$ grep -ilr "ViStA" .
./non-fiction/OUP/Castro/chB.txt
./travel_guides/berlitz1/IntroDublin.txt
./travel_guides/berlitz1/IntroLakeDistrict.txt
./travel_guides/berlitz1/IntroMadeira.txt
./travel_guides/berlitz1/WhereToFrance.txt
./travel_guides/berlitz1/WhereToGreek.txt
./travel_guides/berlitz1/WhereToIbiza.txt
./travel_guides/berlitz1/WhereToIsrael.txt
./travel_guides/berlitz1/WhereToJerusalem.txt
./travel_guides/berlitz1/WhereToLakeDistrict.txt
./travel_guides/berlitz1/WhereToLosAngeles.txt
./travel_guides/berlitz1/WhereToMadeira.txt
./travel_guides/berlitz2/Algarve-WhereToGo.txt
./travel_guides/berlitz2/Athens-WhereToGo.txt
./travel_guides/berlitz2/Bahamas-WhereToGo.txt
./travel_guides/berlitz2/Canada-WhereToGo.txt
./travel_guides/berlitz2/CanaryIslands-WhereToGo.txt
./travel_guides/berlitz2/China-WhereToGo.txt
./travel_guides/berlitz2/Costa-WhereToGo.txt
./travel_guides/berlitz2/Crete-WhereToGo.txt
./travel_guides/berlitz2/CstaBlanca-WhereToGo.txt
./travel_guides/berlitz2/Nepal-WhatToDo.txt
./travel_guides/berlitz2/Portugal-WhereToGo.txt
./travel_guides/berlitz2/PuertoRico-WhereToGo.txt
./travel_guides/berlitz2/Vallarta-WhereToGo.txt
```
The `-i` here is important because without it, this command would return nothing.

<br>

* `-w`
```
$ grep -lrw "Lucayan" .
./travel_guides/berlitz2/Bahamas-WhereToGo.txt
```
This command doesn't return Bahamas-History.txt because it contains "Lucayans" instead of "Lucayan".

```
$ grep -lrw "vista" .
./travel_guides/berlitz1/WhereToFrance.txt
./travel_guides/berlitz1/WhereToGreek.txt
./travel_guides/berlitz1/WhereToJerusalem.txt
./travel_guides/berlitz1/WhereToLakeDistrict.txt
./travel_guides/berlitz2/Athens-WhereToGo.txt
./travel_guides/berlitz2/Bahamas-WhereToGo.txt
./travel_guides/berlitz2/China-WhereToGo.txt
./travel_guides/berlitz2/Crete-WhereToGo.txt
./travel_guides/berlitz2/CstaBlanca-WhereToGo.txt
./travel_guides/berlitz2/Nepal-WhatToDo.txt
```
The `-w` is useful in this case because it allows this command to not return the files that contain "vistas" but not "vista". Without `-w`, many more files would be returned.

<br>

* `-x`
```
$ grep -lrx "baffled, bewildered parents" .
./non-fiction/OUP/Berk/ch1.txt
```
This command finds the file that contains the given line.

```
$ grep -lrwx "vistas" .
```
There is no output here. This is important because it shows that `-x` has precedence over `-w` since there is no line that contains only "vistas"

<br>

* `-c`
```
$ grep -rc "baffled, bewildered parents" non-fiction/OUP/Berk/        
non-fiction/OUP/Berk/CH4.txt:0
non-fiction/OUP/Berk/ch1.txt:1
non-fiction/OUP/Berk/ch2.txt:0
non-fiction/OUP/Berk/ch7.txt:0
```
Instead of returning the file that contains the given string, this prints a count of matching lines for each of the files in the directory

```
$ grep -rc "self-esteem" non-fiction/OUP/Berk/        
non-fiction/OUP/Berk/CH4.txt:0
non-fiction/OUP/Berk/ch1.txt:2
non-fiction/OUP/Berk/ch2.txt:2
non-fiction/OUP/Berk/ch7.txt:12
```
From this command, we see that `-c` is important because we can tell how frequent the given string appears in each file.