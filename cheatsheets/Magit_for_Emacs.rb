cheatsheet do
  title 'Magit for Emacs'
  docset_file_name 'Magit_for_Emacs'
  keyword 'magit'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Popups'

    entry do
      command '!'
      name 'Running git'
    end

    entry do
      command 'b'
      name 'Branching'
    end

    entry do
      command 'B'
      name 'Bisecting'
    end

    entry do
      command 'c'
      name 'Committing'
    end

    entry do
      command 'd'
      name 'Diffing'
    end

    entry do
      command 'E'
      name 'Ediff'
    end

    entry do
      command 'f'
      name 'Fetching'
    end

    entry do
      command 'F'
      name 'Pulling'
    end

    entry do
      command 'l'
      name 'Logging'
    end

    entry do
      command 'm'
      name 'Merging'
    end

    entry do
      command 'M'
      name 'Remoting'
    end

    entry do
      command 'P'
      name 'Pushing'
    end

    entry do
      command 'o'
      name 'Submoduling'
    end

    entry do
      command 'r'
      name 'Rebasing'
    end

    entry do
      command 'w'
      name 'Apply patches'
    end

    entry do
      command 'W'
      name 'Format patches'
    end

    entry do
      command 't'
      name 'Tagging'
    end

    entry do
      command 'z'
      name 'Stashing'
    end
  end

  category do
    id 'Section Movement'

    entry do
      command 'p'
      name 'Previous section'
    end

    entry do
      command 'n'
      name 'Next section'
    end

    entry do
      command 'P'
      name 'Previous sibling section'
    end

    entry do
      command 'N'
      name 'Next sibling section'
    end

    entry do
      command '^'
      name 'Parent section'
    end
  end

  category do
    id 'Section Visibility'

    entry do
      command 'TAB'
      name 'Toggle visibility of current section'
    end

    entry do
      command 'C-TAB'
      name 'Cycle visiblity of section and children'
    end

    entry do
      command 'M-TAB'
      name 'Cycle visibilty of diff-related sections'
    end

    entry do
      command 'S-TAB'
      name 'Cycle visibility of all sections in buffer'
    end
  end

  category do
    id 'Staging'

    entry do
      command 's'
      name 'Stage change at point'
    end

    entry do
      command 'u'
      name 'Unstage change at point'
    end

    entry do
      command 'S'
      name 'Stage all changes in worktree'
    end

    entry do
      command 'U'
      name 'Reset index to some commit'
    end

    entry do
      command 'M-x magit-unstage-all'
      name 'Remove all changes'
    end

    entry do
      command 'M-x magit-stage-file'
      name 'Stage current file'
    end

    entry do
      command 'M-x magit-unstage-file'
      name 'Unstage current file'
    end
  end

  category do
    id 'Status/Diff/Log Buffer'

    entry do
      command 'SPC'
      name 'Update commit/diff buffer or scroll up'
    end

    entry do
      command 'DEL'
      name 'Update commit/diff buffer or scroll down'
    end

    entry do
      command 'h'
      name 'Show dispatch popup'
    end

    entry do
      command 'g'
      name 'Refresh'
    end

    entry do
      command 'G'
      name 'Refresh all'
    end

    entry do
      command 'q'
      name 'Bury current buffer'
    end

    entry do
      command 'L'
      name 'Toggle margin'
    end

    entry do
      command 'x'
      name 'Soft reset (hard when argument is given)'
    end

    entry do
      command 'y'
      name 'Show references (tags and branches)'
    end

    entry do
      command 'Y'
      name 'Cherry pick'
    end

    entry do
      command 'C-c C-b'
      name 'Move backward in buffer\'s history'
    end

    entry do
      command 'C-c C-f'
      name 'Move forward in buffer\'s history'
    end

    entry do
      command 'e'
      name 'Ediff DWIM'
    end

    entry do
      command 'i'
      name 'Gitignore'
    end

    entry do
      command 'I'
      name 'Gitignore locally'
    end
  end

  category do
    id 'View Git Output'

    entry do
      command '$'
      name 'Display process buffer for current repository'
    end

    entry do
      command 'k'
      name 'Kill process represented by section at point'
    end
  end

  category do
    id 'References Buffer'

    entry do
      command 'y'
      name 'Compare references with current HEAD'
    end

    entry do
      command 'c'
      name 'Compare references with current branch'
    end

    entry do
      command 'o'
      name 'Compare references with other branch'
    end
  end

  category do
    id 'Diff Buffer'

    entry do
      command 'RET'
      name 'Visit file (or blob) at appropriate position'
    end

    entry do
      command 'C-RET'
      name 'Visit file at appropriate position'
    end

    entry do
      command '-'
      name 'Decrease context of diff hunks'
    end

    entry do
      command '+'
      name 'Increase context of diff hunks'
    end

    entry do
      command '0'
      name 'Reset context of diff hunks to default height'
    end

    entry do
      command 'j'
      name 'Jump to diff stat <-> diff section'
    end
  end

  category do
    id 'Blaming'

    entry do
      command 'M-x magit-blame'
      name 'Display edit history of file'
    end

    entry do
      command 'RET'
      name 'Show the commit at point'
    end

    entry do
      command 'SPC'
      name 'Update commit/diff buffer or scroll up'
    end

    entry do
      command 'DEL'
      name 'Update commit/diff buffer or scroll down'
    end

    entry do
      command 'n'
      name 'Move to the next chunk'
    end

    entry do
      command 'N'
      name 'Move to the next chunk (same commit)'
    end

    entry do
      command 'p'
      name 'Move to the previous chunk'
    end

    entry do
      command 'P'
      name 'Move to the previous chunk (same commit)'
    end

    entry do
      command 'q'
      name 'Turn off magit blame mode'
    end

    entry do
      command 't'
      name 'Show or hide blame chunk headings'
    end
  end

  category do
    id 'Log Buffer'

    entry do
      command '+'
      name 'Show more history'
    end

    entry do
      command 'C-c C-c'
      name 'Select commit at point and act on it'
    end

    entry do
      command 'C-c C-k'
      name 'Abort selecting commit'
    end
  end

  category do
    id 'Repository Setup'

    entry do
      command 'M-x magit-init'
      name 'Initialize a Git repository'
    end

    entry do
      command 'M-x magit-clone'
      name 'Clone a repository'
    end
  end
end
