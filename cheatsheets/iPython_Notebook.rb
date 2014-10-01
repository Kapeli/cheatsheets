cheatsheet do
	title 'IPython Notebook'
	docset_file_name 'iPython_Notebook'
	keyword 'ipynb'
	introduction 'IPython Notebook has two sets of keyboard shorcuts. Edit mode is active when the cursor is in a cell and the cell has a green border. Command mode is active when the cell has a grey border and the editing cursor is not inside any cell.'
	source_url 'http://cheat.kapeli.com'

	category do
		id 'Active in Both Modes'
		entry do
			command 'CTRL+Enter'
			name 'Run cell'
		end
		entry do
			command 'SHIFT+Enter'
			name 'Run cell and select cell below'
		end
		entry do
			command 'ALT+Enter'
			name 'Run cell and insert new cell below'
		end
		entry do
			command 'CMD+S'
			command 'CTRL+S'
			name 'Save notebook'
		end
	end
		
	
	category do
		id 'Edit Mode'
		entry do
			command 'Esc'
			command 'CTRL+M'
			name 'Command mode'
		end
		entry do
			command 'ALT+"-"'
			name 'Split Cell'
		end
	end
	
	category do
		id 'Command Mode'
		entry do
			command 'Enter'
			name 'Go to edit mode'
		end
		entry do
			command 'Y'
			name 'Switch cell to code mode'
		end
		entry do
			command 'M'
			name 'Switch cell to Markdown/LaTeX mode'
		end
		entry do
			command '1..6'
			name 'Switch cell to Heading of respective level (1-6)'
		end	
		entry do
			command 'Arrow Up'
			command 'K'
			name 'Go to cell above'
		end
		entry do
			command 'Arrow Down'
			command 'J'
			name 'Go to cell below'
		end
		entry do
			command 'CTRL+K'
			name 'Move cell up'
		end
		entry do
			command 'CTRL+J'
			name 'Move cell down'
		end
		entry do
			command 'A'
			name 'Insert cell above'
		end
		entry do
			command 'B'
			name 'Insert cell below'
		end
		entry do
			command 'X'
			name 'Cut cell'
		end
		entry do
			command 'C'
			name 'Copy cell'
		end
		entry do
			command 'V'
			name 'Paste cell below'
		end
		entry do
			command 'D D'
			name 'Delete Cell'
			notes 'Press twice'
		end
		entry do
			command 'Z'
			name 'Undo delete'
		end
		entry do
			command 'SHIFT+='
			name 'Merge with cell below'
		end
		entry do
			command 'L'
			name 'Toggle line numbers'
		end
		entry do
			command 'O'
			command 'SHIFT+O'
			name 'Toggle output'
		end
		entry do
			command 'I'
			name 'Interrupt kernel'
		end
		entry do
			command '.'
			name 'Restart kernel'
		end
	end
end
