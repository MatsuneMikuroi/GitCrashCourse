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

### Refering to a commit

- brach: `main`
- tag: `v1.0`
- commit ID: `a1b2c3d4`
- remote: `origin/main`
- current commit: `HEAD`
- x commits before HEAD: `HEAD~x` or `HEAD^...^` (e.g., `HEAD~2` or `HEAD^^` for two commits before HEAD)

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
git branch -D <branch>         # Force delete a branch
# Diverging branches
git switch <diverging branch>  # Switch to the diverging branch
git rebase <base branch>       # Rebase the diverging branch onto the base branch
  # or
git switch <base branch>       # Switch to the base branch
git merge <base branch>        # Merge the diverging branch into the base branch
```

### Push and Pull

```bash
# Pushing
git push <remote> <branch>     # Push a branch to a remote repository
git push -u <remote> <branch>  # Push a new branch to a remote repository
git push --tags                # Push all tags to a remote repository
git push                       # Push the current branch to its upstream branch
git push --force-with-lease    # Force push with lease to prevent overwriting changes
#Pulling
git fetch <remote> <branch>    # Fetch a branch from a remote repository
git pull <remote> <branch>     # Fetch and merge a branch from a remote repository
git pull --rebase              # Fetch and rebase a branch from a remote repository
# Add remote
git remote add <name> <url>    # Add a new remote repository
```

### Diff

```bash
# Diff (un)staged changes
git diff HEAD                  # Diff all staged and unstaged changes
git diff --staged              # Diff only staged changes
git diff                       # Diff only unstaged changes

# Diff commits
git show <commit>              # Show the changes introduced by a commit
git diff <commit1> <commit2>   # Show the changes between two commits
git diff <commit> <file>       # Show the changes to a file in a commit
git diff <commit> --stat       # Show the summary of changes in a commit 
```

### Discarding Changes

```bash
git restore <file>             # Discard changes to one file
  # or
git checkout <file>            # Discard changes to one file
git reset --hard               # Delete all staged and unstaged changes
git stash                      # Stash all staged and unstaged changes
git restore --staged --worktree <file> # Delete all staged and unstaged changes to a file
  # or
git checkout HEAD <file>       # Delete all staged and unstaged changes to a file
git clean                      # Remove untracked files
```

### Config

```bash
git config user.name "Your Name"         # Set the name that will be attached to your commits
git config user.email "Your Email"       # Set the email that will be attached to your
git config --global ...                  # Set the option globally
man git-config                           # Show the manual for git-config
```