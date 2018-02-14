cheatsheet do
  title 'Sourcetree'
  docset_file_name 'Sourcetree'
  keyword 'sourcetree'
  source_url 'http://cheat.kapeli.com'
  
  category do
    id 'Repository Management'
    entry do
      command 'CMD+0'
      name    'Show repository browser'
      notes   'Opens the Repository Browser window.'
    end
    entry do
      command 'CMD+SHIFT+H'
      name    'Show remote hosted repositories'
      notes   'Show the Repository Browser and select the Remote section.'
    end
    entry do
      name    'Bookmark open repositories...'
      notes   'Prompts to add selected repositories to the Repository Browser.'
    end
  end  

  category do
    id 'UI Customization'
    entry do
      command 'CMD+SHIFT+K'
      name    'Show/Hide sidebar'
      notes   'Toggle the current repository\'s sidebar (branches, tags, and more.)'
    end
    entry do
      command 'CMD+CTRL+W'
      name    'Show/Hide command history'
      notes   'Toggle the current repository\'s command history to view details.'
    end
    entry do
      command 'CMD+1'
      name    'File status view'
      notes   'Switch to the file browser and commit preparation area.'
    end
    entry do
      command 'CMD+2'
      name    'History view'
      notes   'Switch to the primary commit history browser area.'
    end
    entry do
      command 'CMD+3'
      name    'Search view'
      notes   'Switch to the commit history search area.'
    end
    entry do
      name    'Show/Hide branch labels'
      notes   'Toggle the visibility of branch labels in commit history graphs for all repositories.'
    end
    entry do
      name    'Show/Hide tag labels'
      notes   'Toggle the visibility of tag labels in commit history graphs for all repositories.'
    end
    entry do
      name    'Show/Hide build status'
      notes   'Toggle the visibility of the Build Status column in the History view for the current repository.'
    end
  end

  category do
    id 'Git Actions'
    entry do
      command 'CMD+SHIFT+F'
      name    'Fetch...'
      notes   'Retrieve the current repository\'s branches, tags, and history from the remote server.'
    end
    entry do
      name    'Interactive rebase...'
      notes   'Start interactively updating a branch\'s content to align with another.'
    end
    entry do
      name    'Add/Link subtree...'
      notes   'Connect another repository to act like a descendent of the current repository, instead of a remote dependency.'
    end 
    entry do
      command 'CMD+SHIFT+-'
      name    'Unstage from index'
      notes   'Remove the selected item(s) from the staging area prior to committing.'
    end
  end

  category do
    id 'Mercurial Actions'
    entry do
      command 'CMD+SHIFT+U'
      name    'Update'
      notes   'Retrieve the current repository\'s state from the remote server.'
    end
    entry do
      name    'Archive'
      notes   'Save an archival copy of the repository.'
    end
  end

  category do
    id 'Repository Actions'
    entry do
      name    'Migrate to Bitbucket Cloud...'
      notes   'Configure and migrate the current repository to Bitbucket Cloud.'
    end
    entry do
      command 'CMD+SHIFT+,'
      name    'Repository settings...'
      notes   'Configure settings for the current repository.'
    end
    entry do
      command 'CMD+R'
      name    'Refresh'
      notes   'Reload the current repository\'s commit history graph, file status, and build status.'
    end
    entry do
      command 'CTRL+ALT+R'
      name    'Refresh remote status'
      notes   'Reload the current repository\'s status from the remote server.'
    end
    entry do
      command 'CMD+SHIFT+C'
      name    'Commit...'
      notes   'Go to current repository\'s File Status view, focus the message editor, and populate with a message template if available.'
    end
    entry do
      command 'CMD+SHIFT+R'
      name    'Revert... *or* Reset...'
      notes   'Begin reverting one or more of the current repository\'s in-progress changes.'
    end
    entry do
      command 'CMD+SHIFT+S'
      name    'Stash *or* Shelve'
      notes   'Save the current repository\'s in-progress changes for later use.'
    end
    entry do
      command 'CMD+SHIFT+P'
      name    'Push...'
      notes   'Send local commits for the current repository to the remote server.'
    end
    entry do
      command 'CMD+SHIFT+L'
      name    'Pull...'
      notes   'Retrieve any new commits for the current repository from the remote server.'
    end
    entry do
      command 'CMD+ALT+U'
      name    'Update to... *or* Checkout...'
      notes   'Switch to a particular branch or revision in the current repository.'
    end
    entry do
      command 'CMD+SHIFT+B'
      name    'Branch...'
      notes   'Create a new branch from the currently active branch.'
    end
    entry do
      command 'CMD+SHIFT+M'
      name    'Merge...'
      notes   'Start the process of combining the target branch into the active one in the current repository.'
    end
    entry do
      command 'CMD+SHIFT+T'
      name    'Tag...'
      notes   'Create a new tag for the active branch and commit in the current repository.'
    end
    entry do
      name    'Add remote...'
      notes   'Connect a new remote server to the current repository.'
    end
    entry do
      name    'Add subrepository...'
      notes   'Connect another repository as a dependency for the current repository.'
    end
    entry do
      command 'CMD+SHIFT+W'
      name    'View remote'
      notes   'Open the remote server\'s website (if available) for the current repository.'
    end
    entry do
      command 'CMD+ALT+P'
      name    'Create pull request...'
      notes   'Start a pull request on the remote server for the current active branch.'
    end
  end

  category do
    id 'Item Actions'
    entry do
      command 'CMD+SHIFT+O'
      name    'Open'
      notes   'Open the selected item(s) for the current repository.'
    end
    entry do
      name    'Show in Finder'
      notes   'Open a new Finder window with the selected item(s) for current repository highlighted.'
    end
    entry do
      command 'CMD+CTRL+T'
      name    'Open in Terminal'
      notes   'Open a new Terminal window to the directory for the current repository.'
    end
    entry do
      command 'Space'
      name    'Quick Look'
      notes   'Display a preview of the selected item(s)\'s contents if possible.'
    end
    entry do
      name    'External diff'
      notes   'Open the assigned application (see Preferences) to display the item\'s changes.'
    end
    entry do
      name    'Create patch...'
      notes   'Save the current repository\'s in-progress changes as a file for transfer or later use.'
    end
    entry do
      name    'Apply patch...'
      notes   'Take the contents of a patch (file or text) and merge them into the current repository if possible.'
    end
    entry do
      command 'CMD+SHIFT+='
      name    'Add'
      notes   'Add the selected untracked item(s) to the current repository\'s index, making them available for commit.'
    end
    entry do
      command 'CMD+Delete'
      name    'Remove'
      notes   'Remove the selected item(s) from the current repository\'s index and on-disk; requires a commit to save.'
    end
    entry do
      command 'CMD+ALT+SHIFT+='
      name    'Add / Remove'
      notes   'Combines the Add and Remove actions (see their entries) into a single task for all the selected item(s).'
    end
    entry do
      name    'Stop tracking'
      notes   'Remove the selected item(s) from the current repository\'s index; requires a commit to complete.'
    end
    entry do
      name    'Ignore...'
      notes   'Create entries (specific patterns, file types, or other designations) for items that should be ignored completely in the current repository.'
    end
    entry do
      name    'Commit...'
      notes   'Ensure the selected item(s) are included in the current commit and focus the message editor, populating with a message template if available.'
    end
    entry do
      command 'CMD+ALT+R'
      name    'Reset... *or* Revert...'
      notes   'Begin reverting in-progress changes for the selected item(s).'
    end
    entry do
      name    'Reset to commit... *or* Revert to reversion...'
      notes   'Begin reverting the selected item(s) to a specific point in their history.'
    end  
    entry do
      name    'Continue'
      notes   'Proceed to the next step of an in-progress action such as rebasing or grafting.'
    end
    entry do
      name    'Abort'
      notes   'Stop an in-progress action such as rebasing or grafting.'
    end
    entry do
      command 'CMD+ALT+L'
      name    'Log selected...'
      notes   'Show a list of commits specific to the selected item in reverse chronological order.'
    end
    entry do
      command 'CMD+ALT+B'
      name    'Annotate selected...'
      notes   'Display the contents of the selected item, as lines, with the latest commit\'s information (author, date, metadata) alongside.'
    end    
    entry do
      name    'Copy...'
      notes   'Create a copy of the selected item(s) in the current repository using appropriate source control mechanisms.'
    end
    entry do
      name    'Move...'
      notes   'Move the selected item(s) from one location to another (including renaming) in the current repository using appropriate source control mechanisms.'
    end
  end

  category do
    id 'Resolving Conflicts'
    entry do
      name    'Launch external merge tool'
      notes   'Open the diff for the conflicted item(s) in the application specified in Preferences -> Diff.'
    end
    entry do
      name    'Resolve using \'mine\''
      notes   'Choose the contents of the current branch when there\'s a conflict.'
    end
    entry do
      name    'Resolve using \'theirs\''
      notes   'Choose the contents of the branch that you are merging when there\'s a conflict.'
    end
    entry do
      name    'Restart merge'
      notes   'Cancel an in-progress merge.'
    end
    entry do
      name    'Mark resolved'
      notes   'Update the selected item(s) to indicate conflicts were resolved manually.'
    end
    entry do
      name    'Mark unresolved'
      notes   'Update the selected item(s) to indicate a conflict or other problem exists still.'
    end
  end

  category do
    id 'Git LFS'
    entry do
      name    'Initialize repository'
      notes   'Configure the necessary changes to enable [Git LFS]() for the current repository.'
    end
    entry do
      name    'Track/Untrack files...'
      notes   'Add or remove the selected item(s) from the Git LFS index and storage when pushing.'
    end
    entry do
      name    'Pull LFS content'
      notes   'Fetch any LFS changes from the remote for the current repository and then checkout appropriate files.'
    end
    entry do
      name    'Fetch LFS content'
      notes   'Retrieve LFS changes from the remote for the current repository.'
    end
    entry do
      name    'Checkout LFS content'
      notes   'Retrieve large file content from the Git LFS storage endpoint to replace existing placeholder files in the current repository.'
    end
    entry do
      name    'Prune LFS content'
      notes   'Remove LFS item(s) that have been checked out into the current repository. This frees up space if they are unused.'
    end
  end

  category do
    id 'Git/Hg Flow'
    entry do
      name    'Initialize repository'
      notes   'Configure Flow prefixes for the current repository.'
    end
    entry do
      command 'CMD+ALT+F'
      name    'Next action...'
      notes   'Begin the next Flow action based on what\'s currently in progress for the current repository.'
    end
    entry do
      name    'Start new feature'
      notes   'Create a branch with the *feature* prefix and specified name.'
    end
    entry do
      name    'Finish feature'
      notes   'Wrap up the in-progress Flow *feature* branch.'
    end
    entry do
      name    'Start new release'
      notes   'Create a branch with the *release* prefix and specified name.'
    end
    entry do
      name    'Finish release'
      notes   'Wrap up the in-progress Flow *release* branch.'
    end
    entry do
      name    'Start new hotfix'
      notes   'Create a branch with the *hotfix* prefix and specified name.'
    end
    entry do
      name    'Finish hotfix'
      notes   'Wrap up the in-progress Flow *hotfix* branch.'
    end
  end

  category do
    id 'Text Formatting'
    entry do
      command 'CMD+ALT+-'
      name    'Header'
      notes   'Wraps the selected text in Markdown syntax for a header.'
    end
    entry do
      command 'CMD+ALT+SHIFT+-'
      name    'Horizontal rule'
      notes   'Inserts the Markdown syntax for a single line.'
    end
    entry do
      command 'CMD+B'
      name    'Bold'
      notes   'Wraps the selected text in Markdown syntax to be **bold**.'
    end
    entry do
      command 'CMD+I'
      name    'Italic'
      notes   'Wraps the selected text in Markdown syntax to be *italicized*.'
    end
    entry do
      command 'CMD+L'
      name    'Bulleted list'
      notes   'Inserts the Markdown syntax for a bullet at the start of selected text.'
    end
    entry do
      command 'CMD+ALT+O'
      name    'Numbered list'
      notes   'Inserts the Markdown syntax for a number sequence at the start of selected text.'
    end
    entry do
      command 'CMD+\''
      name    'Code block'
      notes   'Wraps the selected text in Markdown syntax to be formatted as code.'
    end
    entry do
      command 'CMD+ALT+K'
      name    'Link'
      notes   'Wraps the selected text in Markdown syntax for a link, focused to edit the URL portion.'
    end
  end

  notes  "
* New user? Check out [Getting Started with Sourcetree](https://confluence.atlassian.com/get-started-with-sourcetree).
* Need help? Join the [Atlassian Community](http://community.atlassian.com) today!
* Created in January 2018 by [Brian Ganninger](https://github.com/bgannin).
         "
end
