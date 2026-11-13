# Note 8: Handling Text Files

## `cat` shows or join files
`cat` is a command used for viewing or combining and or creating files right in the terminal

### Usage 
- `-n` numbers all lines.
- `-b` numbers only the non-blank lines.
- `-s` squeezes multiple blank lines into one.

### Example
- `cat notes7.txt` prints the whole file in the terminal.
- `cat notes1.txt notes2.txt notes3.txt` this would display everything in the files, in the terminal.

## `tac` shows a file backwards
`tac` is `cat` spelled backwards. It prints a file with the last line first, so the lines come out in reverse order.

### Usage
- `tac file` prints the lines of the file in reverse order.
- `tac file1 file2` reverses each file, but still shows `file1` first and then `file2`.

### Example
- `tac notes7.txt` prints the last line of the file first and the first line last.
- `tac notes1.txt notes2.txt` shows `notes1.txt` backwards, then `notes2.txt` backwards.

## `head` shows the first lines of a file
`head` is a command used for viewing the beginning of a file. By default it shows the first 10 lines.

### Usage
- `-n N` shows the first N lines.
- `-c N` shows the first N bytes.
- `-n -N` shows everything except the last N lines.

### Example
- `head notes7.txt` prints the first 10 lines of the file.
- `head -n 3 notes7.txt` prints only the first 3 lines.

## `tail` shows the last lines of a file
`tail` is a command used for viewing the end of a file. By default it shows the last 10 lines.

### Usage
- `-n N` shows the last N lines.
- `-n +N` starts at line N and shows everything to the end.
- `-f` follows the file as it grows, which is useful for live logs.

### Example
- `tail -n 3 notes7.txt` prints only the last 3 lines.
- `tail -n +5 notes7.txt` prints from line 5 to the end of the file.

## `cut` pulls out parts of each line
`cut` is a command used for extracting sections of each line, like a column from a CSV file or the first few characters.

### Usage
- `-d 'X'` sets the delimiter to X. The default delimiter is a Tab.
- `-f LIST` selects fields (columns).
- `-c LIST` selects character positions.

### Example
- `cut -d',' -f1 data.csv` shows the 1st column of a CSV file.
- `cut -d':' -f1 /etc/passwd` lists all the usernames on the system.

## `sort` sorts lines
`sort` is a command used for putting the lines of a file in order. By default it sorts alphabetically, A to Z.

### Usage
- `-r` reverses the order.
- `-n` sorts numerically.
- `-u` keeps only unique lines and removes duplicates.

### Example
- `sort names.txt` sorts the lines A to Z.
- `sort -n nums.txt` sorts numbers properly, so `2` comes before `10`.

## `wc` counts lines, words, and bytes
`wc` is short for word count. It is a command used for counting the lines, words, and bytes in a file.

### Usage
- `-l` counts lines only.
- `-w` counts words only.
- `-c` counts bytes only.

### Example
- `wc notes7.txt` shows the lines, words, and bytes in that order, like `12  45  230 notes7.txt`.
- `ls | wc -l` counts how many files are in the current directory.

## Combining commands with pipes
A pipe `|` takes the output of one command and uses it as the input of the next command. The format is `command1 | command2 | command3`.

### Example
- `head -n 10 notes7.txt | tail -n 6` shows lines 5 through 10 of the file.
- `cut -d':' -f1 /etc/passwd | sort -u | wc -l` counts the unique usernames on the system.