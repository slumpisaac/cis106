# 🐧 Linux Workshop — Complete Study Guide

> Practice each command in a test directory before using it on important files.

---

## 📑 Table of Contents

1. [Basic Linux Concepts](#1-basic-linux-concepts)
2. [Terminal and Navigation Commands](#2-terminal-and-navigation-commands)
3. [Directory and File Management](#3-directory-and-file-management)
4. [Variables and Environment Variables](#4-variables-and-environment-variables)
5. [Linux Paths and Directories](#5-linux-paths-and-directories)
6. [APT Package Management](#6-apt-package-management)
7. [SNAP Package Management](#7-snap-package-management)
8. [FLATPAK Package Management](#8-flatpak-package-management)
9. [System Information Commands](#9-system-information-commands)
10. [Manual and Help Commands](#10-manual-and-help-commands)
11. [Linux Help Commands (`--help`)](#11-linux-help-commands---help)
12. [File Searching and Text Commands](#12-file-searching-and-text-commands)
13. [Shell Scripting](#13-shell-scripting)
14. [Wildcards and File Globbing](#14-wildcards-and-file-globbing)
15. [Brace Expansion](#15-brace-expansion)
16. [POSIX Character Classes](#16-posix-character-classes)
17. [Markdown Cheat Sheet](#17-markdown-cheat-sheet)
18. [Terminal Shortcuts](#18-terminal-shortcuts)
19. [Complete Linux Command Reference](#19-complete-linux-command-reference)

---

## 1. Basic Linux Concepts

| Term | Meaning |
|------|---------|
| **Graphical User Interface (GUI)** | Lets you interact with a computer using windows, icons, menus, and buttons. |
| **Desktop Environment** | Provides the graphical interface and tools for using a computer. |
| **Command Line Interface (CLI)** | Lets you interact with a computer by typing commands. |
| **Virtual Console** | A text-based screen where you can log in and use Linux commands. |
| **Terminal Emulator** | A program that lets you use the CLI through a graphical window. |
| **Bash** | A command-line shell that interprets and executes commands. |
| **Shell Prompt** | The symbol or text that shows the shell is ready for you to enter a command. |

**How do I access the CLI?**
Open a terminal emulator or use a virtual console.

---

## 2. Terminal and Navigation Commands

### `clear`

**Definition:** Clears the terminal screen.
**Usage:** `clear`

```bash
clear
```

### `echo`

**Definition:** Displays text or variable values on the screen.
**Usage:** `echo "text"`

```bash
echo "Hello"
echo $USER
echo $HOME
```

### `date`

**Definition:** Displays the current date and time.
**Usage:** `date`

```bash
date
```

### `ls`

**Definition:** Shows files and folders inside a directory.
**Usage:** `ls [options] [path]`

```bash
ls
ls -l
ls -a
ls -h
ls -lh
ls -la
ls *.txt
```

| Option | Description |
|--------|-------------|
| `-l` | Displays files in long format |
| `-a` | Shows all files, including hidden files |
| `-h` | Displays human-readable file sizes when combined with `-l` |
| `-lh` | Displays detailed information and readable sizes |
| `-la` | Shows all files in long format |

### `pwd`

**Definition:** **P**rint **W**orking **D**irectory. Shows where you are in the file system.
**Usage:** `pwd`

```bash
pwd
pwd -P
```

| Command | Description |
|---------|-------------|
| `pwd` | Displays the current directory |
| `pwd -P` | Displays the physical path without symbolic links |

### `cd`

**Definition:** **C**hange **D**irectory. Moves you to another folder.
**Usage:** `cd [directory]`

```bash
cd
cd ~
cd ~/Documents
cd ..
cd ../..
cd /
cd -
```

| Command | Description |
|---------|-------------|
| `cd` | Returns to your home directory |
| `cd ~` | Goes to your home directory |
| `cd ~/Documents` | Goes to Documents |
| `cd ..` | Moves up one directory |
| `cd ../..` | Moves up two directories |
| `cd /` | Goes to the root directory |
| `cd -` | Returns to the previous directory |

### `history`

**Definition:** Displays previously entered terminal commands.
**Usage:** `history`

```bash
history
history 10
```

| Command | Description |
|---------|-------------|
| `history` | Displays command history |
| `history 10` | Displays the last 10 commands |

### `hostname`

**Definition:** Displays the computer's hostname.
**Usage:** `hostname`

```bash
hostname
hostname -I
```

### `whoami`

**Definition:** Displays the username of the current user.
**Usage:** `whoami`

```bash
whoami
```

---

## 3. Directory and File Management

### `mkdir`

**Definition:** Creates one or more new directories.
**Usage:** `mkdir [options] directory-name`

```bash
mkdir CIS_106
mkdir Resources
mkdir folder1 folder2
mkdir -p CIS_106/Labs/lab1
mkdir -pv assets/{images,videos}/{large,small}
```

| Command | Description |
|---------|-------------|
| `mkdir CIS_106` | Creates a directory named `CIS_106` |
| `mkdir folder1 folder2` | Creates two separate directories |
| `mkdir -p CIS_106/Labs/lab1` | Creates nested directories in one command |
| `mkdir -pv` | Creates directories and displays them as they are created |

### `touch`

**Definition:** Creates a new empty file or updates the timestamps of an existing file without changing its contents.
**Usage:** `touch filename`

```bash
touch lab1.md
touch lab1.md lab2.md lab3.md
touch notes.txt
```

| Command | Description |
|---------|-------------|
| `touch lab1.md` | Creates an empty Markdown file (or updates its timestamp if it exists) |
| `touch lab1.md lab2.md lab3.md` | Creates three files at once |

### `rm` (Remove)

**Definition:** Deletes files and directories. Deletion is generally permanent.
**Usage:** `rm [options] filename`

```bash
rm lab1.md
rm -i lab1.md
rm -r CIS_106
rm -f lab1.md
rm -rf foldername
```

| Command | Description |
|---------|-------------|
| `rm lab1.md` | Deletes a file |
| `rm -i lab1.md` | Asks for confirmation before deleting |
| `rm -r CIS_106` | Deletes a directory and its contents |
| `rm -f lab1.md` | Forces deletion without prompting |
| `rm -rf foldername` | Forcefully deletes a directory and its contents |

> ⚠️ **Warning:** Be extremely careful with `rm -rf`. It can permanently delete large amounts of data.

### `cp` (Copy)

**Definition:** Copies files or directories from one location to another while keeping the original.
**Usage:** `cp [options] source destination`

```bash
cp lab1.md Downloads/
cp lab1.md lab2.md Downloads/
cp -r CIS_106 Downloads/
cp -i lab1.md Downloads/
```

| Command | Description |
|---------|-------------|
| `cp lab1.md Downloads/` | Copies a file into Downloads |
| `cp lab1.md lab2.md Downloads/` | Copies multiple files into Downloads |
| `cp -r CIS_106 Downloads/` | Copies an entire directory |
| `cp -i lab1.md Downloads/` | Asks before overwriting an existing file |

### `mv` (Move or Rename)

**Definition:** Moves files or directories to another location or renames them.
**Usage:** `mv [options] source destination`

```bash
mv lab1.md lab2.md
mv lab1.md ~/Downloads/
mv lab1.md lab2.md Downloads/
mv -i lab1.md Downloads/
```

| Command | Description |
|---------|-------------|
| `mv lab1.md lab2.md` | Renames `lab1.md` to `lab2.md` |
| `mv lab1.md ~/Downloads/` | Moves a file into Downloads |
| `mv lab1.md lab2.md Downloads/` | Moves multiple files into Downloads |
| `mv -i lab1.md Downloads/` | Asks before overwriting an existing file |

---

## 4. Variables and Environment Variables

### What is a Variable?

**Definition:** A name that holds a value so you can use it again.
**Usage:** Stores a value once so you do not have to retype it.

```bash
name="Isaac"
```

### How do I use a Variable?

**Definition:** Assign a value using `=` **without spaces**, then use `$` before the variable name to retrieve it.
**Usage:** Use `echo` to display the value.

```bash
name="Isaac"
echo $name
echo "Hello, $name"
```

### What is an Environment Variable?

**Definition:** A variable made available to programs, such as `HOME`, `PATH`, and `USER`.
**Usage:** Reads system settings or shares variables with programs you launch.

```bash
echo $HOME
echo $USER
echo $PATH
env
printenv
```

### What is a User-Defined Variable?

**Definition:** A variable that you create yourself.
**Usage:** Stores your own information for use during a shell session.

```bash
course="CS101"
echo $course
export course
```

### Exporting Variables

```bash
export name="Isaac"
export course="CS101"
```

> `export` — Makes a variable available to child processes.

---

## 5. Linux Paths and Directories

| Concept | Symbol | Definition | Example |
|---------|:------:|------------|---------|
| **Root Directory** | `/` | The very top folder of the Linux file system; starting point of every absolute path | `cd /` |
| **Parent Directory** | `..` | The directory immediately above the current directory | `cd ..` |
| **Current Working Directory** | `.` | The directory you are currently inside (use `pwd` to display it) | `pwd` / `ls .` |
| **Absolute Path** | — | A path that starts at the root `/` and works from anywhere | `cd /home/isaac/projects/report` |
| **Relative Path** | — | A path that starts from your current working directory | `cd projects/report` |

### Your home directory vs. the home directory

- **Your home directory:** Your personal folder, such as `/home/isaac`.
- **The home directory:** The directory that holds users' personal folders, typically `/home`.

```bash
cd ~
cd /home
echo $HOME
```

---

## 6. APT Package Management

**APT** (Advanced Package Tool) is used by Ubuntu, Debian, and Linux Mint to install, update, and remove software.

> 💡 Most commands need `sudo` because they make changes to the system.

### Updating Software

```bash
sudo apt update
sudo apt upgrade
sudo apt upgrade -y
sudo apt full-upgrade -y
```

| Command | Description |
|---------|-------------|
| `sudo apt update` | Refreshes the list of available packages |
| `sudo apt upgrade` | Upgrades installed packages |
| `sudo apt upgrade -y` | Upgrades without asking for confirmation |
| `sudo apt full-upgrade -y` | Performs a full upgrade, including dependency changes when necessary |

### Installing Software

**Formula:**

```bash
sudo apt install package-name
```

**Examples:**

```bash
sudo apt install tree
sudo apt install -y htop
sudo apt install -y git curl nano
sudo apt install man-db
```

| Command | Description |
|---------|-------------|
| `sudo apt install tree` | Installs `tree` |
| `sudo apt install -y htop` | Installs `htop` without confirmation |
| `sudo apt install -y git curl nano` | Installs multiple applications |
| `sudo apt install man-db` | Installs manual page support |

### Searching for Software

```bash
apt search tree
apt show tree
apt list --installed
```

| Command | Description |
|---------|-------------|
| `apt search` | Searches for packages |
| `apt show` | Displays package information |
| `apt list --installed` | Lists installed packages |

### Removing Software

```bash
sudo apt remove tree
sudo apt purge tree
sudo apt autoremove
```

| Command | Description |
|---------|-------------|
| `remove` | Removes the application but generally keeps system configuration files |
| `purge` | Removes the application **and** its system configuration files |
| `autoremove` | Removes packages that are no longer needed |

### Cleaning the System

```bash
sudo apt clean
sudo apt autoclean
sudo apt autoremove
```

| Command | Description |
|---------|-------------|
| `clean` | Removes downloaded package files from the local cache |
| `autoclean` | Removes outdated package files |
| `autoremove` | Removes unused dependencies |

### Checking Installed Software

```bash
which tree
tree --version
apt list --installed
```

| Command | Description |
|---------|-------------|
| `which tree` | Shows the executable location |
| `tree --version` | Displays the installed version |
| `apt list --installed` | Lists installed packages |

### Adding a PPA

```bash
sudo add-apt-repository ppa:user/ppa-name
sudo apt update
```

- Adds a Personal Package Archive.
- Updates the package list after adding the repository.

### Removing a PPA

```bash
sudo add-apt-repository --remove ppa:user/ppa-name
sudo apt update
```

### Fixing Package Problems

```bash
sudo apt install --fix-missing package-name
sudo dpkg --configure -a
sudo apt --fix-broken install
```

| Command | Description |
|---------|-------------|
| `--fix-missing` | Attempts to handle missing package downloads |
| `dpkg --configure -a` | Configures unpacked but unconfigured packages |
| `--fix-broken install` | Attempts to fix broken dependencies |

### Common APT Errors

| Error | Fix |
|-------|-----|
| `Unable to locate package` | Check the spelling and run `sudo apt update` |
| `Could not get lock` | Another package manager may be running. Wait for it to finish |
| `Permission denied` | Check whether you need `sudo` |

> **Remember:** Run `sudo apt update` before installing software.

---

## 7. SNAP Package Management

**Snap** is a package management system used to install and manage Linux applications.

```bash
snap search firefox
sudo snap install firefox
sudo snap remove firefox
snap list
sudo snap refresh
```

| Command | Description |
|---------|-------------|
| `snap search firefox` | Searches for Firefox |
| `sudo snap install firefox` | Installs Firefox |
| `sudo snap remove firefox` | Removes Firefox |
| `snap list` | Lists installed Snap packages |
| `sudo snap refresh` | Updates installed Snap packages |

---

## 8. FLATPAK Package Management

**Flatpak** is another system used to install and manage Linux applications.

### Installing Flatpak

```bash
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak
```

### Adding Flathub

```bash
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

### Restarting the Computer

```bash
sudo reboot
```

### Flatpak Commands

```bash
flatpak search firefox
flatpak install flathub org.mozilla.firefox
flatpak uninstall org.mozilla.firefox
flatpak list
flatpak update
```

| Command | Description |
|---------|-------------|
| `flatpak search firefox` | Searches for Firefox |
| `flatpak install` | Installs an application |
| `flatpak uninstall` | Removes an application |
| `flatpak list` | Lists installed applications |
| `flatpak update` | Updates installed Flatpak applications |

---

## 9. System Information Commands

### `free`

**Definition:** Displays information about RAM and swap memory usage.
**Usage:** `free [options]`

```bash
free
free -h
free -m
free -g
free -t
free -s 2
```

| Command | Description |
|---------|-------------|
| `free` | Displays memory in kibibytes |
| `free -h` | Displays human-readable sizes |
| `free -m` | Displays megabytes |
| `free -g` | Displays gigabytes |
| `free -t` | Adds a totals line |
| `free -s 2` | Refreshes every two seconds |

**Understanding `free` output:**

| Column | Meaning |
|--------|---------|
| `total` | Total memory |
| `used` | Memory currently in use |
| `free` | Completely unused memory |
| `available` | Estimated memory available for applications |
| `Swap` | Disk space used as backup memory |

### `uname`

**Definition:** Displays operating system and kernel information.

```bash
uname
uname -a
```

### `df`

**Definition:** Displays disk space usage.

```bash
df
df -h
```

> `df -h` — Displays available and used disk space in readable units.

### `du`

**Definition:** Displays the amount of disk space used by files and directories.

```bash
du -sh Documents/
du -h folder/
```

| Command | Description |
|---------|-------------|
| `du -sh` | Displays the total size of a directory |
| `du -h` | Displays directory sizes in readable units |

### `uptime`

**Definition:** Displays how long the computer has been running.

```bash
uptime
```

### `top`

**Definition:** Displays running processes and system resource usage.

```bash
top
```

> Press `q` to exit.

### `lscpu`

**Definition:** Displays CPU information.

```bash
lscpu
```

### `figlet`

**Definition:** Displays text using large ASCII-art characters.

```bash
figlet Hello
```

---

## 10. Manual and Help Commands

### `man`

**Definition:** Displays the manual page for a command.
**Usage:** `man command`

```bash
man ls
man free
man apt
man mkdir
```

**Navigating a manual page:**

| Key | Action |
|-----|--------|
| `Space` | Moves down one page |
| `b` | Moves back one page |
| `↑` | Scrolls up one line |
| `↓` | Scrolls down one line |
| `/word` | Searches for a word |
| `n` | Finds the next match |
| `q` | Quits the manual |

### Other Help Tools

| Command | Definition | Example |
|---------|------------|---------|
| `tldr` | Provides practical examples and explanations for commands | `tldr ls` |
| `cheat` | Provides a quick cheat sheet for a command | `cheat ls` |
| `apropos` | Searches manual page descriptions using keywords | `apropos memory` |
| `whatis` | Provides a one-line description of a command | `whatis free` |
| `info` | Opens GNU information manuals | `info ls` |
| `which` | Shows the location of an executable | `which ls` / `which tree` |
| `whereis` | Finds the binary, source, and manual page locations of a command | `whereis ls` |
| `type` | Identifies whether a command is an alias, shell built-in, or executable | `type cd` / `type ls` |

---

## 11. Linux Help Commands (`--help`)

The `--help` option displays information about a command, including its purpose, usage, and available options.

### File and Directory Help Commands

```bash
mkdir --help
touch --help
rm --help
cp --help
mv --help
ls --help
pwd --help
find --help
chmod --help
```

### Terminal Help Commands

```bash
clear --help
echo --help
date --help
free --help
uname --help
hostname --help
whoami --help
```

**For Bash built-ins:**

```bash
help cd
help history
help export
help echo
help pwd
help type
```

### System Information Help Commands

```bash
df --help
du --help
uptime --help
top -h
lscpu --help
```

### Search and Manual Help Commands

```bash
man --help
apropos --help
whatis --help
info --help
which --help
whereis --help
grep --help
```

### Package Management Help Commands

**APT**

```bash
apt --help
apt-get --help
apt-cache --help
```

**SNAP**

```bash
snap --help
snap search --help
snap install --help
snap remove --help
snap list --help
snap refresh --help
```

**FLATPAK**

```bash
flatpak --help
flatpak search --help
flatpak install --help
flatpak uninstall --help
flatpak list --help
flatpak update --help
flatpak remote-add --help
```

### Additional Help Commands

```bash
bash --help
sudo --help
```

### Difference Between Help Options

| Command | Use |
|---------|-----|
| `command --help` | Displays a quick help summary |
| `command -h` | Short help option, if supported |
| `man command` | Opens the complete manual |
| `info command` | Opens the GNU information manual |
| `help command` | Displays help for Bash built-ins |
| `whatis command` | Displays a one-line description |
| `apropos keyword` | Searches manual descriptions |

> ⚠️ **Important:** Not every command supports `--help`. Some use `-h`, and Bash built-ins use `help`.

---

## 12. File Searching and Text Commands

### `find`

**Definition:** Searches for files and directories.

```bash
find ~ -name "hello.sh"
find . -name "*.txt"
find ~ -type d
find ~ -type f
```

| Command | Description |
|---------|-------------|
| `find ~ -name "hello.sh"` | Searches your home directory for `hello.sh` |
| `find . -name "*.txt"` | Finds TXT files in the current directory and its subdirectories |
| `find ~ -type d` | Finds directories |
| `find ~ -type f` | Finds regular files |

### `grep`

**Definition:** Searches for text inside files.

```bash
grep "hello" file.txt
grep -i "hello" file.txt
grep -n "hello" file.txt
grep -r "hello" folder/
```

| Command | Description |
|---------|-------------|
| `grep` | Searches for matching text |
| `grep -i` | Ignores uppercase and lowercase differences |
| `grep -n` | Displays matching line numbers |
| `grep -r` | Searches recursively inside directories |

### `tree`

**Definition:** Displays files and folders in a tree structure.

```bash
tree
```

---

## 13. Shell Scripting

Shell scripts allow you to save multiple commands in one file and execute them together.

### Step 1: Open the Terminal

1. Click **Activities**.
2. Search for **Terminal**.
3. Press **Enter**.

> You can also open Terminal from the Files application.

### Step 2: Open the Manual Page for `free`

```bash
man free
```

If you receive `man: command not found`, install it:

```bash
sudo apt install man-db
```

### Step 3: Understand the `free` Command

```bash
free
free -h
```

- `free` — Displays RAM and swap information.
- `free -h` — Displays memory in human-readable units.

### Step 4: Create a Shell Script

Create an empty file:

```bash
touch hello.sh
```

Open it with Nano:

```bash
nano hello.sh
```

### Step 5: Write the Script

Enter the following:

```bash
#!/bin/bash

echo "Hello World"
echo "Welcome to Linux"
date
whoami
```

| Line | Description |
|------|-------------|
| `#!/bin/bash` | Specifies Bash as the interpreter |
| `echo` | Displays text |
| `date` | Displays the date and time |
| `whoami` | Displays the current username |

### Step 6: Save the Script

Inside Nano:

1. `Ctrl + O` — Saves the file.
2. Press `Enter` to confirm.
3. `Ctrl + X` — Exits Nano.

### Step 7: Give the Script Permission to Execute

```bash
chmod +x hello.sh
```

### Step 8: Run the Script

```bash
./hello.sh
```

Alternatively:

```bash
bash hello.sh
```

### Additional Shell Script Commands

```bash
touch hello.sh
nano hello.sh
cat hello.sh
chmod +x hello.sh
./hello.sh
bash hello.sh
```

| Command | Description |
|---------|-------------|
| `touch` | Creates the script file |
| `nano` | Opens the script for editing |
| `cat` | Displays script contents |
| `chmod +x` | Gives executable permission |
| `./hello.sh` | Executes the script |
| `bash hello.sh` | Runs the script using Bash |

---

## 14. Wildcards and File Globbing

Wildcards are shell patterns that allow one pattern to match multiple filenames.

### The `*` Wildcard

**Definition:** Matches **zero or more** characters.

```bash
ls *.txt
ls *.jpg
ls -A *.txt *.py
ls -A demo*
mv Pictures/* ~/Backup/
rm Downloads/copy* Documents/new*.docx
```

| Command | Description |
|---------|-------------|
| `ls *.txt` | Lists files ending in `.txt` |
| `ls *.jpg` | Lists JPG files |
| `ls -A *.txt *.py` | Lists TXT and Python files |
| `ls -A demo*` | Lists files beginning with `demo` |
| `mv Pictures/* ~/Backup/` | Moves all matching contents into Backup |
| `rm Downloads/copy*` | Removes matching files beginning with `copy` |

### The `?` Wildcard

**Definition:** Matches **exactly one** character.

```bash
ls file?.txt
ls ???.sh
ls img?.png
cp Downloads/b??k.pdf Documents/
ls Scripts/*.??
```

| Pattern | Description |
|---------|-------------|
| `file?.txt` | Matches `file1.txt` and `fileA.txt` |
| `???.sh` | Matches three-character filenames before `.sh` |
| `img?.png` | Matches `img1.png` and `img2.png` |
| `b??k.pdf` | Matches filenames with exactly two characters between `b` and `k` |
| `*.??` | Matches files with two-character extensions |

### The `[]` Wildcard

**Definition:** Matches **one character from a specified set**.

```bash
ls [abc]*.txt
ls file[123].txt
ls *[xyz].*
```

| Pattern | Description |
|---------|-------------|
| `[abc]` | Matches one character from `a`, `b`, or `c` |
| `[123]` | Matches one character from `1`, `2`, or `3` |
| `[xyz]` | Matches one character from `x`, `y`, or `z` |

### The `[a-z]` Wildcard

**Definition:** Matches **one character in a specified range**.

```bash
ls [a-f]*
ls [A-Z]*.txt
ls file[0-9].txt
rm log[1-5].txt
```

| Pattern | Description |
|---------|-------------|
| `[a-f]` | Matches one lowercase letter from `a` through `f` |
| `[A-Z]` | Matches one uppercase letter |
| `[0-9]` | Matches one digit |
| `[1-5]` | Matches one digit from 1 through 5 |

### The `[!abc]` Wildcard

**Definition:** Matches **one character that is NOT** in the specified set.

```bash
ls [!a]*
ls file[!0-9].txt
ls -A [!0-9]*.rb
cp [!.]* backup/
```

| Pattern | Description |
|---------|-------------|
| `[!a]` | Matches characters other than `a` |
| `[!0-9]` | Matches characters other than digits |
| `[!.]` | Matches a character other than a dot |

### More Wildcard Examples

```bash
ls -A [A-Z]*.txt
ls -A [0-9]*.py
ls -A [!0-9]*.rb
ls *[xyz].*
ls -A [0-9][0-9][0-9]$USER*
```

### Hidden Files

Files beginning with a dot are hidden files.

```bash
ls -a
ls -A
```

| Option | Description |
|--------|-------------|
| `ls -a` | Displays all files, including `.` and `..` |
| `ls -A` | Displays hidden files but excludes `.` and `..` |

Copy files that do **not** begin with a dot:

```bash
cp [!.]* backup/
```

> ⚠️ **Important:** The shell expands wildcards *before* the command runs. Be careful when using wildcards with `rm`.

---

## 15. Brace Expansion

Brace expansion creates multiple names from one command.

### Basic Brace Expansion

```bash
echo {apple,banana,cherry}
```

**Output:**

```text
apple banana cherry
```

### Example 1: Every Combination

```bash
mkdir -pv assets/{imgs,video}/{large,small}
```

**Creates:**

```text
assets/
├── imgs/
│   ├── large/
│   └── small/
└── video/
    ├── large/
    └── small/
```

### Example 2: Nested Branches

```bash
mkdir -pv project/site/{old,new}/{code/{scripts,markup},assets/{imgs,mp3,mp4}}
```

**Creates:**

```text
project/
└── site/
    ├── old/
    │   ├── code/
    │   │   ├── scripts/
    │   │   └── markup/
    │   └── assets/
    │       ├── imgs/
    │       ├── mp3/
    │       └── mp4/
    └── new/
        ├── code/
        │   ├── scripts/
        │   └── markup/
        └── assets/
            ├── imgs/
            ├── mp3/
            └── mp4/
```

### Example 3: Several Top-Level Directories

```bash
mkdir -pv {app,components,data,pages,assets/{css,images},config/deploy}
```

**Creates:**

```text
app/
components/
data/
pages/
assets/
├── css/
└── images/
config/
└── deploy/
```

### Additional Examples

```bash
mkdir {images,documents,videos}
mkdir -p project/{src,docs,tests}
mkdir -p assets/{css,js,images}
touch file{1,2,3}.txt
touch report_{2024,2025,2026}.txt
```

| Command | Description |
|---------|-------------|
| `{images,documents,videos}` | Creates multiple directories |
| `{src,docs,tests}` | Creates multiple subdirectories |
| `file{1,2,3}.txt` | Creates three files |
| `report_{2024,2025,2026}.txt` | Creates three report files |

### Important Options

| Option | Description |
|--------|-------------|
| `-p` | Creates parent directories when needed |
| `-v` | Displays directories as they are created |

---

## 16. POSIX Character Classes

POSIX character classes are predefined groups of characters used inside bracket expressions.

| POSIX Class | Meaning |
|-------------|---------|
| `[:alnum:]` | Letters and digits |
| `[:alpha:]` | Uppercase and lowercase letters |
| `[:ascii:]` | ASCII characters |
| `[:blank:]` | Spaces and tabs |
| `[:cntrl:]` | Control characters |
| `[:digit:]` | Digits 0–9 |
| `[:graph:]` | Visible characters, excluding spaces |
| `[:lower:]` | Lowercase letters |
| `[:print:]` | Printable characters, including spaces |
| `[:punct:]` | Punctuation characters |
| `[:space:]` | Whitespace characters |
| `[:upper:]` | Uppercase letters |
| `[:word:]` | Letters, digits, and underscore (common extension) |
| `[:xdigit:]` | Hexadecimal digits |

### Examples

```bash
ls [[:alpha:]]*
ls [[:digit:]]*
ls [[:upper:]]*
ls [[:lower:]]*
ls [[:alnum:]]*
```

| Pattern | Description |
|---------|-------------|
| `[[:alpha:]]` | Matches a letter |
| `[[:digit:]]` | Matches a digit |
| `[[:upper:]]` | Matches an uppercase letter |
| `[[:lower:]]` | Matches a lowercase letter |
| `[[:alnum:]]` | Matches a letter or digit |

> ⚠️ **Important:** POSIX character classes must be written **inside square brackets**.

```bash
[[:digit:]]
```

---

## 17. Markdown Cheat Sheet

Markdown is a lightweight markup language used to format text, documents, README files, and notes.

### 17.1 Headers

Use `#` to create headings.

```markdown
# H1
## H2
### H3
#### H4
##### H5
###### H6
```

**Alternate header style** (only works for H1 and H2):

```markdown
Header 1
========

Header 2
--------
```

### 17.2 Emphasis

| Style | Syntax | Alternate |
|-------|--------|-----------|
| Italic | `*italic*` | `_italic_` |
| Bold | `**bold**` | `__bold__` |
| Bold italic | `***bold italic***` | `___bold italic___` |
| Strikethrough | `~~strikethrough~~` | — |
| Inline code | `` `code` `` | — |

**Examples:**

```markdown
*This is italic*

**This is bold**

***This is bold and italic***

~~This is crossed out~~

`This is code`
```

### 17.3 Lists

**Unordered lists** — use `*`, `-`, or `+`.

```markdown
* Item 1
  * Nested Item 1
* Item 2

- Item 1
  - Nested Item 1
- Item 2

+ Item 1
+ Item 2
```

**Ordered lists**

```markdown
1. First item
2. Second item
3. Third item
```

**Task lists**

```markdown
- [ ] Checkbox off
- [x] Checkbox on
```

### 17.4 Links

**Inline links**

```markdown
[Google](https://google.com)

[OpenAI](https://openai.com)
```

**Reference-style links**

```markdown
[Google][google]

[google]: https://google.com
```

**Automatic links**

```markdown
<https://google.com>
```

### 17.5 Images

**Inline images**

```markdown
![Image alt text](/path/to/image.jpg)

![Image alt text](/path/to/image.jpg "Image title")
```

**Reference-style images**

```markdown
![Image alt text][img]

[img]: https://example.com/image.jpg
```

**Base64 images**

```markdown
![Image alt text][img_base64]

[img_base64]: <data:image/png;base64,...>
```

### 17.6 Code

**Inline code** — use single backticks.

```markdown
Use the `ls` command to list files.
```

**Indented code blocks** — indent every line with four spaces.

```text
    This is a code block.
    Every line is indented.
```

**Fenced code blocks** — use three backticks.

````markdown
```
This is a code block.
```
````

**Code blocks with language highlighting**

````markdown
```bash
sudo apt update
sudo apt upgrade
```

```python
print("Hello World")
```

```javascript
console.log("Hello World");
```
````

### 17.7 Blockquotes

```markdown
> This is a blockquote.
> It can contain multiple lines.
>
> > This is a nested blockquote.
```

### 17.8 Horizontal Rules

Use three or more hyphens, asterisks, or underscores.

```markdown
---

***

___
```

### 17.9 Tables

**Basic table**

```markdown
| Column 1 Heading | Column 2 Heading |
|------------------|------------------|
| Some content     | Other content    |
| Another item     | Another value    |
```

**Minimal table**

```markdown
Column 1 Heading | Column 2 Heading
--- | ---
Some content | Other content
Another item | Another value
```

**Column alignment**

```markdown
| Left | Center | Right |
|:-----|:------:|------:|
| a    | b      | c     |
| 1    | 2      | 3     |
```

| Syntax | Alignment |
|--------|-----------|
| `:---` | Left |
| `:---:` | Center |
| `---:` | Right |

---

## 18. Terminal Shortcuts

| Shortcut | Use |
|----------|-----|
| `Tab` | Automatically completes commands and filenames |
| `↑` | Displays the previous command |
| `↓` | Moves forward through command history |
| `Ctrl + C` | Stops a running command |
| `Ctrl + L` | Clears the terminal screen |
| `Ctrl + D` | Ends terminal input or closes the shell |
| `Ctrl + O` | Saves a file in Nano |
| `Ctrl + X` | Exits Nano |
| `Ctrl + W` | Searches inside Nano |

**Additional commands:**

```bash
clear
history
```

---

## 19. Complete Linux Command Reference

### 📁 File and Directory Commands

| Command | Main Use |
|---------|----------|
| `mkdir` | Creates directories |
| `touch` | Creates empty files or updates timestamps |
| `rm` | Removes files and directories |
| `cp` | Copies files and directories |
| `mv` | Moves or renames files |
| `ls` | Lists files and directories |
| `pwd` | Displays current directory |
| `cd` | Changes directory |
| `find` | Searches for files and directories |
| `tree` | Displays directory structure |
| `chmod` | Changes file permissions |

### 💻 Terminal Commands

| Command | Main Use |
|---------|----------|
| `clear` | Clears terminal screen |
| `echo` | Displays text |
| `date` | Displays date and time |
| `history` | Displays previous commands |
| `hostname` | Displays computer name |
| `whoami` | Displays current username |
| `type` | Identifies command types |
| `export` | Exports variables |
| `env` | Displays environment variables |
| `printenv` | Displays environment variables |

### 📊 System Information Commands

| Command | Main Use |
|---------|----------|
| `free` | Checks RAM and swap memory |
| `uname` | Displays system and kernel information |
| `df` | Checks disk space |
| `du` | Checks directory sizes |
| `uptime` | Displays system running time |
| `top` | Monitors running processes |
| `lscpu` | Displays CPU information |

### 📖 Help and Manual Commands

| Command | Main Use |
|---------|----------|
| `man` | Opens command manuals |
| `tldr` | Shows practical command examples |
| `cheat` | Shows command cheat sheets |
| `apropos` | Searches manual descriptions |
| `whatis` | Displays one-line descriptions |
| `info` | Opens GNU information manuals |
| `which` | Locates executables |
| `whereis` | Locates programs and manuals |
| `--help` | Displays command help |

### 📦 Package Management Commands

| Command | Main Use |
|---------|----------|
| `apt` | Manages Ubuntu packages |
| `snap` | Manages Snap packages |
| `flatpak` | Manages Flatpak applications |
| `dpkg` | Manages Debian packages |
| `add-apt-repository` | Adds or removes PPAs |

### 📜 Shell Scripting Commands

| Command | Main Use |
|---------|----------|
| `nano` | Edits text and script files |
| `cat` | Displays file contents |
| `bash` | Runs Bash scripts |
| `sh` | Runs shell scripts |
| `chmod +x` | Makes scripts executable |

---

*End of Linux Workshop Study Guide*

> 💡 **Study Tip:** Practice each command in a test directory before using it on important files. Pay special attention to `rm`, `sudo`, wildcards, and package installation commands because they can make significant changes to your system.