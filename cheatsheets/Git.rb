cheatsheet do
  title 'Git'
  docset_file_name 'Git'
  keyword 'git'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Create'

    entry do
      name 'Clone an existing repository'
      notes "
        ```
        git clone ssh://user@domain.tld/repo.git
        ```"
    end

    entry do
      name 'Clone an existing repository and all its sub-modules recursively'
      notes "
        ```
        git clone --recursive ssh://user@domain.tld/repo.git
        ```"
    end

    entry do
      name 'Create a new local repository'
      notes "
      ```
      git init
      ```"
    end
  end

  category do
    id 'Configuration'

    entry do
      name 'Set the name attached to all your commits'
      notes "
      ```
      git config [--global] user.name <name>
      ```"
    end

    entry do
      name 'Set the email attached to all your commits'
      notes "
      ```
      git config [--global] user.email <email>
      ```"
    end

    entry do
      name 'Set colorization of command line output for all repos'
      notes "
      ```
      git config --global color.ui auto
      ```"
    end

    entry do
      name 'Print set name (in current repository or globally)'
      notes "
      ```
      git config [--global] user.name
      ```"
    end

    entry do
      name 'Print set email (in current repository or globally)'
      notes "
      ```
      git config [--global] user.email
      ```"
    end
  end
  
  category do
    id 'Local Changes'

    entry do
      name 'List changed files in your working directory'
      notes "
      ```
      git status
      ```"
    end

    entry do
      name 'List changes to tracked files'
      notes "
      ```
      git diff
      ```"
    end

    entry do
      name 'Add all current changes in file to the next commit'
      notes "
      ```
      git add <file>
      ```"
    end

    entry do
      name 'Add all current changes to the next commit'
      notes "
      ```
      git add .
      ```"
    end

    entry do
      name 'Add changes to the next commit interactively'
      notes "
      ```
      git add -p <file>
      ```"
    end

    entry do
      name 'Rename file and add it to next commit'
      notes "
      ```
      git mv <file> <new file name>
      ```"
    end

    entry do
      name 'Delete file and add its deletion to next commit'
      notes "
      ```
      git rm <file>
      ```"
    end

    entry do
      name 'Commit all local changes in tracked files'
      notes "
      ```
      git commit -a
      ```"
    end

    entry do
      name 'Commit previously staged changes'
      notes "
      ```
      git commit
      ```"
    end

    entry do
      name 'Change the last commit'
      notes "
      ```
      git commit --amend
      ```
      Note: You shouldn't amend published commits!"
    end
  end

  category do
    id 'Commit History'

    entry do
      name 'Show all commits'
      notes "
      ```
      git log
      ```"
    end

    entry do
      name 'Show changes over time for a specific file'
      notes "
      ```
      git log -p <file>
      ```"
    end

    entry do
      name 'Show changes over time for a specific committer'
      notes "
      ```
      git log --author=<committer name>
      ```
      Note: `<committer name>` is a pattern, so `Ed` will match `Edward Smith`. Quotes are optional if the pattern doesn't contain spaces."
    end
    
    entry do
      name 'Search (grep) commit messages for the given string'
      notes "
      ```
      git log --grep=<string>
      ```"
    end

    entry do
      name 'Who changed what and when in file'
      notes "
      ```
      git blame <file>
      ```"
    end

    entry do
      name 'Store changes temporarily'
      notes "
      ```
      git stash
      ```"
    end

    entry do
      name 'Remove and apply stashed changes'
      notes "
      ```
      git stash pop
      ```"
    end

    entry do
      name 'Remove file from all previous commits but keep it locally'
      notes "
      ```
      git rm --cached <file>
      ```"
    end

  end

  category do
    id 'Branches & Tags'

    entry do
      name 'List all existing branches'
      notes "
      ```
      git branch
      ```"
    end

    entry do
      name 'Switch HEAD branch'
      notes "
      ```
      git checkout <branch>
      ```"
    end

    entry do
      name 'Create a new branch based on your current HEAD'
      notes "
      ```
      git branch <new-branch>
      ```"
    end

    entry do
      name 'Create a new tracking branch based on a remote branch'
      notes "
      ```
      git branch --track <new-branch> <remote-branch>
      ```"
    end

    entry do
      name 'Delete a local branch'
      notes "
      ```
      git branch -d <branch>
      ```"
    end

    entry do
      name 'Delete a remote branch'
      notes "
      ```
      git push origin --delete <branch>
      ```"
    end

    entry do
      name 'Rename a branch locally'
      notes "
      ```
      git branch -m <old name> <new name>
      ```"
    end

    entry do
      name 'Rename a branch on remote'
      notes "
      ```
      git push <remote> :<old name>
      git push <remote> <new name>

      ```"
    end

    entry do
      name 'Tag the current commit'
      notes "
      ```
      git tag <tag-name>
      ```"
    end
  end

  category do
    id 'Update & Publish'

    entry do
      name 'List all currently configured remotes'
      notes "
      ```
      git remote -v
      ```"
    end

    entry do
      name 'Show information about a remote'
      notes "
      ```
      git remote show <remote>
      ```"
    end

    entry do
      name 'Add new remote repository'
      notes "
      ```
      git remote add <remote> <url>
      ```"
    end

    entry do
      name 'Rename a remote'
      notes "
      ```
      git remote rename <old-name> <new-name>
      ```"
    end

    entry do
      name "Download all changes from remote, but don't merge into HEAD"
      notes "
      ```
      git fetch <remote>
      ```"
    end

    entry do
      name "Download all changes from remote, but don't merge into HEAD and clean up deleted branches from origin"
      notes "
      ```
      git fetch -p <remote>
      ```"
    end

    entry do
      name 'Download changes and directly merge into HEAD'
      notes "
      ```
      git pull <remote> <branch>
      ```"
    end

    entry do
      name 'Publish local changes on a remote'
      notes "
      ```
      git push <remote> <branch>
      ```"
    end

    entry do
      name 'Track a remote repository'
      notes "
      ```
      git remote add --track <remote-branch> <remote> <url>
      ```
      "
    end

    entry do
      name 'Publish your tags'
      notes "
      ```
      git push --tags
      ```"
    end

  end

  category do
    id 'Merge & Rebase'

    entry do
      name 'Merge branch into your current HEAD'
      notes "
      ```
      git merge <branch>
      ```"
    end

    entry do
      name 'Rebase your current HEAD onto branch'
      notes "
      ```
      git rebase <branch>
      ```
      Note: You shouldn't rebase published commits!"
    end

    entry do
      name 'Abort a rebase'
      notes "
      ```
      git rebase --abort
      ```"
    end

    entry do
      name 'Continue a rebase after resolving conflicts'
      notes "
      ```
      git rebase --continue
      ```"
    end

    entry do
      name 'Resolve conflicts using your configured merge tool'
      notes "
      ```
      git mergetool
      ```"
    end

    entry do
      name 'Manually resolve conflicts using your editor and mark file as resolved'
      notes <<-'END'
        ```bash
        git add <resolved-file>
        git rm <resolved-file>
        ```
      END
    end


  end

  category do
    id 'Undo'

    entry do
      name 'Discard all local changes in your working directory'
      notes "
      ```
      git reset --hard HEAD
      ```"
    end

    entry do
      name 'Discard local changes in a specific file'
      notes "
      ```
      git checkout HEAD <file>
      ```"
    end

    entry do
      name 'Revert a commit by providing a new commit with contrary changes'
      notes "
      ```
      git revert <commit>
      ```"
    end

    entry do
      name 'Restore a specific file from a previous commit'
      notes "
      ```
      git checkout <commit> <file>
      ```"
    end

    entry do
      name 'Reset your HEAD pointer to a previous commit'
      notes <<-'END'
        * Discarding local changes:

            ```
            git reset --hard <commit>
            ```

        * Preserving all changes as unstaged changes:

            ```
            git reset <commit>
            ```

        * Preserving uncommitted local changes:

            ```
            git reset --keep <commit>
            ```
      END
    end
  end
  
  category do
    id 'Submodules'

    entry do
      name 'Make changes, commit and checkout submodule files'
      notes "Just go the submodule directory and use git as usual"
    end

    entry do
      name 'List all currently configured submodules'
      notes "
      ```
      git submodule
      ```
      or
      
      ```
      git submodule status
      ```"
    end

    entry do
      name 'Show information about a submodule'
      notes "
      ```
      git remote show <remote>
      ```"
    end

    entry do
      name 'Add a new submodule'
      notes "
      Beware of the submodule name you choose: If you use a forward slash (`/`) git will think you want to delete the submodule and want to add all the files in the submodule directory. Please DON'T use a forward slash after the submodule name.
      
      1. Run `git submodule add -b <branch> --name <name> <repository-path-or-url>`
      2. Add the `.gitmodule` file and submodule folder to the superproject index
      3. Commit both files on the superproject
      "
    end
    
    entry do
      name 'Remove a submodule'
      notes "
      1. Delete the relevant line from the `.gitmodules` file
      2. Delete the relevant section from `.git/config`
      3. Run `git rm --cached <submodule-path>` (no trailing slash)
      4. Commit the superproject
      5. Delete the now untracked submodule files"
    end

    entry do
      name "Clone a project with submodules"
      notes "
      1. Clone the superproject as usual
      2. Run `git submodule init` to init the submodules
      3. Run `git submodule update` to have the submodules on a detached HEAD
      
      or 
      
      Run `git clone --recursive ssh://user@domain.tld/repo.git`
      "
    end

    entry do
      name "See all changes on submodules"
      notes "
      ```
      git diff --submodule
      ```"
    end

    entry do
      name 'Update the submodules to the lastest changes on their respective branches'
      notes "
      ```
      git submodule update --remote
      ```"
    end

    entry do
      name 'Update a specific submodule to the lastest changes on its branch'
      notes "
      ```
      git submodule update --remote <submodule-name>
      ```"
    end

    entry do
      name 'Push changes to the superproject only if all submodules are pushed also'
      notes "
      ```
      git push --recurse-submodules=check
      ```
      "
    end

    entry do
      name 'Push changes to the submodules and then push the superproject changes'
      notes "
      ```
      git push --recurse-submodules=on-demand
      ```
      "
    end
    
    entry do
      name 'Run arbitrary commands on each submodule'
      notes "
      ```
      git submodule foreach '<arbitrary-command-to-run>'
      ```
      "
    end
    
  end

  notes <<-'END'
    * Based on the cheat sheet from [Tower.app](http://www.git-tower.com/). The original can be found [here](http://www.git-tower.com/blog/git-cheat-sheet/).
    * Converted and extended by [Jens Kohl](https://github.com/jk).
  END
end
