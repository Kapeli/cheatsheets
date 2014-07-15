cheatsheet do
    title ' Mercurial Hg'
    docset_file_name 'Mercurial_Hg'
    keyword 'hg'
    source_url 'http://www.cheatography.com/codeshane/cheat-sheets/mercurial-hg/'


  category do
  id 'Work Directory'

    entry do
        name ''
        note    'A local Work folder containing one Revision and any uncommited changes you have made.'
      end
    end
    category do
    id 'Undos and Fixes'
    entry do
        command 'hg rollback'
        name    'can undo commit, import, pull, local push, and unbundle. Only use in private repos.'
    end
    entry do
        command 'hg update --clean'
        name    'can cancel an uncomm­itted merge while losing changes.'
    end    
    end
    category do
    id 'Create an Archive'
    entry do
        command 'hg archive'
        name    '-rREV filena­me.zip'
    end
    entry do
        command 'hg archive'
        name    ' -rREV filena­me.t­ar.gz'
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
          name    'Stop tracking & del'
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
          name  'NOTE'
          notes 'These changes to Work must also be Committed to avoid data loss.'
      end
  end
  
  category do
  id 'Work Directory Updates'
      entry do
          command 'hg update tip'
          name    'Update Work to match Tip'
      end
      entry do
          command 'hg update -rREV'
          name    'Update Work to specified Revision'
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
          name  'NOTE'
          notes ' Added, Clean, De­leted, Ig­nored, Mo­dified, Un­known'
      end
  end

  category do
  id 'Local Repository'
    entry do      
        name  'NOTE'
        notes 'A complete Local repository of changesets that is saved in Work/.hg/ (do not edit!)'
    end
  end


  category do
  id 'Local Repo History'
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
          name    'Lists known remote Repos'
      end
      entry do
          command 'hg heads'
          name    'List heads'
      end
      entry do      
          name  'NOTE'
          notes 'hg diff -rREV -rREV Shows <br/> differ­ences between REVs'
      end
  
  end

  category do
  id 'Create a Local Repo'
      entry do
          command 'hg init Work'
          name    'Creates ./.hg/ subfolder & Repo'
      end
      entry do
          command 'hg add'
          name    'Begin tracking all files'
      end
      entry do
          command "hg commit -m 'Initial commit'"
          name    'Save files and Commit message to Repo'
      end
  end

  category do
  id 'Clone Remote Repo'
      entry do
          command 'hg clone'
          name    ' Remote Work'
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
          name    'Pull all new changesets into Local'
      end
      entry do
          command 'hg pull -r Remote'
          name    'Pull specified changesets into Local'
      end
      entry do
          command '-u'
          name    'Also Update Working Directory'
      end
  end

  category do
  id 'Union Merge'
      entry do
          command 'hg pull --force'
          name    ' unrel­ate­d_p­roject'
      end
      entry do
          command 'hg merge'
          name    ''
      end
      entry do
          command 'hg commit'
          name    ''
      end
    entry do      
        name  'NOTE'
        notes 'Powerful simpli­city! Use wisely.'
    end
  
  end


  category do
  id 'Resources'
    entry do      
        name  'NOTE'
        notes  <<-'END'
        '[http:/­/me­rcu­ria­l.s­ele­nic.com](http:/­/me­rcu­ria­l.s­ele­nic.com)<br />
         [http:/­/hg­ini­t.com](http:/­/hg­ini­t.com)<br />
         [http:/­/hg­boo­k.r­ed-­bea­n.com](http:/­/hg­boo­k.r­ed-­bea­n.com)<br />'
        END
    end
  end

  category do
  id 'Remote Repository'
    entry do      
        name  'NOTE'
        notes 'A Remote repository reached via url path, often a main team repo from which Local is cloned.'
    end
  end
  
  category do
  id 'Remote Update and Publish'
      entry do
          command 'hg push Remote'
          name    'Push changesets to Remote'
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
          name    'Repo. Collection of Revisions.'
      end
      entry do
          command 'Revision'
          name    'Rev. Commited changeset, by REV number.'
      end
      entry do
          command 'Changeset'
          name    'Set of Work changes saved as Diffs.'
      end
      entry do
          command 'Diff'
          name    'Changes between files.'
      end
      entry do
          command 'Tag'
          name    'Name for a specific Rev.'
      end
      entry do
          command 'Parent'
          name    'Immediate ancestor of Rev or Work.'
      end
      entry do
          command 'Branch'
          name    'Child of Rev.'
      end
      entry do
          command 'Merge'
          name    'Rev with two parents.'
      end
      entry do
          command 'Head'
          name    'Latest Rev in Branch.'
      end
      entry do
          command 'Tip'
          name    'Latest Rev in ANY Branch.'
      end
      entry do
          command 'Patch'
          name    'All Diffs between two Revs.'
      end
      entry do
          command 'Bundle'
          name    'Patch with permis­sions and rename support.'
      end
  end


  category do
  id 'Help'
      entry do
          command 'hg'
          name    'Basic command list.'
      end
      entry do
          command 'hg help'
          name    'Full command list.'
      end
      entry do
          command 'hg help command'
          name    'Detailed help reference.'
      end
  end

  category do
  id 'Command Line'
      entry do
          command 'hg command'
          name    ' -opti­on... argume­nt...'
      end
      entry do
          command 'requ­ired'
          name    'non-l­iteral reference'
      end
  end

  category do
  id 'Common Options'
      entry do
          command '-rREV'
          name    'Specify a Rev number (default parent.)'
      end
      entry do
          command '-y'
          name    'Do not prompt; pick each first option.'
      end
      entry do
          command '-q'
          name    'Quiet (supress output.)'
      end
      entry do
          command '-v'
          name    'Verbose (addit­ional detail)'
      end
      entry do
          command '-f'
          name    'Force (override reasonable warnings.)'
      end
    end


  notes <<-'END'
  Original cheatsheet from [Mercurial (Hg) Cheat Sheet by codeshane - Cheatography.com: Cheat Sheets For Every Occasion](http://www.cheatography.com/codeshane/cheat-sheets/mercurial-hg/)
  END


end