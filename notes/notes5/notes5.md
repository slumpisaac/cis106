# For each of the following commands include: Definition, Usage/Formula, and Examples.

## ls
- **Definition:** Shows what files and folders are inside a folder
- **Usage:** ls options,path

### Examples
- `-l` long format
- `-a` shows all the files,including hidden ones
- `-h` human-readable sizes

## pwd
- **Definition:** `Print working directory` Shows where you are right now
- **Usage:** to know exactly where you are in the file system if you get lost

### Examples
- `pwd` # Output: /home/isaac
- `pwd -P` # Output: the real path

## cd
- **Definition:** `Change Directory` Moves you to another folder
- **Usage:** to move to specific Directory or to return alone back to home Directory

### Examples
- `cd ~/Documents` it takes you to the Documents folder in your home directory
- `cd ../..` take you up two levels

# Include answers to the following questions:

## What is a variable?
- **Definition:** A name that holds a value so you can use it again
- **Usage:** to store a value once, like `name="Isaac"`, so you can reuse it without retyping it.

## How do I use a variable?
- **Definition:** Give it a value with `=` (no spaces), then put `$` in front of the name to get the value back
- **Usage:** assign it with `name="Isaac"` and then use it with `echo "Hello, $name"`.

## What is an environment variable?
- **Definition:** A variable made by the system that programs can use, like `HOME`, `PATH`, and `USER`
- **Usage:** to read system settings like `echo $HOME`, or use `export` to share a variable with programs you launch.

## What is a user defined variable?
- **Definition:** A variable you make yourself
- **Usage:** to hold a value for your session, like `course="CS101"`, and add `export course` if child processes need it.

## What is the root directory?
- **Definition:** The very top folder of the system, written `/`
- **Usage:** it is the starting point of every absolute path, and `cd /` takes you straight to it.

## What does "Parent Directory" mean?
- **Definition:** The folder right above the one you are in, written `..`
- **Usage:** `cd ..` moves you up one level to the parent directory.

## What does "Current working directory" mean?
- **Definition:** The folder you are in right now, written `.`
- **Usage:** run `pwd` to see it, since relative paths like `ls notes.txt` are read from this location.

## What is an absolute path? Include an example
- **Definition:** A path that starts at `/` and works from anywhere
- **Example:** `cd /home/isaac/projects/report`

## What is a relative path? Include an example
- **Definition:** A path that starts from the folder you are in, so it does not begin with `/`
- **Example:** `cd projects/report` (from `/home/isaac`, this goes to `/home/isaac/projects/report`)

## What is the difference between "Your home directory" and "The home directory"?
- **Definition:** `Your home directory` is your own personal folder `(such as /home/isaac)`, while the home directory is the folder that holds everyone's home folders `(typically /home)`.
- **Usage:** `cd ~` takes you to your home directory (`/home/isaac`), and `cd /home` takes you to the directory that holds every user's home.