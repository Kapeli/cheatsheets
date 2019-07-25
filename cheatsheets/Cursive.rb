cheatsheet do
  title 'Cursive'               
  docset_file_name 'Cursive'   
  keyword 'cursive'      
  
  category do
    id 'Structural Editing'

	header 'Mac'
	header 'Name'

    entry do
      td_command 'CTRL+CMD+K'
      name 'Barf Backwards'
    end
    entry do
      td_command 'SHIFT+CMD+J'
      name 'Barf Forwards'
    end
    entry do
      td_command 'SHIFT+CMD+O'
      name 'Close () and newline'
    end
    entry do
      td_command 'CMD+]'
      name 'Close [] and newline'
    end
    entry do
      td_command 'SHIFT+CMD+]'
      name 'Close {} and newline'
    end
    entry do
      td_command 'CTRL+SHIFT+K'
      name 'Copy as Kill'
    end
    entry do
      td_command 'CTRL+ALT+J'
      name 'Join'
    end
    entry do
      td_command 'CTRL+K'
      name 'Kill'
    end
    entry do
      td_command 'ALT+CMD+K'
      name 'Kill Sexp'
    end
    entry do
      td_command 'SHIFT+CMD+DOWN'
      name 'Move Form Down'
    end
    entry do
      td_command 'SHIFT+CMD+UP'
      name 'Move Form Up'
    end
    entry do
      td_command "CMD+'"
      name 'Raise'
    end
    entry do
      td_command 'CTRL+CMD+J'
      name 'Slurp Backwards'
    end
    entry do
      td_command 'SHIFT+CMD+K'
      name 'Slurp Forwards'
    end
    entry do
      td_command 'ALT+S'
      name 'Splice Sexp'
    end
    entry do
      td_command 'CTRL+ALT+S'
      name 'Split'
    end
    entry do
      td_command 'CTRL+ALT+,'
      name 'Thread Form'
    end
    entry do
      td_command 'CTRL+ALT+.'
      name 'Unthread Form'
    end
    entry do
      td_command 'SHIFT+CMD+\''
      name 'Wrap with ""'
    end
    entry do
      td_command 'SHIFT+CMD+9'
      name 'Wrap with ()'
    end
    entry do
      td_command 'CMD+['
      name 'Wrap with []'
    end
    entry do
      td_command 'SHIFT+CMD+['
      name 'Wrap with {}'
    end
  end

  category do
    id 'REPL'

	header 'Mac'
	header 'Name'

	entry do
      td_command 'CMD+\\'
      name 'Jump to REPL editor'
    end
    entry do
      td_command 'SHIFT+CMD+L'
      name 'Load file in REPL'
    end
    entry do
      td_command 'CMD+DOWN'
      name 'Next REPL history item'
    end
    entry do
      td_command 'CMD+UP'
      name 'Previous REPL history item'
    end
    entry do
      td_command 'ALT+CMD+E'
      name 'Search REPL history'
    end
    entry do
      td_command 'SHIFT+CMD+P'
      name 'Send top form to REPL'
    end
    entry do
      td_command 'SHIFT+CMD+N'
      name 'Switch REPL NS to current file'
    end
    entry do
      td_command 'SHIFT+CMD+M'
      name 'Sync files in REPL'
    end
    entry do
      td_command 'SHIFT+CMD+\\'
      name 'View macro expansion'
    end
  end
  
  category do
    id 'Navigation'

	header 'Mac'
	header 'Name'

	entry do
      td_command 'CMD+LEFT'
      name 'Move Backward'
    end
    entry do
      td_command 'CMD+RIGHT'
      name 'Move Forward'
    end
    entry do
      td_command 'CTRL+SHIFT+O'
      name 'Open Namespace...'
    end
  end
    
  category do
    id 'Other'
    
    header 'Mac'
	header 'Name'
    
    entry do
      td_command 'CTRL+SHIFT+P'
      name 'Show Element Type'
    end
  end
  
  notes "The default Cursive keybindings are a subset of Cursive's supported actions. Manage them in Preferences > Keymap."
end
