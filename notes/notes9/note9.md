# Note 9: grep, awk, and sed

## `grep` searches for a pattern
**`grep`** is a command used for searching a file or input for lines that match a pattern.

### Usage
- Formula: `grep [options] pattern /home/isaac/note1.md`
- `-i` ignores upper and lower case.
- `-v` shows lines that do **not** match.
- `-n` shows the line number of each match.

### Example
- `grep Linux /home/isaac/note1.md` prints every line in `/home/isaac/note1.md` that contains `Linux`.
- `grep -in "linux" /home/isaac/note1.md /home/isaac/note2.md` finds `linux` in any case in both files and shows the line numbers.
## `awk` processes text by columns
**`awk`** is a command used for splitting each line into fields (columns) and printing or filtering them.

### Usage
- Formula: `awk 'pattern { action }' /home/isaac/note1.md`
- `$0` is the whole line.
- `$1`, `$2`, `$3` are the first, second, and third fields.

### Example
- `awk '{ print $1, $2 }' /home/isaac/note1.md` prints the 1st and 2nd words of every line in `/home/isaac/note1.md`.
- `awk '/Linux/ { print NR ": " $0 }' /home/isaac/note1.md` prints each line containing `Linux` with its line number.

## `sed` edits text as it streams
**`sed`** is a command used for changing text as it passes through, such as replacing or deleting lines.

### Usage
- Formula: `sed 's/old/new/g' /home/isaac/note1.md`
- `s/old/new/` replaces the first `old` on each line with `new`.
- `g` at the end replaces **every** `old` on each line.

### Example
- `sed 's/Linux/Ubuntu/' /home/isaac/note1.md` shows `/home/isaac/note1.md` with `Linux` replaced by `Ubuntu`.
- `sed '1d' /home/isaac/note2.md` prints `/home/isaac/note2.md` without its first line.
- 
## The pipe `|` sends output to another command
A **pipe** `|` takes the output of the command on its left and uses it as the input of the command on its right.

### Usage
- Formula: `command1 | command2 | command3`
- It lets you chain small commands together without making temporary files.

### Example
- `ls /home/isaac/*.md | wc -l` counts how many `.md` files are in `/home/isaac`.
- `cat /home/isaac/note1.md | grep Linux | sort` finds the lines in `/home/isaac/note1.md` that contain `Linux` and sorts them.
- 
## `>` saves output to a file
The **redirect** operator `>` sends the output of a command into a file instead of showing it on the screen.

### Usage
- Formula: `command > /home/isaac/note1.md`
- If the file does not exist, it is created.
- If the file already exists, it is **overwritten**.

### Example
- `ls -l /home/isaac > /home/isaac/note1.md` saves the directory listing in `/home/isaac/note1.md`.
- `grep Linux /home/isaac/note1.md > /home/isaac/note2.md` saves only the lines containing `Linux` in `/home/isaac/note2.md`.
- `echo "Hello, Linux!" > /home/isaac/note3.md`  It saves the text Hello, Linux! into a file called note3.md in /home/isaac.

## `>>` appends output to a file
The **append** operator `>>` adds the output of a command to the end of a file without erasing what is already there.

### Usage
- Formula: `command >> /home/isaac/note1.md`
- If the file does not exist, it is created.

### Example
- `echo "New line" >> /home/isaac/note1.md` adds a new line to the end of `/home/isaac/note1.md`.
- `cat /home/isaac/note2.md >> /home/isaac/note1.md` adds the contents of `/home/isaac/note2.md` to the end of `/home/isaac/note1.md`.
- `date >> /home/isaac/note1.md` adds the current date and time to the end of `/home/isaac/note1.md`.