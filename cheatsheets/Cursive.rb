cheatsheet do
  title 'Cursive'               
  docset_file_name 'Cursive'   
  keyword 'cursive'      
  
  category do
    id 'Structural Editing'

    entry do
      td_notes '⌃⌘K'
      name 'Barf Backwards'
    end
    entry do
      td_notes '⇧⌘J'
      name 'Barf Forwards'
    end
    entry do
      td_notes '⇧⌘O'
      name 'Close () and newline'
    end
    entry do
      td_notes '⌘]'
      name 'Close [] and newline'
    end
    entry do
      td_notes '⇧⌘]'
      name 'Close {} and newline'
    end
    entry do
      td_notes '⌃⇧K'
      name 'Copy as Kill'
    end
    entry do
      td_notes '⌃⌥J'
      name 'Join'
    end
    entry do
      td_notes '⌃K'
      name 'Kill'
    end
    entry do
      td_notes '⌥⌘K'
      name 'Kill Sexp'
    end
    entry do
      td_notes '⇧⌘↓'
      name 'Move Form Down'
    end
    entry do
      td_notes '⇧⌘↑'
      name 'Move Form Up'
    end
    entry do
      td_notes "⌘'"
      name 'Raise'
    end
    entry do
      td_notes '⌃⌘J'
      name 'Slurp Backwards'
    end
    entry do
      td_notes '⇧⌘K'
      name 'Slurp Forwards'
    end
    entry do
      td_notes '⌥S'
      name 'Splice Sexp'
    end
    entry do
      td_notes '⌃⌥S'
      name 'Split'
    end
    entry do
      td_notes '⌃⌥,'
      name 'Thread Form'
    end
    entry do
      td_notes '⌃⌥.'
      name 'Unthread Form'
    end
    entry do
      td_notes '⇧⌘\''
      name 'Wrap with ""'
    end
    entry do
      td_notes '⇧⌘9'
      name 'Wrap with ()'
    end
    entry do
      td_notes '⌘['
      name 'Wrap with []'
    end
    entry do
      td_notes '⇧⌘['
      name 'Wrap with {}'
    end
  end

  category do
    id 'REPL'

	entry do
      td_notes '⌘\\'
      name 'Jump to REPL editor'
    end
    entry do
      td_notes '⇧⌘L'
      name 'Load file in REPL'
    end
    entry do
      td_notes '⌘↓'
      name 'Next REPL history item'
    end
    entry do
      td_notes '⌘↑'
      name 'Previous REPL history item'
    end
    entry do
      td_notes '⌥⌘E'
      name 'Search REPL history'
    end
    entry do
      td_notes '⇧⌘P'
      name 'Send top form to REPL'
    end
    entry do
      td_notes '⇧⌘N'
      name 'Switch REPL NS to current file'
    end
    entry do
      td_notes '⇧⌘M'
      name 'Sync files in REPL'
    end
    entry do
      td_notes '⇧⌘\\'
      name 'View macro expansion'
    end
  end
  
  category do
    id 'Navigation'

	entry do
      td_notes '⌘←'
      name 'Move Backward'
    end
    entry do
      td_notes '⌘→'
      name 'Move Forward'
    end
    entry do
      td_notes '⌃⇧O'
      name 'Open Namespace...'
    end
  end
    
  category do
    id 'Other'
    
    entry do
      td_notes '⌃⇧P'
      name 'Show Element Type'
    end
  end
  
  notes "The default Cursive keybindings are a subset of Cursive's supported actions. Manage them in Preferences > Keymap."
end
