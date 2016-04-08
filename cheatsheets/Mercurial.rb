cheatsheet do
  title 'Mercurial'
  docset_file_name 'Mercurial'
  keyword 'hg'
  source_url 'http://cheat.kapeli.com'

  category do
  id 'Create a Local Repository'
      entry do
          command 'hg init .'
          name    'Create a mercurial repository of current directory with a `.hg/` folder'
      end
      entry do
          command 'hg add filename1 filename2'
          name    'Begin tracking `filename1` and `filename2` in mercurial'
      end
      entry do
          command "hg commit -m 'Initial commit'"
          name    'Save files and commit message to repository' 
      end
  end

  category do
  id 'Clone Remote Repository'
      entry do
          command 'hg clone remote-repo [local-directory]'
          name    'Clone a remote mercurial repository to a local directory'
      end
  end

  category do
  id 'Update from Remote Repository'
      entry do
          command 'hg incoming [remote-repo]'
          name    'List changesets available'
      end
      entry do
          command 'hg pull'
          name    'Pull all new changesets into local'
      end
      entry do
          command 'hg pull -r remote-repo'
          name    'Pull specified changesets into local'
      end
      entry do
          command '-u'
          name    'Option: also update working directory'
      end
  end

  category do
  id 'Merge'
      entry do
          command 'hg merge'
          name    'Merge changesets to local repository'
      end
      entry do
          command 'hg merge branchname_or_revision'
          name    'Merge from a named branch or revision into the current local branch'
      end
      entry do
          command 'hg resolve --mark filename'
          name    'Inform mercurial about the resolution of merge conflicts'
      end
      entry do
          command 'hg commit'
          name    'After successful merge, commit the changes'
      end
  end


  category do
  id 'Undos and Fixes'
    entry do
      command 'hg rollback'
      name    'Undo commit, import, pull, local push or unbundle'
      notes   'Only use in private repositories.'
    end
    entry do
      command 'hg update --clean'
      name    'Cancel an uncomm­itted merge and lose changes'
    end    
    entry do
        command 'hg revert'
        name    'Undo all uncomm­itted changes'
    end
  end

  category do
  id 'Create an Archive'
  entry do
      command 'hg archive'
      name 'Create an archive'
      notes    'Example args: `-rREV filena­me.zip` or `-rREV filena­me.t­ar.gz`'
  end
  end


  category do
  id 'Work Files and Tracking'
    entry do
        command 'hg add file'
        name    'Begin tracking changes'
    end
    entry do
        command 'hg addrem­ove'
        name    'Track new, forget missing'
    end
    entry do
        command 'hg forget file'
        name    'Stop tracking file'
    end
    entry do
        command 'hg remove file'
        name    'Stop tracking & delete'
    end
    entry do
        command 'hg copy file target'
        name    'Copy file'
    end
    entry do
        command 'hg move file target'
        name    'Move file'
    end
    entry do      
        notes 'These changes must also be committed to avoid data loss.'
    end
  end

  category do
  id 'Work Directory Updates'
    entry do
        command 'hg update tip'
        name    'Update work to match tip'
    end
    entry do
        command 'hg update -rREV'
        name    'Update work to specified revision'
    end
  end
  
  category do
  id 'Work Status'
      entry do
          command 'hg diff'
          name    'List tracked file changes'
      end
      entry do
          command 'hg diff file'
          name    'List changes to a file'
      end
      entry do
          command 'hg status'
          name    'List status of files'
      end
      entry do      
          notes '**A**dded, **C**lean, **D**e­leted, **I**g­nored, **M**o­dified or **U**n­known'
      end
  end

  category do
  id 'Local Repository History'
      entry do
          command 'hg serve'
          name    'Fire up a builtin local webserver for browsing and sharing repository over HTTP'
      end
      entry do
          command 'hg log file/dir'
          name    'History of changesets'
      end
      entry do
          command 'hg annotate file'
          name    'Who changed what, when'
      end
      entry do
          command 'hg paths'
          name    'List known remote repositories'
      end
      entry do
          command 'hg heads'
          name    'List heads'
      end
      entry do
          command 'hg parents'
          name    'Before merge, you can look up the parents of the branch'
      end
      entry do
          command 'hg diff -rREV -rREV'
          name    'Show differ­ences between REVs'
      end
  end


  category do
  id 'Remote Update and Publish'
      entry do
          command 'hg push [remote-repo]'
          name    'Push changesets to remote'
      end
      entry do
          command 'hg share'
          name    'Sync history with parent and siblings'
      end
  end

  category do
  id 'Terminology'
    entry do
      command 'Repository'
      name    'Collection of revisions'
    end
    entry do
      command 'hgrc'
      name    'A file which stores defaults for a repository. Global is ~/.hgrc and local is .hgrc inside the repository'
    end
    entry do
      command 'revision'
      name    'Committed changeset, by REV number'
    end
    entry do
      command 'changeset'
      name    'Set of work changes saved as diffs'
    end
    entry do
      command 'diff'
      name    'Changes between files'
    end
    entry do
      command 'tag'
      name    'Name for a specific revision'
    end
    entry do
      command 'parent(s)'
      name    'Immediate ancestor(s) of revision or work'
    end
    entry do
      command 'branch'
      name    'Child of a revision'
    end
    entry do
      command 'head'
      name    'A head is a changeset with no child changesets'
    end
    entry do
      command 'merge'
      name    'The process of merging two HEADS'
    end
    entry do
      command 'tip'
      name    'Latest revision in any branch'
    end
    entry do
      command 'patch'
      name    'All diffs between two revisions'
    end
    entry do
      command 'bundle'
      name    'Patch with permis­sions and rename support'
    end
  end

  category do
  id 'Help and Usage'
    entry do
        command 'hg'
        name    'Basic command list'
    end
    entry do
        command 'hg help'
        name    'Full command list'
    end
    entry do
        command 'hg help command'
        name    'Detailed help reference'
    end
    entry do
        command 'hg command'
        name    '`-opti­on... argume­nt...`'
    end
  end

  category do
  id 'Common Options'
    entry do
        command '-rREV'
        name    'Specify a REV number (default parent)'
    end
    entry do
        command '-y'
        name    'Do not prompt, pick each first option'
    end
    entry do
        command '-q'
        name    'Quiet (supress output)'
    end
    entry do
        command '-v'
        name    'Verbose (addit­ional detail)'
    end
    entry do
        command '-f'
        name    'Force (override reasonable warnings)'
    end
  end

  notes <<-'END'
  * Based on a [cheat sheet](http://www.cheatography.com/codeshane/cheat-sheets/mercurial-hg/) by [Shane Robinson](http://www.cheatography.com/codeshane/)
  END

end
