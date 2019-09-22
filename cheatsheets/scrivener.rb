# coding: utf-8
cheatsheet do
  title 'Scrivener'
  docset_file_name 'Scrivener'
  keyword 'scrivener'

  introduction 'Often used Scrivener keyboard short cuts.'

  category do
    id 'View'
    entry do
      command 'CMD+1'
      name 'document view'
    end
    entry do
      command 'CMD+2'
      name 'corkboard view'
    end
    entry do
      command 'CMD+3'
      name 'outline view'
    end
    entry do
      command 'CMD+ALT+F'
      name 'toggle view mode'
      notes 'Toggle between normal view and focused view.'
    end
    entry do
      command 'CMD+ALT+I'
      name 'toggle inspector'
    end
    entry do
      command 'CMD+ALT+B'
      name 'toggle binder'
    end
    entry do
      command 'CMD+SHIFT+R'
      name 'hide format bar'
    end
    entry do
      command 'CMD+ALT+SHIFT+H'
      name 'project keywords'
      notes 'Toggle project keywords.'
    end
    entry do
      command 'CMD+ALT+SHIFT+P'
      name 'page view'
      notes 'Toggle page view.'
    end
    entry do
      command 'CMD+ALT+P'
      name 'project notes'
      name 'Open project notes.'
    end
    entry do
      command 'CMD+SHIFT+Enter'
      name 'scratch pad'
      notes 'Short cut works also outside Scrivener. So you can quickly take some notes without waiting for Scrivener to start.'
    end
  end
  category do
    id 'Navigation'
    entry do
      command 'CMD+ALT+UpArrow'
      name 'previous item'
      notes 'Go to previous binder item'
    end
    entry do
      command 'CMD+ALT+DownArrow'
      name 'next item'
      notes 'Go to next binder item'
    end
    entry do
      command 'CMD+CTRL+R'
      name 'enclosing group'
      notes 'Go to enclosing group'
    end
    entry do
      command 'CMD+ALT+R'
      name 'reveal in binder'
      notes 'Select edited text in binder. Especially handy if binder window is closed.'
    end
    entry do
      command 'CTRL+Tab'
      name 'switch focus'
      notes 'Switch between binder and editor.'
    end
    entry do
      command 'CMD+CTRL+T'
      name 'typewriter mode'
      notes 'Toggle typewriter scrolling mode.'
    end
  end
  category do
    id 'Searching'
    entry do
      command 'CMD+F'
      name 'find'
    end
    entry do
      command 'CMD+G'
      name 'find next'
    end
    entry do
      command 'CMD+SHIFT+G'
      name 'find previous'
    end
    entry do
      command 'CMD+E'
      name 'find selection'
      notes 'Use selection for find.'
    end
  end
  category do
    id 'Snapshots'
    entry do
      command 'CMD+5'
      name 'snapshot'
      notes 'Take a new snapshot.'
    end
    entry do
      command 'CMD+SHIFT+5'
      name 'titled snapshot'
      notes 'Take snapshot with title.'
    end
  end
  category do
    id 'Review'
    entry do
      command 'CMD+SHIFT+*'
      name 'comment'
      notes 'Add a comment.'
    end
    entry do
      command 'CMD+CTRL+8'
      name 'footnote'
      notes 'Add a footnote.'
    end
    entry do
      command 'CMD+SHIFT+H'
      name 'highlight'
      notes 'Highlight selected text.'
    end
  end
  category do
    id 'Structuring Text'
    entry do
      command 'CMD+CTRL+RightArrow'
      name 'group text under parent'
      notes 'Make selected text(s) children of text or folder above.'
    end
    entry do
      command 'CMD+CTRL+LeftArrow'
      name 'ungroup text from parent'
      notes 'Bring selected text(s) on same hierarchy level as their current parent.'
    end
    entry do
      command 'CMD+SHIFT+M'
      name 'merge selected texts'
      notes 'Merge selected texts into a single document.'
    end
    entry do
      command 'CMD+ALT+K'
      name 'split at selection'
      notes 'Split the text at selection and create a new text with the part below the split.'
    end
    entry do
      command 'CMD+ALT+SHIFT+K'
      name 'split with selection as title'
      notes 'Like split a selection, but sets the selected text as title of the newly created split.'
    end
  end
  notes 'Find the manual in *Help/Scrivener Manual* or using *CMD+?*'
end
