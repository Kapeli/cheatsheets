cheatsheet do
    title 'Mercurial'
    docset_file_name 'Mercurial'
    keyword 'hg'
    source_url 'http://cheat.kapeli.com'

    category do
    id 'Undos and Fixes'
    entry do
        command 'hg rollback'
        name    'Undo commit, import, pull, local push or unbundle'
        notes 'Only use in private repositories.'
    end
    entry do
        command 'hg update --clean'
        name    'Cancel an uncomm­itted merge while losing changes'
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
      entry do
          command 'hg revert'
          name    'Undo all uncomm­itted changes'
      end
  end
  
  category do
  id 'Work Status'
      entry do
          command 'hg diff'
          name    'Lists tracked file changes'
      end
      entry do
          command 'hg diff file'
          name    'List changes to a file'
      end
      entry do
          command 'hg status'
          name    'Lists status of files'
      end
      entry do      
          notes '**A**dded, **C**lean, **D**e­leted, **I**g­nored, **M**o­dified, **U**n­known'
      end
  end

  category do
  id 'Local Repository History'
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
          name    'Lists known remote repositories'
      end
      entry do
          command 'hg heads'
          name    'List heads'
      end
      entry do
          command 'hg diff -rREV -rREV'
          name    'Show differ­ences between REVs'
      end
  end

  category do
  id 'Create a Local Repo'
      entry do
          command 'hg init Work'
          name    'Creates `./.hg/` folder and repository'
      end
      entry do
          command 'hg add'
          name    'Begin tracking all files'
      end
      entry do
          command "hg commit -m 'Initial commit'"
          name    'Save files and commit message to repository'
      end
  end

  category do
  id 'Clone Remote Repo'
      entry do
          command 'hg clone'
          name    'Remote work'
      end
  end

  category do
  id 'Update from Remote Repo'
      entry do
          command 'hg incoming Remote'
          name    'List changesets available'
      end
      entry do
          command 'hg pull'
          name    'Pull all new changesets into local'
      end
      entry do
          command 'hg pull -r Remote'
          name    'Pull specified changesets into local'
      end
      entry do
          command '-u'
          name    'Option: also update working directory'
      end
  end

  category do
  id 'Union Merge'
      entry do
          command 'hg pull --force unrel­ate­d_p­roject'
          name    'Pull'
      end  
      entry do
          command 'hg merge'
          name    'Merge'
      end
      entry do
          command 'hg commit'
          name    'Commit'
      end
  end


  category do
  id 'Remote Update and Publish'
      entry do
          command 'hg push Remote'
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
          command 'Revision'
          name    'Commited changeset, by REV number'
      end
      entry do
          command 'Changeset'
          name    'Set of work changes saved as diffs'
      end
      entry do
          command 'Diff'
          name    'Changes between files'
      end
      entry do
          command 'Tag'
          name    'Name for a specific rev'
      end
      entry do
          command 'Parent'
          name    'Immediate ancestor of rev or work'
      end
      entry do
          command 'Branch'
          name    'Child of rev'
      end
      entry do
          command 'Merge'
          name    'Rev with two parents'
      end
      entry do
          command 'Head'
          name    'Latest rev in branch'
      end
      entry do
          command 'Tip'
          name    'Latest rev in any branch'
      end
      entry do
          command 'Patch'
          name    'All diffs between two revs'
      end
      entry do
          command 'Bundle'
          name    'Patch with permis­sions and rename support'
      end
  end


  category do
  id 'Help'
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
  end

  category do
  id 'Command Line'
      entry do
          command 'hg command'
          name    '`-opti­on... argume­nt...`'
      end
      entry do
          command 'requ­ired'
          name    'Non-l­iteral reference'
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