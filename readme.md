# ReadMe -- Git Crash Course

[![github repo link](https://img.shields.io/badge/github-repo-blue?logo=github)](https://github.com/MatsuneMikuroi/GitCrashCourse)
[![license](https://img.shields.io/badge/license-MIT-green)](./LICENSE)
![Last Compiled](https://img.shields.io/github/last-commit/MatsuneMikuroi/GitCrashCourse/main?path=readme.md&label=Last%20Modified)

_This document has a crucial importance in any shared project. It is meant to describe your project, how to use it (eventually why having make it) and provide any information on its installation. It is generally a `txt` or a `md` file, making it easy to write, maintain and read._

## Why Git?

For any person who has work at least one time on a group project, one of the main issue was to share the project between the different actors. There is several options to do so, each with their pros and cons:

- USB stick/SD card
  - Pros: It is sure the files are exactly the same for everyone, easiest to put in place
  - Cons: Only one person at a time can have it, no history if the file is lost
- Drive (Onedrive, Google drive, ...)
  - Pros: Everyone can access the files at anytime, quick to put in place
  - Cons: require external account, limited to some apps, no history if the file is lost
- Git
  - Pros: Everyone can work on its 'own' version of the project, easy merge, full history of commit
  - Cons: Needs to create a repository, (only non binary files)

With this quick comparison, we can see that the Drive and the Git repository have similar pros and cons. The main difference being that Git requires to be setup by uselves where a drive only need to be share and voilà, it is done. However, looking beneath this difference reveals a much more dire one: one between 2 (two) paradigmes:

- Onedrive and Google drive are proprietary software, meaning that the code, and most importantly your files, are hosted on private servers. You have to trust the company to not use your files against you (for ads for example) and to not loose them.
- Git is 'open source' and do not need any subscription and can be host on your own server. This means that you have the full control of your files and that you can share them with who you want, how you want.

For you who will work in Computer Science or even in any other field of science, you have to know that Git is widely used and that soon or later you will have to face it. It's openess allows to share easily open source project such as:

- [Mistral AI](https://github.com/mistralai)
- [python](https://github.com/python/cpython)
- [Linux Kernel](https://github.com/torvalds/linux)
- [Doom PDF](https://github.com/ading2210/doompdf)[^1]

[^1]: Yes, _Doom_, the famous FPS has been ported to be playable in a PDF file.

## How to work with git

### Installing Git

#### On Windows

To install git, just go to [git-scm/windows](https://git-scm.com/install/windows) and download the installer. Then, just follow the instructions.

#### On Linux

To install git on Linux, you can use your package manager. See [git-scm/linux](https://git-scm.com/install/linux) for the exact command for your distribution.

#### On MacOS

To install git on MacOS, you can use [Homebrew](https://brew.sh/) (if you don't have it, go to the website and follow the instructions). Then, just run the command:

```bash
brew install git
```

As always, you can also see [git-scm/macos](https://git-scm.com/install/mac) for more options.

### Setting up Git

After installing git, you need to set up your user name and email. This is important as it will be used to identify you in the commit history. To do so, just run the following commands in your terminal:

```bash
git config --global user.name "Your Name"
git config --global user.email "Your email"
```

For all installation and configuration, always use a personnal email to avoid issue when you'll leave your current school or job.

### Some tools to use Git with and how to use them

As said earlier, the original way of using Git is going through the terminal. Hopefully for you, nowadays there is several great user interface to use it, so don't hesitate to use them![^2]

[^2]: Knowing the Git Bash command is still usefull as not every project manager uses a comprehensive UI (see [Overleaf]( #with-overleaf ) for this).

#### GitHub

One of the most famous Git repository hosting service is [GitHub](https://github.com)[^3]. To use it, you can either use the web interface or use some UI such as [GitHub Desktop](https://desktop.github.com/) to manage your repositories both locally and remotely.

1. To use GitHub, you need to create an account first, for this go to [GitHub signup](...).
2. Then, you can create a new repository by clicking on the "Create New" button on the main page.
![GitHub New repo]( ./src/github/main%20page.png)
3. You then arrive on [this page](https://github.com/new) where you can fill the information about your repository[^4].

    - Name: The name of your repository
    - Description: A short description of your repository
    - Visibility: Choose between Public (anyone can see your repository) or Private (only you and people you share it with can see it)
    - Initialize this repository with a README: If you check this box, a README file will be created for you automatically.
    - .gitignore: A file that tells Git which files to ignore (not track). You can choose a template based on the type of project you are working on.
    - License: A file that tells others what they can and cannot do with your code. You can choose a license based on your needs.
    ![Name and Description](./src/github/create%20repo.png)

4. Finally, click on the "Create repository" button to create your repository.
![created repo](src/github/new%20repo.png)

##### GitHub Desktop

Once you have created your repository, you can use GitHub Desktop to manage it. To do so, just download and install GitHub Desktop from [here](https://desktop.github.com/). Then, open GitHub Desktop and sign in with your GitHub account. You can then clone your repository to your local machine by clicking on the "File" menu and slecting "Clone repository...".
![Desktop home](./src/github/desktop%20home.png)
Then select your repository and choose the local path where you want to clone it.
![Cloning repo](./src/github/clone%20repo.png)

Congratulations, you have now cloned your repository to your local machine! You can now use GitHub Desktop to manage your repository both locally and remotely.

[^3]: To be noted that GitHub is owned by Microsoft. If you want to avoid it, you can use GitLab or host your own Git server.

#### Gitlab

GitLab is another popular Git repository hosting service. It is open source and can be self-hosted. You can use the web interface or use some UI such as [GitKraken](https://www.gitkraken.com/) to manage your repositories both locally and remotely.

#### Git Bash

To use Git bash, just open your file explorer, search `git bash` and open it. A bash console will appear, allowing you to navigate through your files and use git command along bash ones.

1. Navigate where you want to clone your git repository or to create it.[^4]

    ```bash
    cd <path/to/location>
    ```

2. Once there, you can either clone a repository with:

    ```bash
    git clone <url> <foldername>
    ```

    or create a repository using

    ```bash
    git init
    ```

You can now open your git folder in your favorite IDE.

#### Setting up a git server

You may want to be totally independent of any online platform for privacy, security and controll over your data and your git repository. For this it is possible to create your own git server hosted on your machine or on your own server. As this is a more advanced part, we redirect you to TODO for a installation guide.

#### Overleaf

Overleaf is popular online LaTeX editor that also provides Git integration. You can use the web interface to edit your LaTeX documents and use Git to manage your project versioning.[^5]

1. First open your Overleaf project

2. Open the integration menu

3. Copy the command

4. Follow [the git bash instructions]( #git-bash ) to go to the right folder and clone your project repository

Don't forget to push your offline changes to overleaf by committing and pushing.

[^4]: See a repository as a folder containing your project files. Its name should be relevant to the project itself and must be unique on your account/main folder.

[^5]: Unfortunately, Overleaf Git integration is only available for premium users only, however if the owner of the project owns it, you can use it too.

### Main/Master branch

When you create your git project, you start in the main (or master) branch. From there, you can create some new branches, allowing you to work on a copy of the file _without_ modifying the original one. Some pros of this:

- What you have done is useless or depreceted? you can just delete the branch and come back to your master branch
- Several people can start working with the same basis on different part of the project
- You can test new features or debug without breaking the main code. When you are satisfied with your changes, you can merge them back to the main branch, if not just delete the branch.
- You can work on several features at the same time without mixing them up.

However, branches can lead to some issues if not used properly:

- If several people work on the same file, merging can become a pain. Git will try to merge the changes automatically, but if it can't, you will have to do it manually.
- If you work on a branch for a long time without merging it back to the main branch, you may have to deal with a lot of conflicts when you finally try to merge it back.
- If you create too many branches, it can become hard to manage them all.
- If you delete a branch, you may lose some important changes if you haven't merged them back to the main branch.
- If you forget to switch back to the main branch before starting a new feature, you may end up working on the wrong branch.
- If you don't name your branches properly, it can become hard to know what each branch is for.
- While working with a team, it is important to _communicate_ about the branches each member is working on, when they plan to merge them back, and, most importantly, to organize to know who is working on what to avoid conflicts.
- **Be aware to not merge in the wrong branch or way. Like merging the _main_ branch into a feature branch by mistake.**

With all this in mind, Git might seem a bit complicated and hard to use it at first, but with practice and discipline, it becomes a powerful tool to manage your projects and collaborate with others.

In fact, the main branch should be consider as the stable version of your project, the only commit allowed should be merge from other branches that have been tested and validated. In fact, it is a good practice to protect the main branch from direct commits, forcing everyone to work on branches and merge them back only when they are ready.

### Branching

To create a new branch, you can use the command:

```bash
git checkout -b <branch_name>
```

or

```bash
git switch -c <branch_name>
```

the `-b` or `-c` flag tells git to create the branch if it doesn't exist. To switch between branches, you can use the command:

```bash
git checkout <branch_name>
```

or

```bash
git switch <branch_name>
```

When you have finished working on your branch and want to merge it back to the parent branch, you can use the command:

```bash
git checkout <parent_branch>
git merge <branch_name>
```

**Be aware to be on the parent branch before merging**, `merge` command will merge the specified branch into the current branch, not the other way around.

when you have definitively finished with a branch, you can delete it using the command:

```bash
git branch -d <branch_name>
```

be careful when deleting branches, as you may lose important changes if you haven't merged them back to the main branch, **deleted branches are forever lost**.

### Preparing a commit

While working with git, you will at first work locally on your files. Once you have made the changes you want, you need to prepare them to be committed. For this, several commands will be useful:

1. First, you can add the files you want to commit to the staging area using the command:

    ```bash
    git add <file_name>
    ```

    or to add all the changes at once:

    ```bash
    git add .
    ```

2. You can then commit the changes using the command:

    ```bash
    git commit -m "commit message"
    ```

    The `-m` flag allows you to add a commit message directly from the command line. If you don't use it, git will open your default text editor to write the commit message. If you want to stage and commit all changes at once, you can use the command:

    ```bash
    git commit -am "commit message"
    ```

    The `-a` flag tells git to stage all changes before committing.

3. Finally, you can push the changes to the remote repository using the command:

    ```bash
    git push origin <branch_name>
    ```

    This will push the changes to the specified branch on the remote repository.

Pushing the changes will make them available to everyone who has access to the repository. However, if you are not proprietary of the repository, you may need to create a pull request to have your changes reviewed and merged by the repository owner. The process of creating a pull request varies depending on the platform you are using (GitHub, GitLab, Bitbucket, etc.), but generally involves going to the repository page and clicking on the "New Pull Request" button.

### Getting the updated version

To get the updated version of a git repository, you can use the command

```bash
git pull origin <branch_name>
```

With this you'll get all the changes made by your teammates on the specified branch. If you are on the branch you want to update, you can simply use:

```bash
git pull
```

and if you want to update all branches, you can use:

```bash
git fetch --all
```

### Accepting a Pull Request

When someone creates a pull request[^pullrequest], you will receive a notification. To review and accept the pull request, you can follow these steps:

1. Go to the repository page on the platform you are using (GitHub, GitLab, Bitbucket, etc.).
2. Click on the "Pull Requests" tab to see the list of open pull requests.
3. Click on the pull request you want to review.
4. Review the changes made in the pull request. You can see the files changed, the commit history, and any comments made by the author.
5. If you are satisfied with the changes, you can click on the "Merge Pull Request" button to merge the changes into the main branch.
6. If you have any comments or suggestions, you can leave them in the pull request for the author to address before merging.

[^pullrequest]: A pull request is a bit tricky term. It doesn't mean that you ask to get the new updates, but that you ask to push on a repository you don't own.

## Conclusion

Congratulations, you can now use Git to manage your projects and collaborate with others! Don't hesitate to explore more advanced features of Git and the platform you are using to make the most out of it. (e.g., GitHub Actions, GitLab CI/CD, Git history manipulation, etc.).

Git is a powerful open source tool that can greatly enhance your development workflow, so keep practicing and learning!

If you have any questions or need help, don't hesitate to ask!

To end this course, here are some cheat sheets to help you remember the most important commands and concepts.

## To go further...

Here some quick tips to go further with Git:

- Use `.gitignore` files to exclude files and directories from being tracked by Git. This is useful for temporary files, build artifacts, and sensitive information.
- Learn about branching strategies such as Git Flow or GitHub Flow to manage your branches and releases more effectively.
- Explore Git hooks to automate tasks such as running tests or formatting code before committing changes.
- Look up for some extension or how your favorite IDE integrate git.
- Enhance your readme file with this following [chapter](#markdown).

### Markdown

Markdown is a lightweight markup language that allows you to format text using simple syntax. It is widely used in readme files, documentation, and blogs. Here are some basic Markdown syntax to get you started:

- Headers:

```markdown
# Header 1
## Header 2
### Header 3
#...
```

- Emphasis:

```markdown
*Italic* or _Italic_
**Bold** or __Bold__
~~Strikethrough~~     # Does not work in every viewer
```

- Lists:

```markdown
- Unordered list:
  - Item 1
  - Item 2
    - Subitem 1
    - Subitem 2

- Ordered list:
   1. Item 1
   2. Item 2
      1. Subitem 1
      2. Subitem 2

- Task list  # Does not work with every viewer
    - [x] Completed task
    - [ ] Incomplete task
```

- Links and Images:

```markdown
[Link text](https://example.com)
[Link with title](https://example.com "Title text")
![Alt text](https://example.com/image.png)
[Reference to headers]( #header-1 )
[![Clickable Image](https://example.com/image.png)](https://example.com)
```

- Blockquotes:

````markdown
> This is a blockquote.
- Code blocks:

```python
def hello_world():
    print("Hello, world!")
```

````

- Footnotes:

```markdown
Here is a sentence with a footnote.[^1]

[^1]: This is the footnote text.

Or another one[^note]:

[^note]: Another footnote example.
```

- Tables:

```markdown
|  Left  | left alt | Center | Right  |
|--------|:---------|:------:|-------:|
| Cell 1 |  Cell 2  | Cell 3 | Cell 4 |
| Cell 5 |  Cell 6  | Cell 7 | Cell 8 |
```

- Horizontal Rule:

```markdown
---
```

- Math (using LaTeX syntax)[^LaTeX]:

```markdown
Inline math: $E = mc^2$
Block math:
$$ \int_a^b f(x) \,\mathrm{d}x $$
```

[^LaTeX]: Note that not all Markdown renderers support LaTeX math. In addition, be aware to use the old delimiters `$...$` for inline math and `$$...$$` for block math, as some renderers do not support the newer `\(...\)` and `\[...\]` delimiters.

Markdown also support HTML in it. A practical way can be to <span style="color:RED">change</span> <span style="color:GREEN">text</span> <span style="color:BLUE">color</span>.

```markdown
<span style="color:RED">...</span>
```

or use it to set precise size for image:

```markdown
<img src="https://example.com/image.png" width="200" height="100">
```

One last tip to enhance your readme is to use badges. You can go to [shields.io](https://shields.io) to generate a badge for your prject. For example, you can add a badge to show the build status of your project, the number of downloads, or the license type.

