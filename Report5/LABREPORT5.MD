# Week 9 Lab Report: Researching More Commands
## ls command

The following are 4 interesting command-line options for the `ls` command:

* `-m` fill width with a comma separated list of entries
* `-l` use a long listing format
* `-a` do not ignore entries starting with `.` (hidden files)
* `-t` sort by time (newest first)

I found all of these on the [ls man page](https://man7.org/linux/man-pages/man1/ls.1.html) on man7.org

Here are some examples of using these command-line options on files and directories from the `src` folder in [Scenario 4](https://ucsd-cse15l-w23.github.io/week/week9/#scenario-4) of week 9's lab


#### `-m`

```
$ ls -m
java, tests, textfiles
```
This ls command separates the 3 subdirectories with a comma as opposted to displaying them in columns.

```
$ cd java
$ ls -m
Code.class, Code.java
```
The `-m` here separates the 2 files with a comma.

<br>

#### `-l`

```
$ cd ..
$ ls -l
total 0
drwxr-xr-x  5 vivianliu  staff  160 Mar  9 14:14 java
drwxr-xr-x  4 vivianliu  staff  128 Mar  9 10:36 tests
drwxr-xr-x  4 vivianliu  staff  128 Mar  9 10:38 textfiles
```
This command uses a long listing format, displaying each subdirectory on its own line. We can see that it gives additional information such as the time of last modification.

```
$ cd tests
$ ls -l
total 16
-rw-r--r--  1 vivianliu  staff  53 Mar  9 10:37 CodeTests1.java
-rw-r--r--  1 vivianliu  staff  53 Mar  9 10:37 CodeTests2.java
```
Like the previous example, the `-l` displays everything in long listing format.

<br>

#### `-a`

```
$ cd ../java
$ ls -a
.		..		.gitignore	Code.class	Code.java
```
I added a `.gitignore` file to the `java` directory. The `-a` is important here because otherwise the `.gitignore` file wouldn't be shown.

```
$ ls -al
total 24
drwxr-xr-x  5 vivianliu  staff  160 Mar  9 14:14 .
drwxr-xr-x  5 vivianliu  staff  160 Mar  9 10:38 ..
-rw-r--r--  1 vivianliu  staff    7 Mar  9 14:14 .gitignore
-rw-r--r--  1 vivianliu  staff  569 Mar  9 10:39 Code.class
-rw-r--r--  1 vivianliu  staff  303 Mar  9 10:46 Code.java
```
This example shows the power of combining multiple command-line arguments. I combined `-a` with `-l`, which displays everything, including hidden files, in long listing format.

<br>

#### `-t`

```
$ -alt
total 24
-rw-r--r--  1 vivianliu  staff    7 Mar  9 14:14 .gitignore
drwxr-xr-x  5 vivianliu  staff  160 Mar  9 14:14 .
-rw-r--r--  1 vivianliu  staff  303 Mar  9 10:46 Code.java
-rw-r--r--  1 vivianliu  staff  569 Mar  9 10:39 Code.class
drwxr-xr-x  5 vivianliu  staff  160 Mar  9 10:38 ..
```
This is the same as the above example, except I added a `-t` so it now lists all the files and directories based on the time they were last modified (newest first).

```
$ cd ..
$ ls -altr
total 0
drwxr-xr-x  4 vivianliu  staff  128 Mar  9 10:36 tests
drwxr-xr-x  5 vivianliu  staff  160 Mar  9 10:38 .
drwxr-xr-x  4 vivianliu  staff  128 Mar  9 10:38 textfiles
drwxr-xr-x  3 vivianliu  staff   96 Mar  9 11:03 ..
drwxr-xr-x  5 vivianliu  staff  160 Mar  9 14:14 java
```
Once again, `-t` lists everything based on the time they were last modified. I also added an `-r` option here, which lists everything from oldest to newest instead.
