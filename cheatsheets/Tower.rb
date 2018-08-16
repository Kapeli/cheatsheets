cheatsheet do
  title 'Tower'
  docset_file_name 'Tower'
  keyword 'tower'
  source_url 'http://cheat.kapeli.com'
  introduction 'Keyboard shortcuts for **Tower**, the most powerful Git client for Mac and Windows - visit [www.git-tower.com](https://www.git-tower.com) for more.'

  category do
    id 'General'
    entry do
      command 'CMD+N'
      name 'Open new **window**'
    end
    entry do
      command 'CMD+SHIFT+O'
      name 'Show **Quick Open** dialog'
    end
    entry do
      command 'CTRL+SHIFT+A'
      name 'Show **Quick Actions** dialog'
    end
    entry do
      command 'CTRL+SHIFT+D'
      name 'Open external **diff tool** for current view'
    end
    entry do
      command 'CMD+CTRL+0'
      name 'Show **Activity** window'
    end
    entry do
      command 'CMD+CTRL+F'
      name 'Full screen mode'
    end
    entry do
      command 'CTRL+R'
      name 'Refresh / reload data'
    end
  end

  category do
    id 'Moving Between Views'
    entry do
      command 'CMD+CTRL+S'
      name 'Show **Services** view'
    end
    entry do
      command 'CMD+CTRL+R'
      name 'Show **Repositories** view'
    end
    entry do
      command 'CMD+1'
      name 'Show **Working Copy** view'
    end
    entry do
      command 'CMD+2'
      name 'Show **History** view'
    end
    entry do
      command 'CMD+3'
      name 'Show **Stashes** view'
    end
    entry do
      command 'CMD+4'
      name 'Show **Pull Request** view'
    end
    entry do
      command 'CMD+5'
      name 'Show **Reflog** view'
    end
    entry do
      command 'CMD+0'
      name 'Show **HEAD** branch'
    end
  end

  category do
    id 'Working Copy & Local Changes'
    entry do
      command 'CMD+SHIFT+B'
      name '**Check out** revision'
    end
    entry do
      command 'CMD+SHIFT+C'
      name 'Activate **commit dialog**'
    end
    entry do
      command 'CMD+RETURN'
      name 'Confirm **commit dialog**'
    end
    entry do
      command 'SPACEBAR'
      name 'Stage/unstage or Quicklook selected file (configurable in Preferences)'
    end
    entry do
      command 'CMD+SHIFT+E'
      name '**Stage** all current changes'
    end
    entry do
      command 'CMD+SHIFT+ALT+E'
      name '**Unstage** all current changes'
    end
    entry do
      command 'CMD+SHIFT+S'
      name '**Save to Stash**'
    end
    entry do
      command 'CMD+SHIFT+ALT+S'
      name '**Apply Stash**'
    end
    entry do
      command 'CMD+SHIFT+BACKSPACE'
      name 'Discard local changes in selected file'
    end
    entry do
      command 'CMD+CTRL+M'
      name 'Show / hide **non-modified** files (i.e. all of the project\'s files)'
    end
    entry do
      command 'CMD+CTRL+I'
      name 'Show / hide **ignored files**'
    end
    entry do
      command 'CMD+CTRL+U'
      name 'Show / hide files that are marked **assume-unchanged**'
    end
  end

  category do
    id 'Remote Interactions & Commit History'
    entry do
      command 'CMD+SHIFT+F'
      name '**Fetch**'
    end
    entry do
      command 'CTRL+SHIFT+P'
      name '**Pull**'
    end
    entry do
      command 'CMD+SHIFT+U'
      name '**Push** HEAD'
    end
    entry do
      command 'CMD+CTRL+G'
      name 'Show / hide commit **tree graph**'
    end
    entry do
      command 'CMD+C'
      name 'Copy SHA-1 hashes of _selected_ commits to clipboard'
    end
    entry do
      command 'CMD+CTRL+Arrow Right'
      name 'Expand all diffs in changeset'
    end
    entry do
      command 'CMD+CTRL+Arrow Left'
      name 'Collapse all diffs in changeset'
    end
  end

  category do
    id 'Merging & Rebasing'
    entry do
      command 'CMD+SHIFT+M'
      name '**Merge**'
    end
    entry do
      command 'CMD+SHIFT+R'
      name '**Rebase**'
    end
  end

  category do
    id 'Creating Branches & Tags'
    entry do
      command 'CMD+B'
      name 'Create **new branch**'
    end
    entry do
      command 'CMD+SHIFT+T'
      name 'Create **new tag**'
    end
  end



  notes <<-'END'
    More tips, tricks, and time savers can be found in the Tower online help: [https://www.git-tower.com/help/](https://www.git-tower.com/help/mac/faq-and-tips/tips-and-tricks)
  END
end