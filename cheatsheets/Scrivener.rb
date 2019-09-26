# coding: utf-8
cheatsheet do
  title 'Scrivener'
  docset_file_name 'Scrivener'
  keyword 'scrivener'

  category do
    id 'View'
    entry do
      command 'CMD+1'
      name 'Document view'
    end
    entry do
      command 'CMD+2'
      name 'Corkboard view'
    end
    entry do
      command 'CMD+3'
      name 'Outline view'
    end
    entry do
      command 'CMD+ALT+F'
      name 'Toggle view mode'
      notes 'Toggle between normal view and focused view.'
    end
    entry do
      command 'CMD+ALT+I'
      name 'Toggle inspector'
    end
    entry do
      command 'CMD+ALT+B'
      name 'Toggle binder'
    end
    entry do
      command 'CMD+SHIFT+R'
      name 'Hide format bar'
    end
    entry do
      command 'CMD+ALT+SHIFT+H'
      name 'Project keywords'
      notes 'Toggle project keywords.'
    end
    entry do
      command 'CMD+ALT+SHIFT+P'
      name 'Page view'
      notes 'Toggle page view.'
    end
    entry do
      command 'CMD+ALT+P'
      name 'Project notes'
      notes 'Open project notes.'
    end
    entry do
      command 'CMD+SHIFT+Enter'
      name 'Scratch pad'
      notes 'Short cut works also outside Scrivener. So you can quickly take some notes without waiting for Scrivener to start.'
    end
  end
  category do
    id 'Navigation'
    entry do
      command 'CMD+ALT+Arrow Up'
      name 'Previous item'
      notes 'Go to previous binder item'
    end
    entry do
      command 'CMD+ALT+Arrow Down'
      name 'Next item'
      notes 'Go to next binder item'
    end
    entry do
      command 'CMD+CTRL+R'
      name 'Enclosing group'
      notes 'Go to enclosing group'
    end
    entry do
      command 'CMD+ALT+R'
      name 'Reveal in binder'
      notes 'Select edited text in binder. Especially handy if binder window is closed.'
    end
    entry do
      command 'CTRL+Tab'
      name 'Switch focus'
      notes 'Switch between binder and editor.'
    end
    entry do
      command 'CMD+CTRL+T'
      name 'Typewriter mode'
      notes 'Toggle typewriter scrolling mode.'
    end
  end
  category do
    id 'Searching'
    entry do
      command 'CMD+F'
      name 'Find'
    end
    entry do
      command 'CMD+G'
      name 'Find next'
    end
    entry do
      command 'CMD+SHIFT+G'
      name 'Find previous'
    end
    entry do
      command 'CMD+E'
      name 'Find selection'
      notes 'Use selection for find.'
    end
  end
  category do
    id 'Snapshots'
    entry do
      command 'CMD+5'
      name 'Snapshot'
      notes 'Take a new snapshot.'
    end
    entry do
      command 'CMD+SHIFT+5'
      name 'Titled snapshot'
      notes 'Take snapshot with title.'
    end
  end
  category do
    id 'Review'
    entry do
      command 'CMD+SHIFT+*'
      name 'Comment'
      notes 'Add a comment.'
    end
    entry do
      command 'CMD+CTRL+8'
      name 'Footnote'
      notes 'Add a footnote.'
    end
    entry do
      command 'CMD+SHIFT+H'
      name 'Highlight'
      notes 'Highlight selected text.'
    end
  end
  notes '* Find the manual in *Help/Scrivener Manual* or using `CMD+?`'
end
