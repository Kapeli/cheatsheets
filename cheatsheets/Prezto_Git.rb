cheatsheet do
   title 'Prezto Git'
   docset_file_name 'Prezto_Git'
   keyword 'g'
   source_url 'http://cheat.kapeli.com'
   style '
     td.td_notes code {
       border: none;
       box-shadow: none;
       background: none;
       font-family: "Open Sans", sans-serif;
       font-size: medium;
       color: #666666;
     }
     td, th {
       white-space: nowrap;
       min-width: 110px;
     }
     .no-min-width td, .no-min-width th {
       min-width: 0;
     }
     td:last-child {
       width: 99%;
     }
     .notes {
       font-family: monospace;
     }
    '

    category do
        id 'Git'

        entry do
            td_command 'g'
            name 'git'
            notes 'is short for "git"'
        end
    end

    category do
        id 'Branch (b)'

        entry do
            td_command 'gb'
            name 'Lists, creates, renames, and deletes branches'
            notes 'git branch'
        end
        entry do
            td_command 'gba'
            name 'Creates a new branch'
            notes 'git branch --all --verbose'
        end
        entry do
            td_command 'gbc'
            name 'Creates a new branch'
            notes 'git checkout -b'
        end
        entry do
            td_command 'gbd'
            name 'Deletes a branch'
            notes 'git branch --delete'
        end
        entry do
            td_command 'gbD'
            name 'Deletes the branch regardless of its push and merge status, so be careful using this one, see also "gbd"'
            notes 'git branch --delete --force'
        end
        entry do
            td_command 'gbl'
            name 'Lists branches and their commits, see also "gbv"'
            notes 'git branch --verbose'
        end
        entry do
            td_command 'gbL'
            name 'Lists all local and remote branches and their commits'
            notes 'git branch --all --verbose'
        end
        entry do
            td_command 'gbr'
            name 'Renames/moves a branch, see also "gbm"'
            notes 'git branch --move'
        end
        entry do
            td_command 'gbR'
            name 'Renames/moves a branch even if the new branch name already exists, see also "gbM"'
            notes 'git branch --move --force'
        end
        entry do
            td_command 'gbs'
            name 'Lists branches and their commits with ancestry graphs'
            notes 'git show-branch'
        end
        entry do
            td_command 'gbS'
            name 'Lists local and remote branches and their commits with ancestry graphs'
            notes 'git show-branch --all'
        end
        entry do
            td_command 'gbv'
            name 'Lists branches with verbose information about their commits'
            notes 'git branch --verbose'
        end
        entry do
            td_command 'gbV'
            name 'Lists branches with more verbose information about their commits'
            notes 'git branch --verbose --verbose'
        end
        entry do
            td_command 'gbx'
            name 'Deletes a branch, see also "gbd"'
            notes 'git branch --delete'
        end
        entry do
            td_command 'gbX'
            name 'Deletes a branch irrespective of its merged status, see also "gbD"'
            notes 'git branch --delete --force'
        end
    end

    category do
        id 'Commit (c)'

        entry do
            td_command 'gc'
            name 'Records changes to the repository'
            notes 'git commit --verbose'
        end
        entry do
            td_command 'gca'
            name 'Stages all modified and deleted files'
            notes 'git commit --verbose --all'
        end
        entry do
            td_command 'gcm'
            name 'Records changes to the repository with the given message'
            notes 'git commit --message'
        end
        entry do
            td_command 'gcS'
            name 'Records changes to the repository. (Signed)'
            notes 'git commit -S --verbose'
        end
        entry do
            td_command 'gcSa'
            name 'Stages all modified and deleted files. (Signed)'
            notes 'git commit -S --verbose --all'
        end
        entry do
            td_command 'gcSm'
            name 'Records changes to the repository with the given message. (Signed)'
            notes 'git commit -S --message'
        end
        entry do
            td_command 'gcam'
            name 'Stages all modified and deleted files, and records changes to the repository with the given message'
            notes 'git commit --all --message'
        end
        entry do
            td_command 'gco'
            name 'Checks out a branch or paths to work tree'
            notes 'git checkout'
        end
        entry do
            td_command 'gcO'
            name 'Checks out hunks from the index or the tree interactively'
            notes 'git checkout --patch'
        end
        entry do
            td_command 'gcf'
            name 'Amends the tip of the current branch using the same log message as *HEAD*'
            notes 'git commit --amend --reuse-message HEAD'
        end
        entry do
            td_command 'gcSf'
            name 'Amends the tip of the current branch using the same log message as *HEAD*. (Signed)'
            notes 'git commit -S --amend --reuse-message HEAD'
        end
        entry do
            td_command 'gcF'
            name 'Amends the tip of the current branch'
            notes 'git commit --verbose --amend'
        end
        entry do
            td_command 'gcSF'
            name 'Amends the tip of the current branch. (Signed)'
            notes 'git commit -S --verbose --amend'
        end
        entry do
            td_command 'gcp'
            name 'Applies changes introduced by existing commits'
            notes 'git cherry-pick --ff'
        end
        entry do
            td_command 'gcP'
            name 'Applies changes introduced by existing commits without committing'
            notes 'git cherry-pick --no-commit'
        end
        entry do
            td_command 'gcr'
            name 'Reverts existing commits by reverting patches and recording new commits'
            notes 'git revert'
        end
        entry do
            td_command 'gcR'
            name 'Removes the *HEAD* commit'
            notes 'git reset "HEAD^"'
        end
        entry do
            td_command 'gcs'
            name 'Displays various types of objects'
            notes 'git show'
        end
        entry do
            td_command 'gcsS'
            name 'Displays commits with GPG signature'
            notes 'git show --pretty=short --show-signature'
        end
        entry do
            td_command 'gcl'
            name 'Lists lost commits'
            notes 'git-commit-lost'
        end
        entry do
            td_command 'gcy'
            name 'Displays commits yet to be applied to upstream in the short format'
            notes 'git cherry -v --abbrev'
        end
        entry do
            td_command 'gcY'
            name 'Displays commits yet to be applied to upstream'
            notes 'git cherry -v'
        end
    end

    category do
        id 'Conflict (C)'

        entry do
            td_command 'gCl'
            name 'Lists unmerged files'
            notes 'git --no-pager diff --name-only --diff-filter=U'
        end
        entry do
            td_command 'gCa'
            name 'Adds unmerged file contents to the index'
            notes 'git add $(gCl)'
        end
        entry do
            td_command 'gCe'
            name 'Executes merge-tool on all unmerged file'
            notes 'git mergetool $(gCl)'
        end
        entry do
            td_command 'gCo'
            name 'Checks out our changes for unmerged paths'
            notes 'git checkout --ours --'
        end
        entry do
            td_command 'gCO'
            name 'Checks out our changes for all unmerged paths'
            notes 'gCo $(gCl)'
        end
        entry do
            td_command 'gCt'
            name 'Checks out their changes for unmerged paths'
            notes 'git checkout --theirs --'
        end
        entry do
            td_command 'gCT'
            name 'Checks out their changes for all unmerged paths'
            notes 'gCt $(gCl)'
        end
    end

    category do
        id 'Data (d)'

        entry do
            td_command 'gd'
            name 'Displays information about files in the index and the work tree'
            notes 'git ls-files'
        end
        entry do
            td_command 'gdc'
            name 'Lists cached files'
            notes 'git ls-files --cached'
        end
        entry do
            td_command 'gdx'
            name 'Lists deleted files'
            notes 'git ls-files --deleted'
        end
        entry do
            td_command 'gdm'
            name 'Lists modified files'
            notes 'git ls-files --modified'
        end
        entry do
            td_command 'gdu'
            name 'Lists untracked files'
            notes 'git ls-files --other --exclude-standard'
        end
        entry do
            td_command 'gdk'
            name 'Lists killed files'
            notes 'git ls-files --killed'
        end
        entry do
            td_command 'gdi'
            name 'Lists ignored files'
            notes 'git status --porcelain --short --ignored | sed -n "s/^!! //p"'
        end
    end

    category do
        id 'Fetch (f)'

        entry do
            td_command 'gf'
            name 'Downloads objects and references from another repository'
            notes 'git fetch'
        end
        entry do
            td_command 'gfa'
            name 'Downloads objects and references from all remote repositories'
            notes 'git fetch --all'
        end
        entry do
            td_command 'gfc'
            name 'Clones a repository into a new directory'
            notes 'git clone'
        end
        entry do
            td_command 'gfcr'
            name 'Clones a repository into a new directory including all submodules'
            notes 'git clone --recurse-submodules'
        end
        entry do
            td_command 'gfm'
            name 'Fetches from and merges with another repository or local branch'
            notes 'git pull'
        end
        entry do
            td_command 'gfr'
            name 'Fetches from and rebases on another repository or local branch'
            notes 'git pull --rebase'
        end
    end

    category do
        id 'Flow (F)'

        entry do
            td_command 'gFi'
            name 'Is short for "git flow init"'
            notes 'git flow init'
        end
    end

    category do
        id 'Flow Feature (Ff)'

        entry do
            td_command 'gFf'
            name 'Is short for "git flow feature"'
            notes 'git flow feature'
        end
        entry do
            td_command 'gFfl'
            name 'Is short for "git flow feature list"'
            notes 'git flow feature list'
        end
        entry do
            td_command 'gFfs'
            name 'Is short for "git flow feature start"'
            notes 'git flow feature start'
        end
        entry do
            td_command 'gFff'
            name 'Is short for "git flow feature finish"'
            notes 'git flow feature finish'
        end
        entry do
            td_command 'gFfp'
            name 'Is short for "git flow feature publish"'
            notes 'git flow feature publish'
        end
        entry do
            td_command 'gFft'
            name 'Is short for "git flow feature track"'
            notes 'git flow feature track'
        end
        entry do
            td_command 'gFfd'
            name 'Is short for "git flow feature diff"'
            notes 'git flow feature diff'
        end
        entry do
            td_command 'gFfr'
            name 'Is short for "git flow feature rebase"'
            notes 'git flow feature rebase'
        end
        entry do
            td_command 'gFfc'
            name 'Is short for "git flow feature checkout"'
            notes 'git flow feature checkout'
        end
        entry do
            td_command 'gFfm'
            name 'Is short for "git flow feature pull"'
            notes 'git flow feature pull'
        end
        entry do
            td_command 'gFfx'
            name 'Is short for "git flow feature delete"'
            notes 'git flow feature delete'
        end
    end

    category do
        id 'Flow Bugfix (Fb)'

        entry do
            td_command 'gFb'
            name 'Is short for "git flow bugfix"'
            notes 'git flow bugfix'
        end
        entry do
            td_command 'gFbl'
            name 'Is short for "git flow bugfix list"'
            notes 'git flow bugfix list'
        end
        entry do
            td_command 'gFbs'
            name 'Is short for "git flow bugfix start"'
            notes 'git flow bugfix start'
        end
        entry do
            td_command 'gFbf'
            name 'Is short for "git flow bugfix finish"'
            notes 'git flow bugfix finish'
        end
        entry do
            td_command 'gFbp'
            name 'Is short for "git flow bugfix publish"'
            notes 'git flow bugfix publish'
        end
        entry do
            td_command 'gFbt'
            name 'Is short for "git flow bugfix track"'
            notes 'git flow bugfix track'
        end
        entry do
            td_command 'gFbd'
            name 'Is short for "git flow bugfix diff"'
            notes 'git flow bugfix diff'
        end
        entry do
            td_command 'gFbr'
            name 'Is short for "git flow bugfix rebase"'
            notes 'git flow bugfix rebase'
        end
        entry do
            td_command 'gFbc'
            name 'Is short for "git flow bugfix checkout"'
            notes 'git flow bugfix checkout'
        end
        entry do
            td_command 'gFbm'
            name 'Is short for "git flow bugfix pull"'
            notes 'git flow bugfix pull'
        end
        entry do
            td_command 'gFbx'
            name 'Is short for "git flow bugfix delete"'
            notes 'git flow bugfix delete'
        end
    end

    category do
        id 'Release'

        entry do
            td_command 'gFr'
            name 'Is short for "git flow release"'
            notes 'git flow release'
        end
        entry do
            td_command 'gFrl'
            name 'Is short for "git flow release list"'
            notes 'git flow release list'
        end
        entry do
            td_command 'gFrs'
            name 'Is short for "git flow release start"'
            notes 'git flow release start'
        end
        entry do
            td_command 'gFrf'
            name 'Is short for "git flow release finish"'
            notes 'git flow release finish'
        end
        entry do
            td_command 'gFrp'
            name 'Is short for "git flow release publish"'
            notes 'git flow release publish'
        end
        entry do
            td_command 'gFrt'
            name 'Is short for "git flow release track"'
            notes 'git flow release track'
        end
        entry do
            td_command 'gFrd'
            name 'Is short for "git flow release diff"'
            notes 'git flow release diff'
        end
        entry do
            td_command 'gFrr'
            name 'Is short for "git flow release rebase"'
            notes 'git flow release rebase'
        end
        entry do
            td_command 'gFrc'
            name 'Is short for "git flow release checkout"'
            notes 'git flow release checkout'
        end
        entry do
            td_command 'gFrm'
            name 'Is short for "git flow release pull"'
            notes 'git flow release pull'
        end
        entry do
            td_command 'gFrx'
            name 'Is short for "git flow release delete"'
            notes 'git flow release delete'
        end
    end

    category do
        id 'Flow Hotfix (Fh)'

        entry do
            td_command 'gFh'
            name 'Is short for "git flow hotfix"'
            notes 'git flow hotfix'
        end
        entry do
            td_command 'gFhl'
            name 'Is short for "git flow hotfix list"'
            notes 'git flow hotfix list'
        end
        entry do
            td_command 'gFhs'
            name 'Is short for "git flow hotfix start"'
            notes 'git flow hotfix start'
        end
        entry do
            td_command 'gFhf'
            name 'Is short for "git flow hotfix finish"'
            notes 'git flow hotfix finish'
        end
        entry do
            td_command 'gFhp'
            name 'Is short for "git flow hotfix publish"'
            notes 'git flow hotfix publish'
        end
        entry do
            td_command 'gFht'
            name 'Is short for "git flow hotfix track"'
            notes 'git flow hotfix track'
        end
        entry do
            td_command 'gFhd'
            name 'Is short for "git flow hotfix diff"'
            notes 'git flow hotfix diff'
        end
        entry do
            td_command 'gFhr'
            name 'Is short for "git flow hotfix rebase"'
            notes 'git flow hotfix rebase'
        end
        entry do
            td_command 'gFhc'
            name 'Is short for "git flow hotfix checkout"'
            notes 'git flow hotfix checkout'
        end
        entry do
            td_command 'gFhm'
            name 'Is short for "git flow hotfix pull"'
            notes 'git flow hotfix pull'
        end
        entry do
            td_command 'gFhx'
            name 'Is short for "git flow hotfix delete"'
            notes 'git flow hotfix delete'
        end
    end

    category do
        id 'Flow Support (Fs)'

        entry do
            td_command 'gFs'
            name 'Is short for "git flow support"'
            notes 'git flow support'
        end
        entry do
            td_command 'gFsl'
            name 'Is short for "git flow support list"'
            notes 'git flow support list'
        end
        entry do
            td_command 'gFss'
            name 'Is short for "git flow support start"'
            notes 'git flow support start'
        end
        entry do
            td_command 'gFsf'
            name 'Is short for "git flow support finish"'
            notes 'git flow support finish'
        end
        entry do
            td_command 'gFsp'
            name 'Is short for "git flow support publish"'
            notes 'git flow support publish'
        end
        entry do
            td_command 'gFst'
            name 'Is short for "git flow support track"'
            notes 'git flow support track'
        end
        entry do
            td_command 'gFsd'
            name 'Is short for "git flow support diff"'
            notes 'git flow support diff'
        end
        entry do
            td_command 'gFsr'
            name 'Is short for "git flow support rebase"'
            notes 'git flow support rebase'
        end
        entry do
            td_command 'gFsc'
            name 'Is short for "git flow support checkout"'
            notes 'git flow support checkout'
        end
        entry do
            td_command 'gFsm'
            name 'Is short for "git flow support pull"'
            notes 'git flow support pull'
        end
        entry do
            td_command 'gFsx'
            name 'Is short for "git flow support delete"'
            notes 'git flow support delete'
        end
    end

    category do
        id 'Grep (g)'

        entry do
            td_command 'gg'
            name 'Displays lines matching a pattern'
            notes 'git grep'
        end
        entry do
            td_command 'ggi'
            name 'Displays lines matching a pattern ignoring case'
            notes 'git grep --ignore-case'
        end
        entry do
            td_command 'ggl'
            name 'Lists files matching a pattern'
            notes 'git grep --files-with-matches'
        end
        entry do
            td_command 'ggL'
            name 'Lists files that are not matching a pattern'
            notes 'git grep --files-without-matches'
        end
        entry do
            td_command 'ggv'
            name 'Displays lines not matching a pattern'
            notes 'git grep --invert-match'
        end
        entry do
            td_command 'ggw'
            name 'Displays lines matching a pattern at word boundary'
            notes 'git grep --word-regexp'
        end
    end

    category do
        id 'Index (i)'

        entry do
            td_command 'gia'
            name 'Adds file contents to the index'
            notes 'git add'
        end
        entry do
            td_command 'giA'
            name 'Adds file contents to the index interactively'
            notes 'git add --patch'
        end
        entry do
            td_command 'giu'
            name 'Adds file contents to the index (updates only known files)'
            notes 'git add --update'
        end
        entry do
            td_command 'gid'
            name 'Displays changes between the index and a named commit (diff)'
            notes 'git diff --no-ext-diff --cached'
        end
        entry do
            td_command 'giD'
            name 'Displays changes between the index and a named commit (word diff)'
            notes 'git diff --no-ext-diff --cached --word-diff'
        end
        entry do
            td_command 'gii'
            name 'Temporarily ignore differences in a given file'
            notes 'git update-index --assume-unchanged'
        end
        entry do
            td_command 'giI'
            name 'Unignore differences in a given file'
            notes 'git update-index --no-assume-unchanged'
        end
        entry do
            td_command 'gir'
            name 'Resets the current HEAD to the specified state'
            notes 'git reset'
        end
        entry do
            td_command 'giR'
            name 'Resets the current index interactively'
            notes 'git reset --patch'
        end
        entry do
            td_command 'gix'
            name 'Removes files/directories from the index (recursively)'
            notes 'git rm -r --cached'
        end
        entry do
            td_command 'giX'
            name 'Removes files/directories from the index (recursively and forced)'
            notes 'git rm -rf --cached'
        end
    end

    category do
        id 'Log (l)'

        entry do
            td_command 'gl'
            name 'Displays the log'
            notes 'git log --topo-order --pretty=format:"${_git_log_medium_format}"'
        end
        entry do
            td_command 'gls'
            name 'Displays the stats log'
            notes 'git log --topo-order --stat --pretty=format:"${_git_log_medium_format}"'
        end
        entry do
            td_command 'gld'
            name 'Displays the diff log'
            notes 'git log --topo-order --stat --patch --full-diff --pretty=format:"${_git_log_medium_format}"'
        end
        entry do
            td_command 'glo'
            name 'Displays the one line log'
            notes 'git log --topo-order --pretty=format:"${_git_log_oneline_format}"'
        end
        entry do
            td_command 'glg'
            name 'Displays the graph log'
            notes 'git log --topo-order --all --graph --pretty=format:"${_git_log_oneline_format}"'
        end
        entry do
            td_command 'glb'
            name 'Displays the brief commit log'
            notes 'git log --topo-order --pretty=format:"${_git_log_brief_format}"'
        end
        entry do
            td_command 'glc'
            name 'Displays the commit count for each contributor in descending order'
            notes 'git shortlog --summary --numbered'
        end
        entry do
            td_command 'glS'
            name 'Displays the log and checks the validity of signed commits'
            notes 'git log --show-signature'
        end
    end

    category do
        id 'Merge (m)'

        entry do
            td_command 'gm'
            name 'Joins two or more development histories together'
            notes 'git merge'
        end
        entry do
            td_command 'gmC'
            name 'Joins two or more development histories together but does not commit'
            notes 'git merge --no-commit'
        end
        entry do
            td_command 'gmF'
            name 'Joins two or more development histories together but does not commit generating a merge commit even if the merge resolved as a fast-forward'
            notes 'git merge --no-ff'
        end
        entry do
            td_command 'gma'
            name 'Aborts the conflict resolution, and reconstructs the pre-merge state'
            notes 'git merge --abort'
        end
        entry do
            td_command 'gmt'
            name 'Runs the merge conflict resolution tools to resolve conflicts'
            notes 'git mergetool'
        end
    end

    category do
        id 'Push (p)'

        entry do
            td_command 'gp'
            name 'Updates remote refs along with associated objects'
            notes 'git push'
        end
        entry do
            td_command 'gpf'
            name 'Forcefully updates remote refs along with associated objects using the safer "--force-with-lease" option'
            notes 'git push --force-with-lease'
        end
        entry do
            td_command 'gpF'
            name 'Forcefully updates remote refs along with associated objects using the riskier "--force" option'
            notes 'git push --force'
        end
        entry do
            td_command 'gpa'
            name 'Updates remote branches along with associated objects'
            notes 'git push --all'
        end
        entry do
            td_command 'gpA'
            name 'Updates remote branches and tags along with associated objects'
            notes 'git push --all && git push --tags'
        end
        entry do
            td_command 'gpt'
            name 'Updates remote tags along with associated objects'
            notes 'git push --tags'
        end
        entry do
            td_command 'gpc'
            name 'Updates remote refs along with associated objects and adds *origin* as an upstream reference for the current branch'
            notes 'git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'
        end
        entry do
            td_command 'gpp'
            name 'Pulls and pushes from origin to origin'
            notes 'git pull origin "$(git-branch-current 2> /dev/null)" && git push origin "$(git-branch-current 2> /dev/null)"'
        end
    end

    category do
        id 'Rebase (r)'

        entry do
            td_command 'gr'
            name 'Forward-ports local commits to the updated upstream head'
            notes 'git rebase'
        end
        entry do
            td_command 'gra'
            name 'Aborts the rebase'
            notes 'git rebase --abort'
        end
        entry do
            td_command 'grc'
            name 'Continues the rebase after merge conflicts are resolved'
            notes 'git rebase --continue'
        end
        entry do
            td_command 'gri'
            name 'Makes a list of commits to be rebased and opens the editor'
            notes 'git rebase --interactive'
        end
        entry do
            td_command 'grs'
            name 'Skips the current patch'
            notes 'git rebase --skip'
        end
    end

    category do
        id 'Remote (R)'

        entry do
            td_command 'gR'
            name 'Manages tracked repositories'
            notes 'git remote'
        end
        entry do
            td_command 'gRl'
            name 'Lists remote             names and their URLs'
            notes 'git remote --verbose'
        end
        entry do
            td_command 'gRa'
            name 'Adds a new remote'
            notes 'git remote add'
        end
        entry do
            td_command 'gRx'
            name 'Removes a remote'
            notes 'git remote rm'
        end
        entry do
            td_command 'gRm'
            name 'Renames a remote'
            notes 'git remote rename'
        end
        entry do
            td_command 'gRu'
            name 'Fetches remotes updates'
            notes 'git remote update'
        end
        entry do
            td_command 'gRp'
            name 'Prunes all stale remote tracking branches'
            notes 'git remote prune'
        end
        entry do
            td_command 'gRs'
            name 'Displays information about a given remote'
            notes 'git remote show'
        end
        entry do
            td_command 'gRb'
            name 'Opens a remote on [GitHub][3] in the default browser'
            notes 'git-hub-browse'
        end
    end

    category do
        id 'Stash (s)'

        entry do
            td_command 'gs'
            name 'Stashes the changes of the dirty working directory'
            notes 'git stash'
        end
        entry do
            td_command 'gsa'
            name 'Applies the changes recorded in a stash to the working directory'
            notes 'git stash apply'
        end
        entry do
            td_command 'gsx'
            name 'Drops a stashed state'
            notes 'git stash drop'
        end
        entry do
            td_command 'gsX'
            name 'Drops all the stashed states'
            notes 'git-stash-clear-interactive'
        end
        entry do
            td_command 'gsl'
            name 'Lists stashed states'
            notes 'git stash list'
        end
        entry do
            td_command 'gsL'
            name 'Lists dropped stashed states'
            notes 'git-stash-dropped'
        end
        entry do
            td_command 'gsd'
            name 'Displays changes between the stash and its original parent'
            notes 'git stash show --patch --stat'
        end
        entry do
            td_command 'gsp'
            name 'Removes and applies a single stashed state from the stash list'
            notes 'git stash pop'
        end
        entry do
            td_command 'gsr'
            name 'Recovers a given stashed state'
            notes 'git-stash-recover'
        end
        entry do
            td_command 'gss'
            name 'Stashes the changes of the dirty working directory, including untracked'
            notes 'git stash save --include-untracked'
        end
        entry do
            td_command 'gsS'
            name 'Stashes the changes of the dirty working directory interactively'
            notes 'git stash save --patch --no-keep-index'
        end
        entry do
            td_command 'gsw'
            name 'Stashes the changes of the dirty working directory retaining the index'
            notes 'git stash save --include-untracked --keep-index'
        end
    end

    category do
        id 'Submodule (S)'

        entry do
            td_command 'gS'
            name 'Initializes, updates, or inspects submodules'
            notes 'git submodule'
        end
        entry do
            td_command 'gSa'
            name 'Adds given a repository as a submodule'
            notes 'git submodule add'
        end
        entry do
            td_command 'gSf'
            name 'Evaluates a shell command in each of checked out submodules'
            notes 'git submodule foreach'
        end
        entry do
            td_command 'gSi'
            name 'Initializes submodules'
            notes 'git submodule init'
        end
        entry do
            td_command 'gSI'
            name 'Initializes and clones submodules recursively'
            notes 'git submodule update --init --recursive'
        end
        entry do
            td_command 'gSl'
            name 'Lists the commits of all submodules'
            notes 'git submodule status'
        end
        entry do
            td_command 'gSm'
            name 'Moves a submodule'
            notes 'git-submodule-move'
        end
        entry do
            td_command 'gSs'
            name 'Synchronizes submodules remote URL to the value specified in .gitmodules'
            notes 'git submodule sync'
        end
        entry do
            td_command 'gSu'
            name 'Fetches and merges the latest changes for all submodule'
            notes 'git submodule foreach git pull origin master'
        end
        entry do
            td_command 'gSx'
            name 'Removes a submodule'
            notes 'git-submodule-remove'
        end
    end

    category do
        id 'Tag (t)'

        entry do
            td_command 'gt'
            name 'Lists tags or creates tag'
            notes 'git tag'
        end
        entry do
            td_command 'gtl'
            name 'Lists tags matching pattern'
            notes 'git tag -l'
        end
        entry do
            td_command 'gts'
            name 'Creates a signed tag'
            notes 'git tag -s'
        end
        entry do
            td_command 'gtv'
            name 'Validate a signed tag'
            notes 'git verify-tag'
        end
    end

    category do
        id 'Working Directory (w)'

        entry do
            td_command 'gws'
            name 'Displays working-tree status in the short format'
            notes 'git status --ignore-submodules=${_git_status_ignore_submodules} --short'
        end
        entry do
            td_command 'gwS'
            name 'Displays working-tree status'
            notes 'git status --ignore-submodules=${_git_status_ignore_submodules}'
        end
        entry do
            td_command 'gwd'
            name 'Displays changes between the working tree and the index (diff)'
            notes 'git diff --no-ext-diff'
        end
        entry do
            td_command 'gwD'
            name 'Displays changes between the working tree and the index (word diff)'
            notes 'git diff --no-ext-diff --word-diff'
        end
        entry do
            td_command 'gwr'
            name 'Resets the current HEAD to the specified state, does not touch the index nor the working tree'
            notes 'git reset --soft'
        end
        entry do
            td_command 'gwR'
            name 'Resets the current HEAD, index and working tree to the specified state'
            notes 'git reset --hard'
        end
        entry do
            td_command 'gwc'
            name 'Removes untracked files from the working tree (dry-run)'
            notes 'git clean -n'
        end
        entry do
            td_command 'gwC'
            name 'Removes untracked files from the working tree'
            notes 'git clean -f'
        end
        entry do
            td_command 'gwx'
            name 'Removes files from the working tree and from the index recursively'
            notes 'git rm -r'
        end
        entry do
            td_command 'gwX'
            name 'Removes files from the working tree and from the index recursively and forcefully'
            notes 'git rm -rf'
        end
    end
end
