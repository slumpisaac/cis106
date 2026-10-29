# For each of the following commands include: Definitions, Usage/formula,and Examples

## mkdir
- **Definition:** Creates one or more new directories
- **Usage:** `mkdir` CIS_106 it will create a directory named CIS_106

### Examples
- `mkdir` Resources to make a directory named Resources
- `mkdir folder1 folder2` to make 2 separate folders
- `mkdir -p CIS_106/Labs/lab1` It would create a nested path in one command

## touch 
- **Definition:** Creates a new empty file, or updates the access and modification timestamps of an existing file without changing its content
- **Usage:** If you want to create a file named `lab1.md` it would create it but it will be empty

### Examples
- `touch lab1.md` It will create a empty file that will tell the text editor how to handle the file
- `touch lab1.md lab2.md lab3.md` It will create three md files at the same time
- `touch lab1.md` if this file was already created it will update the times stamp of the already existing file

## rm or remove
**Definition:** It removes files in the directory and its permanent so you cant restore the files you use the rm command on 
**Usage:** To remove any unwanted files that you want deleted permanently

### Examples
`rm lab1.md` It removes this file permanently
`rm -i lab1.md` It will ask you if you want to delete that file
`rm -r CIS_106` It will delete the directories and all the content inside of it

## cp or copy file
**Definition:** This command copies files or directories from one location to another, leaving the original in place
**Usage:** `cp lab1.md /home/isaac/Downloads/` It will copy the lab1 file into my Downloads Directory

### Examples
- `cp lab1.md Downloads/` it will make a copy in my Downloads folder
- `cp lab1.md lab2.md Downloads/` It will copy multiple files into the Downloads folder
- `cp -r CIS_106 Downloads/` I will copy the full directory with all the content into the Downloads folder

## mv 
**Definition:** Its used to relocate files or to rename them
**Usage:** `mv lab1.md  lab2.md` to rename the file name if you don't have a file named lab2

### Examples
- `mv lab1.md ~/Downloads/` to move the file to another directory 
- `mv lab1.md lab2.md ~/Downloads/` to move both into the downloads folder

