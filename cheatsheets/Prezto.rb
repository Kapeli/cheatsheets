cheatsheet do
  title 'Prezto'
  docset_file_name 'Prezto'
  keyword 'prezto'

  introduction 'A cheatsheet for all of the Prezto plugins'

  category do
    id 'Archive'

    entry do
      command 'extract'
      notes 'Extracts the contents of one or more archives'
    end

    entry do
      command 'ls-archive'
      notes 'Lists the contents of one or more archives.'
    end
  end

  category do
    id 'Directory'

    entry do
      command 'd'
      notes 'Prints the contents of the directory stack.'
    end

    entry do
      command '1 ... 9'
      notes 'Changes the directory to the **n** previous one.'
    end
  end

  category do
    id 'Dpkg'

    entry do
      command 'debc'
      notes 'Cleans the cache.'
    end

    entry do
      command 'debf'
      notes 'Displays a file\'s package.'
    end

    entry do
      command 'debi'
      notes 'Installs packages from repositories.'
    end

    entry do
      command 'debI'
      notes 'Installs packages from files.'
    end

    entry do
      command 'debq'
      notes 'Displays package information.'
    end

    entry do
      command 'debu'
      notes 'Updates the package lists.'
    end

    entry do
      command 'debU'
      notes 'Upgrades outdated packages.'
    end

    entry do
      command 'debx'
      notes 'Removes packages.'
    end

    entry do
      command 'debX'
      notes 'Removes packages, their configurations and unneeded dependencies.'
    end

    entry do
      command 'debs'
      notes 'Searches for packages.'
    end

    entry do
      command 'deb-build'
      notes 'Creates a basic deb package.'
    end

    entry do
      command 'deb-kclean'
      notes 'Removes all kernel images and headers, except for the ones in use.'
    end

    entry do
      command 'deb-clone'
      notes 'Generates a script that can be used to duplicate a dpkg-based system.'
    end

    entry do
      command 'deb-history'
      notes 'Displays dpkg history.'
    end

    entry do
      command 'deb-kbuild'
      notes 'Makes a dpkg Linux kernel package.'
    end
  end

  category do
    id 'Emacs'

    entry do
      command 'cai'
      notes 'Installs dependencies.'
    end

    entry do
      command 'cau'
      notes 'Updates dependencies.'
    end

    entry do
      command 'caI'
      notes 'Initializes the current directory for dependency management.'
    end

    entry do
      command 'cae'
      notes 'Executes a command which correct dependencies.'
    end
  end

  category do
    id 'Fasd'

    entry do
      command 'j'
      notes 'Changes the current working directory interactively.'
    end
  end

  category do
    id 'Git'

    entry do
      command 'gg'
      notes 'Is short for `git`.'
    end

    entry do
      command 'gb'
      notes 'Lists, creates, renames, and deletes branches.'
    end

    entry do
      command 'gbc'
      notes 'Creates a new branch.'
    end

    entry do
      command 'gbl'
      notes 'Lists branches and their commits.'
    end

    entry do
      command 'gbL'
      notes 'Lists local and remote branches and their commits.'
    end

    entry do
      command 'gbs'
      notes 'Lists branches and their commits with ancestry graphs.'
    end

    entry do
      command 'gbS'
      notes 'Lists local and remote branches and their commits with ancestry graphs.'
    end

    entry do
      command 'gbx'
      notes 'Deletes a branch.'
    end

    entry do
      command 'gbX'
      notes 'Deletes a branch irrespective of its merged status.'
    end

    entry do
      command 'gbm'
      notes 'Renames a branch.'
    end

    entry do
      command 'gbM'
      notes 'Renames a branch even if the new branch name already exists.'
    end

    entry do
      command 'gc'
      notes 'Records changes to the repository.'
    end

    entry do
      command 'gca'
      notes 'Stages all modified and deleted files.'
    end

    entry do
      command 'gcm'
      notes 'Records changes to the repository with the given message.'
    end

    entry do
      command 'gco'
      notes 'Checks out a branch or paths to work tree.'
    end

    entry do
      command 'gcO'
      notes 'Checks out hunks from the index or the tree interactively.'
    end

    entry do
      command 'gcf'
      notes 'Amends the tip of the current branch using the same log message as *HEAD*.'
    end

    entry do
      command 'gcF'
      notes 'Amends the tip of the current branch.'
    end

    entry do
      command 'gcp'
      notes 'Applies changes introduced by existing commits.'
    end

    entry do
      command 'gcP'
      notes 'Applies changes introduced by existing commits without committing.'
    end

    entry do
      command 'gcr'
      notes 'Reverts existing commits by reverting patches and recording new commits.'
    end

    entry do
      command 'gcR'
      notes 'Removes the *HEAD* commit.'
    end

    entry do
      command 'gcs'
      notes 'Displays various types of objects.'
    end

    entry do
      command 'gcl'
      notes 'Lists lost commits.'
    end

    entry do
      command 'gCl'
      notes 'Lists unmerged files.'
    end

    entry do
      command 'gCa'
      notes 'Adds unmerged file contents to the index.'
    end

    entry do
      command 'gCe'
      notes 'Executes merge-tool on all unmerged file.'
    end

    entry do
      command 'gCo'
      notes 'Checks out our changes for unmerged paths.'
    end

    entry do
      command 'gCO'
      notes 'Checks out our changes for all unmerged paths.'
    end

    entry do
      command 'gCt'
      notes 'Checks out their changes for unmerged paths.'
    end

    entry do
      command 'gCT'
      notes 'Checks out their changes for all unmerged paths.'
    end

    entry do
      command 'gd'
      notes 'Displays information about files in the index and the work tree.'
    end

    entry do
      command 'gdc'
      notes 'Lists cached files.'
    end

    entry do
      command 'gdx'
      notes 'Lists deleted files.'
    end

    entry do
      command 'gdm'
      notes 'Lists modified files.'
    end

    entry do
      command 'gdu'
      notes 'Lists untracked files.'
    end

    entry do
      command 'gdk'
      notes 'Lists killed files.'
    end

    entry do
      command 'gdi'
      notes 'Lists ignored files.'
    end

    entry do
      command 'gf'
      notes 'Downloads objects and references from another repository.'
    end

    entry do
      command 'gfc'
      notes 'Clones a repository into a new directory.'
    end

    entry do
      command 'gfm'
      notes 'Fetches from and merges with another repository or local branch.'
    end

    entry do
      command 'gfr'
      notes 'Fetches from and rebases on another repository or local branch.'
    end

    entry do
      command 'gg'
      notes 'Displays lines matching a pattern.'
    end

    entry do
      command 'ggi'
      notes 'Displays lines matching a pattern ignoring case.'
    end

    entry do
      command 'ggl'
      notes 'Lists files matching a pattern.'
    end

    entry do
      command 'ggL'
      notes 'Lists files that are not matching a pattern.'
    end

    entry do
      command 'ggv'
      notes 'Displays lines not matching a pattern.'
    end

    entry do
      command 'ggw'
      notes 'Displays lines matching a pattern at word boundary.'
    end

    entry do
      command 'gia'
      notes 'Adds file contents to the index.'
    end

    entry do
      command 'giA'
      notes 'Adds file contents to the index interactively.'
    end

    entry do
      command 'giu'
      notes 'Adds file contents to the index (updates only known files).'
    end

    entry do
      command 'gid'
      notes 'Displays changes between the index and a named commit (diff).'
    end

    entry do
      command 'giD'
      notes 'Displays changes between the index and a named commit (word diff).'
    end

    entry do
      command 'gir'
      notes 'Resets the current HEAD to the specified state.'
    end

    entry do
      command 'giR'
      notes 'Resets the current index interactively.'
    end

    entry do
      command 'gix'
      notes 'Removes files/directories from the index (recursively).'
    end

    entry do
      command 'giX'
      notes 'Removes files/directories from the index (recursively and forced).'
    end

    entry do
      command 'gl'
      notes 'Displays the log.'
    end

    entry do
      command 'gls'
      notes 'Displays the stats log.'
    end

    entry do
      command 'gld'
      notes 'Displays the diff log.'
    end

    entry do
      command 'glo'
      notes 'Displays the one line log.'
    end

    entry do
      command 'glg'
      notes 'Displays the graph log.'
    end

    entry do
      command 'glb'
      notes 'Displays the brief commit log.'
    end

    entry do
      command 'glc'
      notes 'Displays the commit count for each contributor in descending order.'
    end

    entry do
      command 'gm'
      notes 'Joins two or more development histories together.'
    end

    entry do
      command 'gmC'
      notes 'Joins two or more development histories together but does not commit.'
    end

    entry do
      command 'gmF'
      notes 'Joins two or more development histories together but does not commit generating a merge commit even if the merge resolved as a fast-forward.'
    end

    entry do
      command 'gma'
      notes 'Aborts the conflict resolution, and reconstructs the pre-merge state.'
    end

    entry do
      command 'gmt'
      notes 'Runs the merge conflict resolution tools to resolve conflicts.'
    end

    entry do
      command 'gp'
      notes 'Updates remote refs along with associated objects.'
    end

    entry do
      command 'gpf'
      notes 'Forcefully updates remote refs along with associated objects.'
    end

    entry do
      command 'gpa'
      notes 'Updates remote branches along with associated objects.'
    end

    entry do
      command 'gpA'
      notes 'Updates remote branches and tags along with associated objects.'
    end

    entry do
      command 'gpt'
      notes 'Updates remote tags along with associated objects.'
    end

    entry do
      command 'gpc'
      notes 'Updates remote refs along with associated objects and adds origin as an upstream reference for the current branch.'
    end

    entry do
      command 'gpp'
      notes 'Pulls and pushes from origin to origin.'
    end

    entry do
      command 'gr'
      notes 'Forward-ports local commits to the updated upstream head.'
    end

    entry do
      command 'gra'
      notes 'Aborts the rebase.'
    end

    entry do
      command 'grc'
      notes 'Continues the rebase after merge conflicts are resolved.'
    end

    entry do
      command 'gri'
      notes 'Makes a list of commits to be rebased and opens the editor.'
    end

    entry do
      command 'grs'
      notes 'Skips the current patch.'
    end

    entry do
      command 'gR'
      notes 'Manages tracked repositories.'
    end

    entry do
      command 'gRl'
      notes 'Lists remote names and their URLs.'
    end

    entry do
      command 'gRa'
      notes 'Adds a new remote.'
    end

    entry do
      command 'gRx'
      notes 'Removes a remote.'
    end

    entry do
      command 'gRm'
      notes 'Renames a remote.'
    end

    entry do
      command 'gRu'
      notes 'Fetches remotes updates.'
    end

    entry do
      command 'gRp'
      notes 'Prunes all stale remote tracking branches.'
    end

    entry do
      command 'gRs'
      notes 'Displays information about a given remote.'
    end

    entry do
      command 'gRb'
      notes 'Opens a remote on GitHub in the default browser.'
    end

    entry do
      command 'gs'
      notes 'Stashes the changes of the dirty working directory.'
    end

    entry do
      command 'gsa'
      notes 'Applies the changes recorded in a stash to the working directory.'
    end

    entry do
      command 'gsx'
      notes 'Drops a stashed state.'
    end

    entry do
      command 'gsX'
      notes 'Drops all the stashed states.'
    end

    entry do
      command 'gsl'
      notes 'Lists stashed states.'
    end

    entry do
      command 'gsL'
      notes 'Lists dropped stashed states.'
    end

    entry do
      command 'gsd'
      notes 'Displays changes between the stash and its original parent.'
    end

    entry do
      command 'gsp'
      notes 'Removes and applies a single stashed state from the stash list.'
    end

    entry do
      command 'gsr'
      notes 'Recovers a given stashed state.'
    end

    entry do
      command 'gss'
      notes 'Stashes the changes of the dirty working directory, including untracked.'
    end

    entry do
      command 'gsS'
      notes 'Stashes the changes of the dirty working directory interactively.'
    end

    entry do
      command 'gsw'
      notes 'Stashes the changes of the dirty working directory retaining the index.'
    end

    entry do
      command 'gS'
      notes 'Initializes, updates, or inspects submodules.'
    end

    entry do
      command 'gSa'
      notes 'Adds given a repository as a submodule.'
    end

    entry do
      command 'gSf'
      notes 'Evaluates a shell command in each of checked out submodules.'
    end

    entry do
      command 'gSi'
      notes 'Initializes submodules.'
    end

    entry do
      command 'gSI'
      notes 'Initializes and clones submodules recursively.'
    end

    entry do
      command 'gSl'
      notes 'Lists the commits of all submodules.'
    end

    entry do
      command 'gSm'
      notes 'Moves a submodule.'
    end

    entry do
      command 'gSs'
      notes 'Synchronizes submodules\' remote URL to the value specified in .gitmodules.'
    end

    entry do
      command 'gSu'
      notes 'Fetches and merges the latest changes for all submodule.'
    end

    entry do
      command 'gSx'
      notes 'Removes a submodule.'
    end

    entry do
      command 'gws'
      notes 'Displays working-tree status in the short format.'
    end

    entry do
      command 'gwS'
      notes 'Displays working-tree status.'
    end

    entry do
      command 'gwd'
      notes 'Displays changes between the working tree and the index (diff).'
    end

    entry do
      command 'gwD'
      notes 'Displays changes between the working tree and the index (word diff).'
    end

    entry do
      command 'gwr'
      notes 'Resets the current HEAD to the specified state, does not touch the index nor the working tree.'
    end

    entry do
      command 'gwR'
      notes 'Resets the current HEAD, index and working tree to the specified state.'
    end

    entry do
      command 'gwc'
      notes 'Removes untracked files from the working tree (dry-run).'
    end

    entry do
      command 'gwC'
      notes 'Removes untracked files from the working tree.'
    end

    entry do
      command 'gwx'
      notes 'Removes files from the working tree and from the index recursively.'
    end

    entry do
      command 'gwX'
      notes 'Removes files from the working tree and from the index recursively and forcefully.'
    end

    entry do
      command 'gpt'
      notes 'Shadows the GUID partition table maintenance utility.'
    end

    entry do
      command 'gs'
      notes 'Shadows the Ghostscript.'
    end

    entry do
      command 'git-branch-current'
      notes 'Displays the current branch.'
    end

    entry do
      command 'git-commit-lost'
      notes 'Lists lost commits.'
    end

    entry do
      command 'git-dir'
      notes 'Displays the path to the Git directory.'
    end

    entry do
      command 'git-hub-browse'
      notes 'Opens the GitHub repository in the default browser.'
    end

    entry do
      command 'git-hub-shorten-url'
      notes 'Shortens GitHub URLs.'
    end

    entry do
      command 'git-info'
      notes 'Exposes repository information via the `$git_info` associative array.'
    end

    entry do
      command 'git-root'
      notes 'Displays the path to the working tree root.'
    end

    entry do
      command 'git-stash-clear-interactive'
      notes 'Asks for confirmation before clearing the stash.'
    end

    entry do
      command 'git-stash-dropped'
      notes 'Lists dropped stashed states.'
    end

    entry do
      command 'git-stash-recover'
      notes 'Recovers given dropped stashed states.'
    end

    entry do
      command 'git-submodule-move'
      notes 'Moves a submodule.'
    end

    entry do
      command 'git-submodule-remove'
      notes 'Removes a submodule.'
    end
  end

  category do
    id 'History'

    entry do
      command 'history-stat'
      notes 'Lists the ten most used commands.'
    end
  end

  category do
    id 'Homebrew'

    entry do
      command 'brewc'
      notes 'Cleans outdated brews and their cached archives.'
    end

    entry do
      command 'brewC'
      notes 'Cleans outdated brews, including keg-only, and their cached archives.'
    end

    entry do
      command 'brewi'
      notes 'Installs a formula.'
    end

    entry do
      command 'brewl'
      notes 'Lists installed formulae.'
    end

    entry do
      command 'brews'
      notes 'Searches for a formula.'
    end

    entry do
      command 'brewU'
      notes 'Upgrades Homebrew and outdated brews.'
    end

    entry do
      command 'brewu'
      notes 'Upgrades Homebrew.'
    end

    entry do
      command 'brewx'
      notes 'Uninstalls a formula.'
    end
  end

  category do
    id 'Homebrew Cask'

    entry do
      command 'cask'
      notes 'Is aliased to brew cask.'
    end

    entry do
      command 'caskc'
      notes 'Cleans up old cached downloads.'
    end

    entry do
      command 'caskC'
      notes 'Cleans up all cached downloads.'
    end

    entry do
      command 'caski'
      notes 'Installs a cask.'
    end

    entry do
      command 'caskl'
      notes 'Lists installed casks.'
    end

    entry do
      command 'casks'
      notes 'Searches for a cask.'
    end

    entry do
      command 'caskx'
      notes 'Uninstalls a cask.'
    end
  end

  category do
    id 'Macports'

    entry do
      command 'portc'
      notes 'Cleans the files used to build ports.'
    end

    entry do
      command 'porti'
      notes 'Installs a port.'
    end

    entry do
      command 'ports'
      notes 'Searches for a port.'
    end

    entry do
      command 'portu'
      notes 'Upgrades a port.'
    end

    entry do
      command 'portU'
      notes 'Upgrades MacPorts, the ports collection, and outdated ports.'
    end

    entry do
      command 'portx'
      notes 'Uninstalls a port.'
    end

    entry do
      command 'portX'
      notes 'Uninstalls inactive ports.'
    end
  end

  category do
    id 'Node.js'

    entry do
      command 'node-doc'
      notes 'Opens the Node.js online API documentation in the default browser.'
    end

    entry do
      command 'node-info'
      notes 'Exposes information about the Node.js environment via the $node_info associative array.'
    end
  end

  category do
    id 'OSX'

    entry do
      command 'cdf'
      notes 'Changes the current working director to the current Finder directory.'
    end

    entry do
      command 'pushdf'
      notes 'Pushes the current working directory onto the directory queue and changes the current working director to the current Finder directory.'
    end

    entry do
      command 'mand'
      notes 'Opens man pages in Dash.app.'
    end

    entry do
      command 'manp'
      notes 'Opens man pages in Preview.app.'
    end

    entry do
      command 'pfd'
      notes 'Prints the current Finder directory.'
    end

    entry do
      command 'pfs'
      notes 'Prints the current Finder selection.'
    end

    entry do
      command 'tab'
      notes 'Creates a new tab (works in both Terminal and iTerm).'
    end

    entry do
      command 'ql'
      notes 'Previews files in Quick Look.'
    end

    entry do
      command 'osx-rm-dir-metadata'
      notes 'Deletes .DS_Store, __MACOSX cruft.'
    end

    entry do
      command 'osx-ls-download-history'
      notes 'Displays the Mac OS X download history.'
    end

    entry do
      command 'osx-rm-download-history'
      notes 'Deletes the Mac OS X download history.'
    end
  end

  category do
    id 'Pacman'

    entry do
      command 'pac'
      notes 'Is short for pacman.'
    end

    entry do
      command 'paci'
      notes 'Installs packages from repositories.'
    end

    entry do
      command 'pacI'
      notes 'Installs packages from files.'
    end

    entry do
      command 'pacx'
      notes 'Removes packages and unneeded dependencies.'
    end

    entry do
      command 'pacX'
      notes 'Removes packages, their configuration, and unneeded dependencies.'
    end

    entry do
      command 'pacq'
      notes 'Displays information about a package from the repositories.'
    end

    entry do
      command 'pacQ'
      notes 'Displays information about a package from the local database.'
    end

    entry do
      command 'pacs'
      notes 'Searches for packages in the repositories.'
    end

    entry do
      command 'pacS'
      notes 'Searches for packages in the local database.'
    end

    entry do
      command 'pacuabs'
      notes 'Synchronizes the local package and Arch Build System (requires abs) databases against the repositories.'
    end

    entry do
      command 'pacU'
      notes 'Synchronizes the local package database against the repositories then upgrades outdated packages.'
    end

    entry do
      command 'pacman-list-orphans'
      notes 'Lists orphan packages.'
    end

    entry do
      command 'pacman-remove-orphans'
      notes 'Removes orphan packages.'
    end

    entry do
      command 'pacc'
      notes 'Manages .pac* files.'
    end

    entry do
      command 'pacman-list-explicit'
      notes 'Lists explicitly installed pacman packages.'
    end

    entry do
      command 'pacman-list-disowned'
      notes 'Lists pacman disowned files.'
    end
  end

  category do
    id 'Perl'

    entry do
      command 'pl'
      notes 'Is short for `perl`.'
    end

    entry do
      command 'pldperldoc'
      notes 'Looks up Perl documentation (`perldoc`).'
    end

    entry do
      command 'pleperl -wlne'
      notes 'Executes a one line program in a loop (`perl -wlne`).'
    end

    entry do
      command 'plb'
      notes 'Manages Perl environments.'
    end

    entry do
      command 'plba'
      notes 'Lists available Perl versions.'
    end

    entry do
      command 'plbi'
      notes 'Installs a Perl version.'
    end

    entry do
      command 'plbl'
      notes 'Lists installed Perl versions.'
    end

    entry do
      command 'plbo'
      notes 'Temporarily turns off Perlbrew.'
    end

    entry do
      command 'plbO'
      notes 'Turns off Perlbrew.'
    end

    entry do
      command 'plbs'
      notes 'Switches to a Perl version.'
    end

    entry do
      command 'plbu'
      notes 'Uninstalls a Perl version.'
    end

    entry do
      command 'plbx'
      notes 'Temporarily sets the Perl version to use.'
    end
  end

  category do
    id 'Python'

    entry do
      command 'py'
      notes 'Is short for `python`.'
    end

    entry do
      command 'python-info'
      notes 'Exposes information about the Python environment via the `$python_info` associative array.'
    end
  end

  category do
    id 'Ruby on Rails'

    entry do
      command 'ror'
      notes 'Is short for `rails`.'
    end

    entry do
      command 'rorc'
      notes 'Starts the Rails console.'
    end

    entry do
      command 'rordc'
      notes 'Starts the Rails console connected to the database.'
    end

    entry do
      command 'rordm'
      notes 'Migrates the database.'
    end

    entry do
      command 'rordM'
      notes 'Migrates the database and recreates the test database.'
    end

    entry do
      command 'rordr'
      notes 'Rolls the database schema back to the previous version.'
    end

    entry do
      command 'rorg'
      notes 'Generates new code.'
    end

    entry do
      command 'rorl'
      notes 'Displays the log.'
    end

    entry do
      command 'rorlc'
      notes 'Truncates logs to zero bytes.'
    end

    entry do
      command 'rorp'
      notes 'Installs a plugin.'
    end

    entry do
      command 'rorr'
      notes 'Runs code in the application environment.'
    end

    entry do
      command 'rors'
      notes 'Starts the Rails server.'
    end

    entry do
      command 'rorsd'
      notes 'Starts the Rails server with the debugger.'
    end

    entry do
      command 'rorx'
      notes 'Destroys newly generated code.'
    end
  end

  category do
    id 'Rsync'

    entry do
      command 'rsync-copy'
      notes 'Copies files and directories from *source* to *destination*.'
    end

    entry do
      command 'rsync-move'
      notes 'Moves files and directories from *source* to *destination*.'
    end

    entry do
      command 'rsync-update'
      notes 'Updates files and directories on *destination*.'
    end

    entry do
      command 'rsync-synchronize'
      notes 'Synchronizes files and directories between *source* and *destination*.'
    end
  end

  category do
    id 'Ruby'

    entry do
      command 'rb'
      notes 'Is short for `ruby`.'
    end

    entry do
      command 'rbb'
      notes 'Manages ruby dependencies (`bundle`).'
    end

    entry do
      command 'rbbe'
      notes 'Executes a script in the context of the current bundle.'
    end

    entry do
      command 'rbbi'
      notes 'Installs the gems specified in the *Gemfile* in *vendor/bundle*.'
    end

    entry do
      command 'rbbI'
      notes <<-'END'
        Installs the following:
          - gems specified in the *Gemfile* in *vendor/bundle*.
          - packages the *gems* into *vendor/cache*.
          - appends bundler directories to *.gitignore*.
      END
    end

    entry do
      command 'rbbl'
      notes 'Lists all gems in the current bundle.'
    end

    entry do
      command 'rbbo'
      notes 'Opens an installed gem in the editor.'
    end

    entry do
      command 'rbbp'
      notes 'Packages gem files into vendor/cache.'
    end

    entry do
      command 'rbbu'
      notes 'Updates gems to their latest version.'
    end

    entry do
      command 'ruby-app-root'
      notes 'Displays the path to the Ruby application root directory.'
    end

    entry do
      command 'ruby-info'
      notes 'Exposes information about the Ruby environment via the `$ruby_info` associative array.'
    end
  end

  category do
    id 'Screen'

    entry do
      command 'scr'
      notes 'Is short for `screen`.'
    end

    entry do
      command 'scrl'
      notes 'Lists sessions/socket directory.'
    end

    entry do
      command 'scrn'
      notes 'Starts a new session.'
    end

    entry do
      command 'scrr'
      notes 'Attaches to a session if one exists or start a new one.'
    end
  end

  category do
    id 'Terminal'

    entry do
      command 'set-tab-title'
      notes 'Sets the terminal tab title.'
    end

    entry do
      command 'set-window-title'
      notes 'Sets the terminal or terminal multiplexer window title.'
    end
  end

  category do
    id 'Tmux'

    entry do
      command 'tmuxa'
      notes 'Attaches or switches to a tmux session.'
    end

    entry do
      command 'tmuxl'
      notes 'Lists sessions managed by the tmux server.'
    end
  end

  category do
    id 'Utility'

    entry do
      command '_'
      notes 'Executes a command as another user (`sudo`).'
    end

    entry do
      command 'b'
      notes 'Opens the default web browser.'
    end

    entry do
      command 'cp'
      notes 'Copies files and directories interactively.'
    end

    entry do
      command 'e'
      notes 'Opens the default editor.'
    end

    entry do
      command 'ln'
      notes 'Links files and directories interactively.'
    end

    entry do
      command 'mkdir'
      notes 'Creates directories, including intermediary directories.'
    end

    entry do
      command 'mv'
      notes 'Moves files and directories interactively.'
    end

    entry do
      command 'p'
      notes 'Opens the default pager.'
    end

    entry do
      command 'po'
      notes 'Removes a directory from the stack and changes to it (`popd`).'
    end

    entry do
      command 'pu'
      notes 'Changes the directory and pushes the old directory onto the stack (`pushd`).'
    end

    entry do
      command 'rm'
      notes 'Removes files and directories interactively.'
    end

    entry do
      command 'type'
      notes 'Displays all the attribute values of a shell parameter.'
    end

    entry do
      command 'ls'
      notes 'Lists with directories grouped first (GNU only).'
    end

    entry do
      command 'l'
      notes 'Lists in one column, hidden files.'
    end

    entry do
      command 'll'
      notes 'Lists human readable sizes.'
    end

    entry do
      command 'lr'
      notes 'Lists human readable sizes, recursively.'
    end

    entry do
      command 'la'
      notes 'Lists human readable sizes, hidden files.'
    end

    entry do
      command 'lm'
      notes 'Lists human readable sizes, hidden files through pager.'
    end

    entry do
      command 'lx'
      notes 'Lists sorted by extension (GNU only).'
    end

    entry do
      command 'lk'
      notes 'Lists sorted by size, largest last.'
    end

    entry do
      command 'lt'
      notes 'Lists sorted by date, most recent last.'
    end

    entry do
      command 'lc'
      notes 'Lists sorted by date, most recent last, shows change time.'
    end

    entry do
      command 'lu'
      notes 'Lists sorted by date, most recent last, shows access time.'
    end

    entry do
      command 'sl'
      notes 'Lists directory contents (`ls`).'
    end

    entry do
      command 'o'
      notes 'Opens files and directories (`open` or `xdg-open`).'
    end

    entry do
      command 'get'
      notes 'Downloads files (`curl` or `wget`).'
    end

    entry do
      command 'pbcopy'
      notes 'Copies to the pasteboard (`pbcopy`, `xclip` or `xsel`).'
    end

    entry do
      command 'pbpaste'
      notes 'Pastes from the pasteboard (`pbcopy`, `xclip` or `xsel`).'
    end

    entry do
      command 'pbc'
      notes 'Copies to the pasteboard (`pbcopy`).'
    end

    entry do
      command 'pbp'
      notes 'Pastes from the pasteboard (`pbpaste`).'
    end

    entry do
      command 'df'
      notes 'Displays free disk space using human readable units.'
    end

    entry do
      command 'du'
      notes 'Displays disk usage using human readable units.'
    end

    entry do
      command 'top'
      notes 'Displays information about processes (aliased to `htop`, if installed).'
    end

    entry do
      command 'topc'
      notes 'Displays information about processes sorted by CPU usage (`htop` not installed).'
    end

    entry do
      command 'topm'
      notes 'Displays information about processes sorted by RAM usage (`htop` not installed).'
    end

    entry do
      command 'http-serve'
      notes 'Serves a directory via HTTP.'
    end

    entry do
      command 'slit'
      notes 'Prints columns 1, 2, 3 ... n.'
    end

    entry do
      command 'cdls'
      notes 'Changes to a directory and lists its contents.'
    end

    entry do
      command 'dut'
      notes 'Displays the grand total disk usage using human readable units.'
    end

    entry do
      command 'find-exec'
      notes 'Finds files and executes a command on them.'
    end

    entry do
      command 'mkdcd'
      notes 'Makes a directory and changes to it.'
    end

    entry do
      command 'popdls'
      notes 'Pops an entry off the directory stack and lists its contents.'
    end

    entry do
      command 'pushdls'
      notes 'Pushes an entry onto the directory stack and lists its contents.'
    end

    entry do
      command 'diff'
      notes 'Highlights diff output (requires `colordiff` or `Git`).'
    end

    entry do
      command 'make'
      notes 'Highlights make output (requires `colormake`).'
    end

    entry do
      command 'wdiff'
      notes 'Highlights wdiff output (requires `wdiff` or `Git`).'
    end

    entry do
      command 'psu'
      notes 'Displays user owned processes status.'
    end

    entry do
      command 'prep'
      notes 'Provides a grep-like pattern search.'
    end

    entry do
      command 'psub'
      notes 'Provides a sed-like pattern substitution.'
    end
  end

  category do
    id 'Yum'

    entry do
      command 'yumc'
      notes 'Removes package(s) and leaves.'
    end

    entry do
      command 'yumi'
      notes 'Installs package(s).'
    end

    entry do
      command 'yumh'
      notes 'Displays history.'
    end

    entry do
      command 'yuml'
      notes 'Lists packages.'
    end

    entry do
      command 'yumL'
      notes 'Lists installed packages.'
    end

    entry do
      command 'yumq'
      notes 'Displays package information.'
    end

    entry do
      command 'yumr'
      notes 'Removes package(s).'
    end

    entry do
      command 'yums'
      notes 'Searches for a package.'
    end

    entry do
      command 'yumu'
      notes 'Updates packages.'
    end

    entry do
      command 'yumU'
      notes 'Upgrates packages.'
    end
  end
end
