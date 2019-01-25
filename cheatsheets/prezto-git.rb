cheatsheet do
   title 'Prezto Git'
   docset_file_name 'PreztoGit'
   keyword 'g'
   introduction 'Cheat sheet for [prezto git module](https://github.com/sorin-ionescu/prezto/blob/master/modules/git/README.md)'
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
       white-space:nowrap;
       min-width:110px;
     }
     .no-min-width td, .no-min-width th {
       min-width:0;
     }
     td:last-child {
       width:99%;
     }
    '

    category do
        id 'Git'

        entry do
            command 'g'
            name  'is short for "git".'
        end
    end

    category do
        id 'Branch'

        entry do
            command 'gb'
            name  'lists, creates, renames, and deletes branches.'
         end
        entry do
            command 'gbc'
            name  'creates a new branch.'
        end
        entry do
            command 'gbl'
            name  'lists branches and their commits. (also "gbv")'
        end
        entry do
            command 'gbL'
            name  'lists all local and remote branches and their commits.'
        end
        entry do
            command 'gbr'
            name  'renames a branch. (also "gbm")'
        end
        entry do
            command 'gbR'
            name  'renames a branch even if the new branch name already exists. (also "gbM")'
        end
        entry do
            command 'gbs'
            name  'lists branches and their commits with ancestry graphs.'
        end
        entry do
            command 'gbS'
            name  'lists local and remote branches and their commits with ancestry graphs.'
        end
        entry do
            command 'gbV'
            name  'lists branches with more verbose information about their commits.'
        end
        entry do
            command 'gbx'
            name  'deletes a branch. (also "gbd")'
        end
        entry do
            command 'gbX'
            name  'deletes a branch irrespective of its merged status. (also "gbD")'
        end
    end

    category do
        id 'Commit'

        entry do
            command 'gc'
            name  'records changes to the repository.'
        end
        entry do
            command 'gca'
            name  'stages all modified and deleted files.'
        end
        entry do
            command 'gcm'
            name  'records changes to the repository with the given message.'
        end
        entry do
            command 'gcS'
            name  'records changes to the repository. (Signed)'
        end
        entry do
            command 'gcSa'
            name  'stages all modified and deleted files. (Signed)'
        end
        entry do
            command 'gcSm'
            name  'records changes to the repository with the given message. (Signed)'
        end
        entry do
            command 'gcam'
            name  'stages all modified and deleted files, and records changes to the repository with the given message.'
        end
        entry do
            command 'gco'
            name  'checks out a branch or paths to work tree.'
        end
        entry do
            command 'gcO'
            name  'checks out hunks from the index or the tree interactively.'
        end
        entry do
            command 'gcf'
            name  'amends the tip of the current branch using the same log message as *HEAD*.'
        end
        entry do
            command 'gcSf'
            name  'amends the tip of the current branch using the same log message as *HEAD*. (Signed)'
        end
        entry do
            command 'gcF'
            name  'amends the tip of the current branch.'
        end
        entry do
            command 'gcSF'
            name  'amends the tip of the current branch. (Signed)'
        end
        entry do
            command 'gcp'
            name  'applies changes introduced by existing commits.'
        end
        entry do
            command 'gcP'
            name  'applies changes introduced by existing commits without committing.'
        end
        entry do
            command 'gcr'
            name  'reverts existing commits by reverting patches and recording new commits.'
        end
        entry do
            command 'gcR'
            name  'removes the *HEAD* commit.'
        end
        entry do
            command 'gcs'
            name  'displays various types of objects.'
        end
        entry do
            command 'gcsS'
            name  'displays commits with GPG signature.'
        end
        entry do
            command 'gcl'
            name  'lists lost commits.'
        end
        entry do
            command 'gcy'
            name  'displays commits yet to be applied to upstream in the short format.'
        end
        entry do
            command 'gcY'
            name  'displays commits yet to be applied to upstream.'
        end
    end

    category do
        id 'Conflict'

        entry do
            command 'gCl'
            name  'lists unmerged files.'
        end
        entry do
            command 'gCa'
            name  'adds unmerged file contents to the index.'
        end
        entry do
            command 'gCe'
            name  'executes merge-tool on all unmerged file.'
        end
        entry do
            command 'gCo'
            name  'checks out our changes for unmerged paths.'
        end
        entry do
            command 'gCO'
            name  'checks out our changes for all unmerged paths.'
        end
        entry do
            command 'gCt'
            name  'checks out their changes for unmerged paths.'
        end
        entry do
            command 'gCT'
            name  'checks out their changes for all unmerged paths.'
        end
    end

    category do
        id 'Data'

        entry do
            command 'gd'
            name  'displays information about files in the index and the work tree.'
        end
        entry do
            command 'gdc'
            name  'lists cached files.'
        end
        entry do
            command 'gdx'
            name  'lists deleted files.'
        end
        entry do
            command 'gdm'
            name  'lists modified files.'
        end
        entry do
            command 'gdu'
            name  'lists untracked files.'
        end
        entry do
            command 'gdk'
            name  'lists killed files.'
        end
        entry do
            command 'gdi'
            name  'lists ignored files.'
        end
    end

    category do
        id 'Fetch'

        entry do
            command 'gf'
            name  'downloads objects and references from another repository.'
        end
        entry do
            command 'gfa'
            name  'downloads objects and references from all remote repositories.'
        end
        entry do
            command 'gfc'
            name  'clones a repository into a new directory.'
        end
        entry do
            command 'gfcr'
            name  'clones a repository into a new directory including all submodules.'
        end
        entry do
            command 'gfm'
            name  'fetches from and merges with another repository or local branch.'
        end
        entry do
            command 'gfr'
            name  'fetches from and rebases on another repository or local branch.'
        end
    end

    category do
        id 'Flow'

        entry do
            command 'gFi'
            name  'is short for "git flow init"'
        end
    end

    category do
        id 'Feature'

        entry do
            command 'gFf'
            name  'is short for "git flow feature"'
        end
        entry do
            command 'gFfl'
            name  'is short for "git flow feature list"'
        end
        entry do
            command 'gFfs'
            name  'is short for "git flow feature start"'
        end
        entry do
            command 'gFff'
            name  'is short for "git flow feature finish"'
        end
        entry do
            command 'gFfp'
            name  'is short for "git flow feature publish"'
        end
        entry do
            command 'gFft'
            name  'is short for "git flow feature track"'
        end
        entry do
            command 'gFfd'
            name  'is short for "git flow feature diff"'
        end
        entry do
            command 'gFfr'
            name  'is short for "git flow feature rebase"'
        end
        entry do
            command 'gFfc'
            name  'is short for "git flow feature checkout"'
        end
        entry do
            command 'gFfm'
            name  'is short for "git flow feature pull"'
        end
        entry do
            command 'gFfx'
            name  'is short for "git flow feature delete"'
        end
    end

    category do
        id 'Bugfix'

        entry do
            command 'gFb'
            name  'is short for "git flow bugfix"'
        end
        entry do
            command 'gFbl'
            name  'is short for "git flow bugfix list"'
        end
        entry do
            command 'gFbs'
            name  'is short for "git flow bugfix start"'
        end
        entry do
            command 'gFbf'
            name  'is short for "git flow bugfix finish"'
        end
        entry do
            command 'gFbp'
            name  'is short for "git flow bugfix publish"'
        end
        entry do
            command 'gFbt'
            name  'is short for "git flow bugfix track"'
        end
        entry do
            command 'gFbd'
            name  'is short for "git flow bugfix diff"'
        end
        entry do
            command 'gFbr'
            name  'is short for "git flow bugfix rebase"'
        end
        entry do
            command 'gFbc'
            name  'is short for "git flow bugfix checkout"'
        end
        entry do
            command 'gFbm'
            name  'is short for "git flow bugfix pull"'
        end
        entry do
            command 'gFbx'
            name  'is short for "git flow bugfix delete"'
        end
    end

    category do
        id 'Release'

        entry do
            command 'gFl'
            name  'is short for "git flow release"'
        end
        entry do
            command 'gFll'
            name  'is short for "git flow release list"'
        end
        entry do
            command 'gFls'
            name  'is short for "git flow release start"'
        end
        entry do
            command 'gFlf'
            name  'is short for "git flow release finish"'
        end
        entry do
            command 'gFlp'
            name  'is short for "git flow release publish"'
        end
        entry do
            command 'gFlt'
            name  'is short for "git flow release track"'
        end
        entry do
            command 'gFld'
            name  'is short for "git flow release diff"'
        end
        entry do
            command 'gFlr'
            name  'is short for "git flow release rebase"'
        end
        entry do
            command 'gFlc'
            name  'is short for "git flow release checkout"'
        end
        entry do
            command 'gFlm'
            name  'is short for "git flow release pull"'
        end
        entry do
            command 'gFlx'
            name  'is short for "git flow release delete"'
        end
    end

    category do
        id 'Hotfix'

        entry do
            command 'gFh'
            name  'is short for "git flow hotfix"'
        end
        entry do
            command 'gFhl'
            name  'is short for "git flow hotfix list"'
        end
        entry do
            command 'gFhs'
            name  'is short for "git flow hotfix start"'
        end
        entry do
            command 'gFhf'
            name  'is short for "git flow hotfix finish"'
        end
        entry do
            command 'gFhp'
            name  'is short for "git flow hotfix publish"'
        end
        entry do
            command 'gFht'
            name  'is short for "git flow hotfix track"'
        end
        entry do
            command 'gFhd'
            name  'is short for "git flow hotfix diff"'
        end
        entry do
            command 'gFhr'
            name  'is short for "git flow hotfix rebase"'
        end
        entry do
            command 'gFhc'
            name  'is short for "git flow hotfix checkout"'
        end
        entry do
            command 'gFhm'
            name  'is short for "git flow hotfix pull"'
        end
        entry do
            command 'gFhx'
            name  'is short for "git flow hotfix delete"'
        end
    end

    category do
        id 'Support'

        entry do
            command 'gFs'
            name  'is short for "git flow support"'
        end
        entry do
            command 'gFsl'
            name  'is short for "git flow support list"'
        end
        entry do
            command 'gFss'
            name  'is short for "git flow support start"'
        end
        entry do
            command 'gFsf'
            name  'is short for "git flow support finish"'
        end
        entry do
            command 'gFsp'
            name  'is short for "git flow support publish"'
        end
        entry do
            command 'gFst'
            name  'is short for "git flow support track"'
        end
        entry do
            command 'gFsd'
            name  'is short for "git flow support diff"'
        end
        entry do
            command 'gFsr'
            name  'is short for "git flow support rebase"'
        end
        entry do
            command 'gFsc'
            name  'is short for "git flow support checkout"'
        end
        entry do
            command 'gFsm'
            name  'is short for "git flow support pull"'
        end
        entry do
            command 'gFsx'
                    name  'is short for "git flow support delete"'
        end
    end

    category do
        id 'Grep'

        entry do
            command 'gg'
            name  'displays lines matching a pattern.'
        end
        entry do
            command 'ggi'
            name  'displays lines matching a pattern ignoring case.'
        end
        entry do
            command 'ggl'
            name  'lists files matching a pattern.'
        end
        entry do
            command 'ggL'
            name  'lists files that are not matching a pattern.'
        end
        entry do
            command 'ggv'
            name  'displays lines not matching a pattern.'
        end
        entry do
            command 'ggw'
            name  'displays lines matching a pattern at word boundary.'
        end
    end

    category do
        id 'Index'

        entry do
            command 'gia'
            name  'adds file contents to the index.'
        end
        entry do
            command 'giA'
            name  'adds file contents to the index interactively.'
        end
        entry do
            command 'giu'
            name  'adds file contents to the index (updates only known files).'
        end
        entry do
            command 'gid'
            name  'displays changes between the index and a named commit (diff).'
        end
        entry do
            command 'giD'
            name  'displays changes between the index and a named commit (word diff).'
        end
        entry do
            command 'gii'
            name  'temporarily ignore differences in a given file.'
        end
        entry do
            command 'giI'
            name  'unignore differences in a given file.'
        end
        entry do
            command 'gir'
            name  'resets the current HEAD to the specified state.'
        end
        entry do
            command 'giR'
            name  'resets the current index interactively.'
        end
        entry do
            command 'gix'
            name  'removes files/directories from the index (recursively).'
        end
        entry do
            command 'giX'
            name  'removes files/directories from the index (recursively and forced).'
        end
    end

    category do
        id 'Log'

        entry do
            command 'gl'
            name  'displays the log.'
        end
        entry do
            command 'gls'
            name  'displays the stats log.'
        end
        entry do
            command 'gld'
            name  'displays the diff log.'
        end
        entry do
            command 'glo'
            name  'displays the one line log.'
        end
        entry do
            command 'glg'
            name  'displays the graph log.'
        end
        entry do
            command 'glb'
            name  'displays the brief commit log.'
        end
        entry do
            command 'glc'
            name  'displays the commit count for each contributor in descending order.'
        end
        entry do
            command 'glS'
            name  'displays the log and checks the validity of signed commits.'
        end
    end

    category do
        id 'Merge'

        entry do
            command 'gm'
            name  'joins two or more development histories together.'
        end
        entry do
            command 'gmC'
            name  'joins two or more development histories together but does not commit.'
        end
        entry do
            command 'gmF'
            name  'joins two or more development histories together but does not commit generating a merge commit even if the merge resolved as a fast-forward.'
        end
        entry do
            command 'gma'
            name  'aborts the conflict resolution, and reconstructs the pre-merge state.'
        end
        entry do
            command 'gmt'
            name  'runs the merge conflict resolution tools to resolve conflicts.'
        end
    end

    category do
        id 'Push'

        entry do
            command 'gp'
            name  'updates remote refs along with associated objects.'
        end
        entry do
            command 'gpf'
            name  'forcefully updates remote refs along with associated objects using the safer "--force-with-lease" option.'
        end
        entry do
            command 'gpF'
            name  'forcefully updates remote refs along with associated objects using the riskier "--force" option.'
        end
        entry do
            command 'gpa'
            name  'updates remote branches along with associated objects.'
        end
        entry do
            command 'gpA'
            name  'updates remote branches and tags along with associated objects.'
        end
        entry do
            command 'gpt'
            name  'updates remote tags along with associated objects.'
        end
        entry do
            command 'gpc'
            name  'updates remote refs along with associated objects and adds *origin* as an upstream reference for the current branch.'
        end
        entry do
            command 'gpp'
            name  'pulls and pushes from origin to origin.'
        end
    end

    category do
        id 'Rebase'

        entry do
            command 'gr'
            name  'forward-ports local commits to the updated upstream head.'
        end
        entry do
            command 'gra'
            name  'aborts the rebase.'
        end
        entry do
            command 'grc'
            name  'continues the rebase after merge conflicts are resolved.'
        end
        entry do
            command 'gri'
            name  'makes a list of commits to be rebased and opens the editor.'
        end
        entry do
            command 'grs'
            name  'skips the current patch.'
        end
    end

    category do
        id 'Remote'

        entry do
            command 'gR'
            name  'manages tracked repositories.'
        end
        entry do
            command 'gRl'
            name  'lists remote             names and their URLs.'
        end
        entry do
            command 'gRa'
            name  'adds a new remote.'
        end
        entry do
            command 'gRx'
            name  'removes a remote.'
        end
        entry do
            command 'gRm'
            name  're           names a remote.'
        end
        entry do
            command 'gRu'
            name  'fetches remotes updates.'
        end
        entry do
            command 'gRp'
            name  'prunes all stale remote tracking branches.'
        end
        entry do
            command 'gRs'
            name  'displays information about a given remote.'
        end
        entry do
            command 'gRb'
            name  'opens a remote on [GitHub][3] in the default browser.'
        end
    end

    category do
        id 'Stash'

        entry do
            command 'gs'
            name  'stashes the changes of the dirty working directory.'
        end
        entry do
            command 'gsa'
            name  'applies the changes recorded in a stash to the working directory.'
        end
        entry do
            command 'gsx'
            name  'drops a stashed state.'
        end
        entry do
            command 'gsX'
            name  'drops all the stashed states.'
        end
        entry do
            command 'gsl'
            name  'lists stashed states.'
        end
        entry do
            command 'gsL'
            name  'lists dropped stashed states.'
        end
        entry do
            command 'gsd'
            name  'displays changes between the stash and its original parent.'
        end
        entry do
            command 'gsp'
            name  'removes and applies a single stashed state from the stash list.'
        end
        entry do
            command 'gsr'
            name  'recovers a given stashed state.'
        end
        entry do
            command 'gss'
            name  'stashes the changes of the dirty working directory, including untracked.'
        end
        entry do
            command 'gsS'
            name  'stashes the changes of the dirty working directory interactively.'
        end
        entry do
            command 'gsw'
            name  'stashes the changes of the dirty working directory retaining the index.'
        end
    end

    category do
        id 'Submodule'

        entry do
            command 'gS'
            name  'initializes, updates, or inspects submodules.'
        end
        entry do
            command 'gSa'
            name  'adds given a repository as a submodule.'
        end
        entry do
            command 'gSf'
            name  'evaluates a shell command in each of checked out submodules.'
        end
        entry do
            command 'gSi'
            name  'initializes submodules.'
        end
        entry do
            command 'gSI'
            name  'initializes and clones submodules recursively.'
        end
        entry do
            command 'gSl'
            name  'lists the commits of all submodules.'
        end
        entry do
            command 'gSm'
            name  'moves a submodule.'
        end
        entry do
            command 'gSs'
            name  'synchronizes submodules remote URL to the value specified in .gitmodules.'
        end
        entry do
            command 'gSu'
            name  'fetches and merges the latest changes for all submodule.'
        end
        entry do
            command 'gSx'
            name  'removes a submodule.'
        end
    end

    category do
        id 'Tag'

        entry do
            command 'gt'
            name  'lists tags or creates tag.'
        end
        entry do
            command 'gtl'
            name  'lists tags matching pattern.'
        end
        entry do
            command 'gts'
            name  'creates a signed tag.'
        end
        entry do
            command 'gtv'
            name  'validate a signed tag.'
        end
    end

    category do
        id 'Working directory'

        entry do
            command 'gws'
            name  'displays working-tree status in the short format.'
        end
        entry do
            command 'gwS'
            name  'displays working-tree status.'
        end
        entry do
            command 'gwd'
            name  'displays changes between the working tree and the index (diff).'
        end
        entry do
            command 'gwD'
            name  'displays changes between the working tree and the index (word diff).'
        end
        entry do
            command 'gwr'
            name  'resets the current HEAD to the specified state, does not touch the index nor the working tree.'
        end
        entry do
            command 'gwR'
            name  'resets the current HEAD, index and working tree to the specified state.'
        end
        entry do
            command 'gwc'
            name  'removes untracked files from the working tree (dry-run).'
        end
        entry do
            command 'gwC'
            name  'removes untracked files from the working tree.'
        end
        entry do
            command 'gwx'
            name  'removes files from the working tree and from the index recursively.'
        end
        entry do
            command 'gwX'
            name  'removes files from the working tree and from the index recursively and forcefully.'
        end
    end
end
