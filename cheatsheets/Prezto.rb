cheatsheet do
  title 'Prezto'
  docset_file_name 'Prezto'
  keyword 'prezto'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Archive'

    entry do
      command 'unarchive'
      name 'Extracts the contents of one or more archives'
    end

    entry do
      command 'lsarchive'
      name 'Lists the contents of one or more archives'
    end
  end

  category do
    id 'Directory'

    entry do
      command 'd'
      name 'Prints the contents of the directory stack'
    end

    entry do
      command '1 ... 9'
      name 'Changes the directory to the **n** previous one'
    end
  end

  category do
    id 'Dpkg'

    entry do
      command 'debc'
      name 'Cleans the cache'
    end

    entry do
      command 'debf'
      name 'Displays a file\'s package'
    end

    entry do
      command 'debi'
      name 'Installs packages from repositories'
    end

    entry do
      command 'debI'
      name 'Installs packages from files'
    end

    entry do
      command 'debq'
      name 'Displays package information'
    end

    entry do
      command 'debu'
      name 'Updates the package lists'
    end

    entry do
      command 'debU'
      name 'Upgrades outdated packages'
    end

    entry do
      command 'debx'
      name 'Removes packages'
    end

    entry do
      command 'debX'
      name 'Removes packages, their configurations and unneeded dependencies'
    end

    entry do
      command 'debs'
      name 'Searches for packages'
    end

    entry do
      command 'deb-build'
      name 'Creates a basic deb package'
    end

    entry do
      command 'deb-kclean'
      name 'Removes all kernel images and headers, except for the ones in use'
    end

    entry do
      command 'deb-clone'
      name 'Generates a script that can be used to duplicate a dpkg-based system'
    end

    entry do
      command 'deb-history'
      name 'Displays dpkg history'
    end

    entry do
      command 'deb-kbuild'
      name 'Makes a dpkg Linux kernel package'
    end
  end

  category do
    id 'Emacs'

    entry do
      command 'cai'
      name 'Installs dependencies'
    end

    entry do
      command 'cau'
      name 'Updates dependencies'
    end

    entry do
      command 'caI'
      name 'Initializes the current directory for dependency management'
    end

    entry do
      command 'cae'
      name 'Executes a command which correct dependencies'
    end
  end

  category do
    id 'Fasd'

    entry do
      command 'j'
      name 'Changes the current working directory interactively'
    end
  end

  category do
    id 'Git'

    entry do
      command 'gg'
      name 'Is short for `git`'
    end

    entry do
      command 'gb'
      name 'Lists, creates, renames, and deletes branches'
    end

    entry do
      command 'gbc'
      name 'Creates a new branch'
    end

    entry do
      command 'gbl'
      name 'Lists branches and their commits'
    end

    entry do
      command 'gbL'
      name 'Lists local and remote branches and their commits'
    end

    entry do
      command 'gbs'
      name 'Lists branches and their commits with ancestry graphs'
    end

    entry do
      command 'gbS'
      name 'Lists local and remote branches and their commits with ancestry graphs'
    end

    entry do
      command 'gbx'
      name 'Deletes a branch'
    end

    entry do
      command 'gbX'
      name 'Deletes a branch irrespective of its merged status'
    end

    entry do
      command 'gbm'
      name 'Renames a branch'
    end

    entry do
      command 'gbM'
      name 'Renames a branch even if the new branch name already exists'
    end

    entry do
      command 'gc'
      name 'Records changes to the repository'
    end

    entry do
      command 'gca'
      name 'Stages all modified and deleted files'
    end

    entry do
      command 'gcm'
      name 'Records changes to the repository with the given message'
    end

    entry do
      command 'gco'
      name 'Checks out a branch or paths to work tree'
    end

    entry do
      command 'gcO'
      name 'Checks out hunks from the index or the tree interactively'
    end

    entry do
      command 'gcf'
      name 'Amends the tip of the current branch using the same log message as *HEAD*'
    end

    entry do
      command 'gcF'
      name 'Amends the tip of the current branch'
    end

    entry do
      command 'gcp'
      name 'Applies changes introduced by existing commits'
    end

    entry do
      command 'gcP'
      name 'Applies changes introduced by existing commits without committing'
    end

    entry do
      command 'gcr'
      name 'Reverts existing commits by reverting patches and recording new commits'
    end

    entry do
      command 'gcR'
      name 'Removes the *HEAD* commit'
    end

    entry do
      command 'gcs'
      name 'Displays various types of objects'
    end

    entry do
      command 'gcl'
      name 'Lists lost commits'
    end

    entry do
      command 'gCl'
      name 'Lists unmerged files'
    end

    entry do
      command 'gCa'
      name 'Adds unmerged file contents to the index'
    end

    entry do
      command 'gCe'
      name 'Executes merge-tool on all unmerged file'
    end

    entry do
      command 'gCo'
      name 'Checks out our changes for unmerged paths'
    end

    entry do
      command 'gCO'
      name 'Checks out our changes for all unmerged paths'
    end

    entry do
      command 'gCt'
      name 'Checks out their changes for unmerged paths'
    end

    entry do
      command 'gCT'
      name 'Checks out their changes for all unmerged paths'
    end

    entry do
      command 'gd'
      name 'Displays information about files in the index and the work tree'
    end

    entry do
      command 'gdc'
      name 'Lists cached files'
    end

    entry do
      command 'gdx'
      name 'Lists deleted files'
    end

    entry do
      command 'gdm'
      name 'Lists modified files'
    end

    entry do
      command 'gdu'
      name 'Lists untracked files'
    end

    entry do
      command 'gdk'
      name 'Lists killed files'
    end

    entry do
      command 'gdi'
      name 'Lists ignored files'
    end

    entry do
      command 'gf'
      name 'Downloads objects and references from another repository'
    end

    entry do
      command 'gfc'
      name 'Clones a repository into a new directory'
    end

    entry do
      command 'gfm'
      name 'Fetches from and merges with another repository or local branch'
    end

    entry do
      command 'gfr'
      name 'Fetches from and rebases on another repository or local branch'
    end

    entry do
      command 'gg'
      name 'Displays lines matching a pattern'
    end

    entry do
      command 'ggi'
      name 'Displays lines matching a pattern ignoring case'
    end

    entry do
      command 'ggl'
      name 'Lists files matching a pattern'
    end

    entry do
      command 'ggL'
      name 'Lists files that are not matching a pattern'
    end

    entry do
      command 'ggv'
      name 'Displays lines not matching a pattern'
    end

    entry do
      command 'ggw'
      name 'Displays lines matching a pattern at word boundary'
    end

    entry do
      command 'gia'
      name 'Adds file contents to the index'
    end

    entry do
      command 'giA'
      name 'Adds file contents to the index interactively'
    end

    entry do
      command 'giu'
      name 'Adds file contents to the index (updates only known files)'
    end

    entry do
      command 'gid'
      name 'Displays changes between the index and a named commit (diff)'
    end

    entry do
      command 'giD'
      name 'Displays changes between the index and a named commit (word diff)'
    end

    entry do
      command 'gir'
      name 'Resets the current HEAD to the specified state'
    end

    entry do
      command 'giR'
      name 'Resets the current index interactively'
    end

    entry do
      command 'gix'
      name 'Removes files/directories from the index (recursively)'
    end

    entry do
      command 'giX'
      name 'Removes files/directories from the index (recursively and forced)'
    end

    entry do
      command 'gl'
      name 'Displays the log'
    end

    entry do
      command 'gls'
      name 'Displays the stats log'
    end

    entry do
      command 'gld'
      name 'Displays the diff log'
    end

    entry do
      command 'glo'
      name 'Displays the one line log'
    end

    entry do
      command 'glg'
      name 'Displays the graph log'
    end

    entry do
      command 'glb'
      name 'Displays the brief commit log'
    end

    entry do
      command 'glc'
      name 'Displays the commit count for each contributor in descending order'
    end

    entry do
      command 'gm'
      name 'Joins two or more development histories together'
    end

    entry do
      command 'gmC'
      name 'Joins two or more development histories together but does not commit'
    end

    entry do
      command 'gmF'
      name 'Joins two or more development histories together but does not commit generating a merge commit even if the merge resolved as a fast-forward'
    end

    entry do
      command 'gma'
      name 'Aborts the conflict resolution, and reconstructs the pre-merge state'
    end

    entry do
      command 'gmt'
      name 'Runs the merge conflict resolution tools to resolve conflicts'
    end

    entry do
      command 'gp'
      name 'Updates remote refs along with associated objects'
    end

    entry do
      command 'gpf'
      name 'Forcefully updates remote refs along with associated objects'
    end

    entry do
      command 'gpa'
      name 'Updates remote branches along with associated objects'
    end

    entry do
      command 'gpA'
      name 'Updates remote branches and tags along with associated objects'
    end

    entry do
      command 'gpt'
      name 'Updates remote tags along with associated objects'
    end

    entry do
      command 'gpc'
      name 'Updates remote refs along with associated objects and adds origin as an upstream reference for the current branch'
    end

    entry do
      command 'gpp'
      name 'Pulls and pushes from origin to origin'
    end

    entry do
      command 'gr'
      name 'Forward-ports local commits to the updated upstream head'
    end

    entry do
      command 'gra'
      name 'Aborts the rebase'
    end

    entry do
      command 'grc'
      name 'Continues the rebase after merge conflicts are resolved'
    end

    entry do
      command 'gri'
      name 'Makes a list of commits to be rebased and opens the editor'
    end

    entry do
      command 'grs'
      name 'Skips the current patch'
    end

    entry do
      command 'gR'
      name 'Manages tracked repositories'
    end

    entry do
      command 'gRl'
      name 'Lists remote names and their URLs'
    end

    entry do
      command 'gRa'
      name 'Adds a new remote'
    end

    entry do
      command 'gRx'
      name 'Removes a remote'
    end

    entry do
      command 'gRm'
      name 'Renames a remote'
    end

    entry do
      command 'gRu'
      name 'Fetches remotes updates'
    end

    entry do
      command 'gRp'
      name 'Prunes all stale remote tracking branches'
    end

    entry do
      command 'gRs'
      name 'Displays information about a given remote'
    end

    entry do
      command 'gRb'
      name 'Opens a remote on GitHub in the default browser'
    end

    entry do
      command 'gs'
      name 'Stashes the changes of the dirty working directory'
    end

    entry do
      command 'gsa'
      name 'Applies the changes recorded in a stash to the working directory'
    end

    entry do
      command 'gsx'
      name 'Drops a stashed state'
    end

    entry do
      command 'gsX'
      name 'Drops all the stashed states'
    end

    entry do
      command 'gsl'
      name 'Lists stashed states'
    end

    entry do
      command 'gsL'
      name 'Lists dropped stashed states'
    end

    entry do
      command 'gsd'
      name 'Displays changes between the stash and its original parent'
    end

    entry do
      command 'gsp'
      name 'Removes and applies a single stashed state from the stash list'
    end

    entry do
      command 'gsr'
      name 'Recovers a given stashed state'
    end

    entry do
      command 'gss'
      name 'Stashes the changes of the dirty working directory, including untracked'
    end

    entry do
      command 'gsS'
      name 'Stashes the changes of the dirty working directory interactively'
    end

    entry do
      command 'gsw'
      name 'Stashes the changes of the dirty working directory retaining the index'
    end

    entry do
      command 'gS'
      name 'Initializes, updates, or inspects submodules'
    end

    entry do
      command 'gSa'
      name 'Adds given a repository as a submodule'
    end

    entry do
      command 'gSf'
      name 'Evaluates a shell command in each of checked out submodules'
    end

    entry do
      command 'gSi'
      name 'Initializes submodules'
    end

    entry do
      command 'gSI'
      name 'Initializes and clones submodules recursively'
    end

    entry do
      command 'gSl'
      name 'Lists the commits of all submodules'
    end

    entry do
      command 'gSm'
      name 'Moves a submodule'
    end

    entry do
      command 'gSs'
      name 'Synchronizes submodules\' remote URL to the value specified in .gitmodules'
    end

    entry do
      command 'gSu'
      name 'Fetches and merges the latest changes for all submodule'
    end

    entry do
      command 'gSx'
      name 'Removes a submodule'
    end

    entry do
      command 'gws'
      name 'Displays working-tree status in the short format'
    end

    entry do
      command 'gwS'
      name 'Displays working-tree status'
    end

    entry do
      command 'gwd'
      name 'Displays changes between the working tree and the index (diff)'
    end

    entry do
      command 'gwD'
      name 'Displays changes between the working tree and the index (word diff)'
    end

    entry do
      command 'gwr'
      name 'Resets the current HEAD to the specified state, does not touch the index nor the working tree'
    end

    entry do
      command 'gwR'
      name 'Resets the current HEAD, index and working tree to the specified state'
    end

    entry do
      command 'gwc'
      name 'Removes untracked files from the working tree (dry-run)'
    end

    entry do
      command 'gwC'
      name 'Removes untracked files from the working tree'
    end

    entry do
      command 'gwx'
      name 'Removes files from the working tree and from the index recursively'
    end

    entry do
      command 'gwX'
      name 'Removes files from the working tree and from the index recursively and forcefully'
    end

    entry do
      command 'gpt'
      name 'Shadows the GUID partition table maintenance utility'
    end

    entry do
      command 'gs'
      name 'Shadows the Ghostscript'
    end

    entry do
      command 'git-branch-current'
      name 'Displays the current branch'
    end

    entry do
      command 'git-commit-lost'
      name 'Lists lost commits'
    end

    entry do
      command 'git-dir'
      name 'Displays the path to the Git directory'
    end

    entry do
      command 'git-hub-browse'
      name 'Opens the GitHub repository in the default browser'
    end

    entry do
      command 'git-hub-shorten-url'
      name 'Shortens GitHub URLs'
    end

    entry do
      command 'git-info'
      name 'Exposes repository information via the `$git_info` associative array'
    end

    entry do
      command 'git-root'
      name 'Displays the path to the working tree root'
    end

    entry do
      command 'git-stash-clear-interactive'
      name 'Asks for confirmation before clearing the stash'
    end

    entry do
      command 'git-stash-dropped'
      name 'Lists dropped stashed states'
    end

    entry do
      command 'git-stash-recover'
      name 'Recovers given dropped stashed states'
    end

    entry do
      command 'git-submodule-move'
      name 'Moves a submodule'
    end

    entry do
      command 'git-submodule-remove'
      name 'Removes a submodule'
    end
  end

  category do
    id 'History'

    entry do
      command 'history-stat'
      name 'Lists the ten most used commands'
    end
  end

  category do
    id 'Homebrew'

    entry do
      command 'brewc'
      name 'Cleans outdated brews and their cached archives'
    end

    entry do
      command 'brewC'
      name 'Cleans outdated brews, including keg-only, and their cached archives'
    end

    entry do
      command 'brewi'
      name 'Installs a formula'
    end

    entry do
      command 'brewl'
      name 'Lists installed formulae'
    end

    entry do
      command 'brews'
      name 'Searches for a formula'
    end

    entry do
      command 'brewU'
      name 'Upgrades Homebrew and outdated brews'
    end

    entry do
      command 'brewu'
      name 'Upgrades Homebrew'
    end

    entry do
      command 'brewx'
      name 'Uninstalls a formula'
    end
  end

  category do
    id 'Homebrew Cask'

    entry do
      command 'cask'
      name 'Is aliased to brew cask'
    end

    entry do
      command 'caskc'
      name 'Cleans up old cached downloads'
    end

    entry do
      command 'caskC'
      name 'Cleans up all cached downloads'
    end

    entry do
      command 'caski'
      name 'Installs a cask'
    end

    entry do
      command 'caskl'
      name 'Lists installed casks'
    end

    entry do
      command 'casks'
      name 'Searches for a cask'
    end

    entry do
      command 'caskx'
      name 'Uninstalls a cask'
    end
  end

  category do
    id 'Macports'

    entry do
      command 'portc'
      name 'Cleans the files used to build ports'
    end

    entry do
      command 'porti'
      name 'Installs a port'
    end

    entry do
      command 'ports'
      name 'Searches for a port'
    end

    entry do
      command 'portu'
      name 'Upgrades a port'
    end

    entry do
      command 'portU'
      name 'Upgrades MacPorts, the ports collection, and outdated ports'
    end

    entry do
      command 'portx'
      name 'Uninstalls a port'
    end

    entry do
      command 'portX'
      name 'Uninstalls inactive ports'
    end
  end

  category do
    id 'Node.js'

    entry do
      command 'node-doc'
      name 'Opens the Node.js online API documentation in the default browser'
    end

    entry do
      command 'node-info'
      name 'Exposes information about the Node.js environment via the $node_info associative array'
    end
  end

  category do
    id 'OSX'

    entry do
      command 'cdf'
      name 'Changes the current working director to the current Finder directory'
    end

    entry do
      command 'pushdf'
      name 'Pushes the current working directory onto the directory queue and changes the current working director to the current Finder directory'
    end

    entry do
      command 'mand'
      name 'Opens man pages in Dash.app'
    end

    entry do
      command 'manp'
      name 'Opens man pages in Preview.app'
    end

    entry do
      command 'pfd'
      name 'Prints the current Finder directory'
    end

    entry do
      command 'pfs'
      name 'Prints the current Finder selection'
    end

    entry do
      command 'tab'
      name 'Creates a new tab (works in both Terminal and iTerm)'
    end

    entry do
      command 'ql'
      name 'Previews files in Quick Look'
    end

    entry do
      command 'osx-rm-dir-metadata'
      name 'Deletes .DS_Store, __MACOSX cruft'
    end

    entry do
      command 'osx-ls-download-history'
      name 'Displays the macOS download history'
    end

    entry do
      command 'osx-rm-download-history'
      name 'Deletes the macOS download history'
    end
  end

  category do
    id 'Pacman'

    entry do
      command 'pac'
      name 'Is short for pacman'
    end

    entry do
      command 'paci'
      name 'Installs packages from repositories'
    end

    entry do
      command 'pacI'
      name 'Installs packages from files'
    end

    entry do
      command 'pacx'
      name 'Removes packages and unneeded dependencies'
    end

    entry do
      command 'pacX'
      name 'Removes packages, their configuration, and unneeded dependencies'
    end

    entry do
      command 'pacq'
      name 'Displays information about a package from the repositories'
    end

    entry do
      command 'pacQ'
      name 'Displays information about a package from the local database'
    end

    entry do
      command 'pacs'
      name 'Searches for packages in the repositories'
    end

    entry do
      command 'pacS'
      name 'Searches for packages in the local database'
    end

    entry do
      command 'pacuabs'
      name 'Synchronizes the local package and Arch Build System (requires abs) databases against the repositories'
    end

    entry do
      command 'pacU'
      name 'Synchronizes the local package database against the repositories then upgrades outdated packages'
    end

    entry do
      command 'pacman-list-orphans'
      name 'Lists orphan packages'
    end

    entry do
      command 'pacman-remove-orphans'
      name 'Removes orphan packages'
    end

    entry do
      command 'pacc'
      name 'Manages .pac* files'
    end

    entry do
      command 'pacman-list-explicit'
      name 'Lists explicitly installed pacman packages'
    end

    entry do
      command 'pacman-list-disowned'
      name 'Lists pacman disowned files'
    end
  end

  category do
    id 'Perl'

    entry do
      command 'pl'
      name 'Is short for `perl`'
    end

    entry do
      command 'pldperldoc'
      name 'Looks up Perl documentation (`perldoc`)'
    end

    entry do
      command 'pleperl -wlne'
      name 'Executes a one line program in a loop (`perl -wlne`)'
    end

    entry do
      command 'plb'
      name 'Manages Perl environments'
    end

    entry do
      command 'plba'
      name 'Lists available Perl versions'
    end

    entry do
      command 'plbi'
      name 'Installs a Perl version'
    end

    entry do
      command 'plbl'
      name 'Lists installed Perl versions'
    end

    entry do
      command 'plbo'
      name 'Temporarily turns off Perlbrew'
    end

    entry do
      command 'plbO'
      name 'Turns off Perlbrew'
    end

    entry do
      command 'plbs'
      name 'Switches to a Perl version'
    end

    entry do
      command 'plbu'
      name 'Uninstalls a Perl version'
    end

    entry do
      command 'plbx'
      name 'Temporarily sets the Perl version to use'
    end
  end

  category do
    id 'Python'

    entry do
      command 'py'
      name 'Is short for `python`'
    end

    entry do
      command 'python-info'
      name 'Exposes information about the Python environment via the `$python_info` associative array'
    end
  end

  category do
    id 'Ruby on Rails'

    entry do
      command 'ror'
      name 'Is short for `rails`'
    end

    entry do
      command 'rorc'
      name 'Starts the Rails console'
    end

    entry do
      command 'rordc'
      name 'Starts the Rails console connected to the database'
    end

    entry do
      command 'rordm'
      name 'Migrates the database'
    end

    entry do
      command 'rordM'
      name 'Migrates the database and recreates the test database'
    end

    entry do
      command 'rordr'
      name 'Rolls the database schema back to the previous version'
    end

    entry do
      command 'rorg'
      name 'Generates new code'
    end

    entry do
      command 'rorl'
      name 'Displays the log'
    end

    entry do
      command 'rorlc'
      name 'Truncates logs to zero bytes'
    end

    entry do
      command 'rorp'
      name 'Installs a plugin'
    end

    entry do
      command 'rorr'
      name 'Runs code in the application environment'
    end

    entry do
      command 'rors'
      name 'Starts the Rails server'
    end

    entry do
      command 'rorsd'
      name 'Starts the Rails server with the debugger'
    end

    entry do
      command 'rorx'
      name 'Destroys newly generated code'
    end
  end

  category do
    id 'Rsync'

    entry do
      command 'rsync-copy'
      name 'Copies files and directories from *source* to *destination*'
    end

    entry do
      command 'rsync-move'
      name 'Moves files and directories from *source* to *destination*'
    end

    entry do
      command 'rsync-update'
      name 'Updates files and directories on *destination*'
    end

    entry do
      command 'rsync-synchronize'
      name 'Synchronizes files and directories between *source* and *destination*'
    end
  end

  category do
    id 'Ruby'

    entry do
      command 'rb'
      name 'Is short for `ruby`'
    end

    entry do
      command 'rbb'
      name 'Manages ruby dependencies (`bundle`)'
    end

    entry do
      command 'rbbe'
      name 'Executes a script in the context of the current bundle'
    end

    entry do
      command 'rbbi'
      name 'Installs the gems specified in the *Gemfile* in *vendor/bundle*'
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
      name 'Lists all gems in the current bundle'
    end

    entry do
      command 'rbbo'
      name 'Opens an installed gem in the editor'
    end

    entry do
      command 'rbbp'
      name 'Packages gem files into vendor/cache'
    end

    entry do
      command 'rbbu'
      name 'Updates gems to their latest version'
    end

    entry do
      command 'ruby-app-root'
      name 'Displays the path to the Ruby application root directory'
    end

    entry do
      command 'ruby-info'
      name 'Exposes information about the Ruby environment via the `$ruby_info` associative array'
    end
  end

  category do
    id 'Screen'

    entry do
      command 'scr'
      name 'Is short for `screen`'
    end

    entry do
      command 'scrl'
      name 'Lists sessions/socket directory'
    end

    entry do
      command 'scrn'
      name 'Starts a new session'
    end

    entry do
      command 'scrr'
      name 'Attaches to a session if one exists or start a new one'
    end
  end

  category do
    id 'Terminal'

    entry do
      command 'set-tab-title'
      name 'Sets the terminal tab title'
    end

    entry do
      command 'set-window-title'
      name 'Sets the terminal or terminal multiplexer window title'
    end
  end

  category do
    id 'Tmux'

    entry do
      command 'tmuxa'
      name 'Attaches or switches to a tmux session'
    end

    entry do
      command 'tmuxl'
      name 'Lists sessions managed by the tmux server'
    end
  end

  category do
    id 'Utility'

    entry do
      command '_'
      name 'Executes a command as another user (`sudo`)'
    end

    entry do
      command 'b'
      name 'Opens the default web browser'
    end

    entry do
      command 'cp'
      name 'Copies files and directories interactively'
    end

    entry do
      command 'e'
      name 'Opens the default editor'
    end

    entry do
      command 'ln'
      name 'Links files and directories interactively'
    end

    entry do
      command 'mkdir'
      name 'Creates directories, including intermediary directories'
    end

    entry do
      command 'mv'
      name 'Moves files and directories interactively'
    end

    entry do
      command 'p'
      name 'Opens the default pager'
    end

    entry do
      command 'po'
      name 'Removes a directory from the stack and changes to it (`popd`)'
    end

    entry do
      command 'pu'
      name 'Changes the directory and pushes the old directory onto the stack (`pushd`)'
    end

    entry do
      command 'rm'
      name 'Removes files and directories interactively'
    end

    entry do
      command 'type'
      name 'Displays all the attribute values of a shell parameter'
    end

    entry do
      command 'ls'
      name 'Lists with directories grouped first (GNU only)'
    end

    entry do
      command 'l'
      name 'Lists in one column, hidden files'
    end

    entry do
      command 'll'
      name 'Lists human readable sizes'
    end

    entry do
      command 'lr'
      name 'Lists human readable sizes, recursively'
    end

    entry do
      command 'la'
      name 'Lists human readable sizes, hidden files'
    end

    entry do
      command 'lm'
      name 'Lists human readable sizes, hidden files through pager'
    end

    entry do
      command 'lx'
      name 'Lists sorted by extension (GNU only)'
    end

    entry do
      command 'lk'
      name 'Lists sorted by size, largest last'
    end

    entry do
      command 'lt'
      name 'Lists sorted by date, most recent last'
    end

    entry do
      command 'lc'
      name 'Lists sorted by date, most recent last, shows change time'
    end

    entry do
      command 'lu'
      name 'Lists sorted by date, most recent last, shows access time'
    end

    entry do
      command 'sl'
      name 'Lists directory contents (`ls`)'
    end

    entry do
      command 'o'
      name 'Opens files and directories (`open` or `xdg-open`)'
    end

    entry do
      command 'get'
      name 'Downloads files (`curl` or `wget`)'
    end

    entry do
      command 'pbcopy'
      name 'Copies to the pasteboard (`pbcopy`, `xclip` or `xsel`)'
    end

    entry do
      command 'pbpaste'
      name 'Pastes from the pasteboard (`pbcopy`, `xclip` or `xsel`)'
    end

    entry do
      command 'pbc'
      name 'Copies to the pasteboard (`pbcopy`)'
    end

    entry do
      command 'pbp'
      name 'Pastes from the pasteboard (`pbpaste`)'
    end

    entry do
      command 'df'
      name 'Displays free disk space using human readable units'
    end

    entry do
      command 'du'
      name 'Displays disk usage using human readable units'
    end

    entry do
      command 'top'
      name 'Displays information about processes (aliased to `htop`, if installed)'
    end

    entry do
      command 'topc'
      name 'Displays information about processes sorted by CPU usage (`htop` not installed)'
    end

    entry do
      command 'topm'
      name 'Displays information about processes sorted by RAM usage (`htop` not installed)'
    end

    entry do
      command 'http-serve'
      name 'Serves a directory via HTTP'
    end

    entry do
      command 'slit'
      name 'Prints columns 1, 2, 3 ... n'
    end

    entry do
      command 'cdls'
      name 'Changes to a directory and lists its contents'
    end

    entry do
      command 'dut'
      name 'Displays the grand total disk usage using human readable units'
    end

    entry do
      command 'find-exec'
      name 'Finds files and executes a command on them'
    end

    entry do
      command 'mkdcd'
      name 'Makes a directory and changes to it'
    end

    entry do
      command 'popdls'
      name 'Pops an entry off the directory stack and lists its contents'
    end

    entry do
      command 'pushdls'
      name 'Pushes an entry onto the directory stack and lists its contents'
    end

    entry do
      command 'diff'
      name 'Highlights diff output (requires `colordiff` or `Git`)'
    end

    entry do
      command 'make'
      name 'Highlights make output (requires `colormake`)'
    end

    entry do
      command 'wdiff'
      name 'Highlights wdiff output (requires `wdiff` or `Git`)'
    end

    entry do
      command 'psu'
      name 'Displays user owned processes status'
    end

    entry do
      command 'prep'
      name 'Provides a grep-like pattern search'
    end

    entry do
      command 'psub'
      name 'Provides a sed-like pattern substitution'
    end
  end

  category do
    id 'Yum'

    entry do
      command 'yumc'
      name 'Removes package(s) and leaves'
    end

    entry do
      command 'yumi'
      name 'Installs package(s)'
    end

    entry do
      command 'yumh'
      name 'Displays history'
    end

    entry do
      command 'yuml'
      name 'Lists packages'
    end

    entry do
      command 'yumL'
      name 'Lists installed packages'
    end

    entry do
      command 'yumq'
      name 'Displays package information'
    end

    entry do
      command 'yumr'
      name 'Removes package(s)'
    end

    entry do
      command 'yums'
      name 'Searches for a package'
    end

    entry do
      command 'yumu'
      name 'Updates packages'
    end

    entry do
      command 'yumU'
      name 'Upgrates packages'
    end
  end
end
