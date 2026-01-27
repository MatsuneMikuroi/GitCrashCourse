# CheatSheets

## Bash

Here some basic bash commands to navigate and manipulate files and directories:

```bash
cd <path/to/folder>          # Change directory to the specified folder
ls                           # List files and directories in the current directory
cp <source> <destination>    # Copy a file or directory
mv <source> <destination>    # Move or rename a file or directory
rm <file>                    # Remove a file
mkdir <directory>            # Create a new directory
rmdir <directory>            # Remove an empty directory
touch <file>                 # Create a new empty file
```

## Git

Here some basic git commands to manage your repository[^GitCS]:

[^GitCS]: List taken from [Git - Cheat Sheet](https://git-scm.com/cheat-sheet) the 2026-01-23.

### Getting Started

```bash
# Getting started
git init                      # Initialize a new git repository
git clone <repository_url>    # Clone an existing repository
```

### Commit

```bash
# Prepare to Commit
git add <file>                # Stage a file for commit
git add .                     # Stage all changes for commit
git add -p                    # Choose which parts of a file to stage
git mv <old> <new>            # Rename a file and stage the change
git rm <file>                 # Remove a file and stage the change
git rm --cached <file>        # Unstage a file but keep it in the working directory
git reset <file>              # Unstage a file
git reset                     # Unstage all changes
git status                    # Show the status of the working directory and staging area

# Make Commits
git commit -m "message"       # Commit staged changes with a message
git commit                    # Commit staged changes with an editor to write the message
git commit -am "message"      # Stage and commit all changes with a message
```

### Branches

```bash
# Move Between Branches
git checkout <branch>          # Switch to a different branch
  # or
git switch <branch>            # Switch to a different branch
git checkout -b <new_branch>   # Create and switch to a new branch
  # or
git switch -c <new_branch>     # Create and switch to a new branch
git branch                     # List all branches
git branch -d <branch>         # Delete a branch
```
