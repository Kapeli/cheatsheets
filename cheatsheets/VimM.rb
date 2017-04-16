cheatsheet do
    title ' Vim mobile friendly'
    docset_file_name 'VimM'
    keyword 'vimm'
    source_url 'http://vim.rtorr.com/'
    
  category do
      id 'Cursor movement'
      entry do
          command 'h'
          name    'move cursor left'
      end
      entry do
          command 'j'
          name    'move cursor down'
      end
      entry do
          command 'k'
          name    'move cursor up'
      end
      entry do
          command 'l'
          name    'move cursor right'
      end
      entry do
          command 'w'
          name    'jump forwards to the start of a word'
      end
      entry do
          command 'W'
          name    'jump forwards to the start of a word (words can contain punctuation)'
      end
      entry do
          command 'e'
          name    'jump forwards to the end of a word'
      end
      entry do
          command 'E'
          name    'jump forwards to the end of a word (words can contain punctuation)'
      end
      entry do
          command 'b'
          name    'jump backwards to the start of a word'
      end
      entry do
          command 'B'
          name    'jump backwards to the start of a word (words can contain punctuation)'
      end
      entry do
          command '0'
          name    'jump to the start of the line'
      end
      entry do
          command '^'
          name    'jump to the first non-blank character of the line'
      end
      entry do
          command '$'
          name    'jump to the end of the line'
      end
      entry do
          command 'G'
          name    'go to the last line of the document'
      end
      entry do
          command '5G'
          name    'go to line 5'
      end
      entry do
          command 'Tip'
          name    ' Prefix a cursor movement command with a number to repeat it. For example, 4j moves down 4 lines.'
      end
  end
  category do
      id 'Insert mode: inserting/appending text'
      entry do
          command 'i'
          name    'insert before the cursor'
      end
      entry do
          command 'I'
          name    'insert at the beginning of the line'
      end
      entry do
          command 'a'
          name    'insert (append) after the cursor'
      end
      entry do
          command 'A'
          name    'insert (append) at the end of the line'
      end
      entry do
          command 'o'
          name    'append (open) a new line below the current line'
      end
      entry do
          command 'O'
          name    'append (open) a new line above the current line'
      end
      entry do
          command 'ea'
          name    'insert (append) at the end of the word'
      end
      entry do
          command 'Esc'
          name    'exit insert mode'
      end
  end
  category do
      id 'Editing'
      entry do
          command 'r'
          name    'replace a single character'
      end
      entry do
          command 'J'
          name    'join line below to the current one'
      end
      entry do
          command 'cc'
          name    'change (replace) entire line'
      end
      entry do
          command 'cw'
          name    'change (replace) to the end of the word'
      end
      entry do
          command 'c$'
          name    'change (replace) to the end of the line'
      end
      entry do
          command 's'
          name    'delete character and substitute text'
      end
      entry do
          command 'S'
          name    'delete line and substitute text (same as cc)'
      end
      entry do
          command 'xp'
          name    'transpose two letters (delete and paste)'
      end
      entry do
          command 'u'
          name    'undo'
      end
      entry do
          command 'Ctrl + r'
          name    'redo'
      end
      entry do
          command '.'
          name    'repeat last command'
      end
  end
  category do
      id 'Marking text (visual mode)'
      entry do
          command 'v'
          name    'start visual mode, mark lines, then do a command (like y-yank)'
      end
      entry do
          command 'V'
          name    'start linewise visual mode'
      end
      entry do
          command 'o'
          name    'move to other end of marked area'
      end
      entry do
          command 'Ctrl + v'
          name    'start visual block mode'
      end
      entry do
          command 'O'
          name    'move to other corner of block'
      end
      entry do
          command 'aw'
          name    'mark a word'
      end
      entry do
          command 'ab'
          name    'a block with ()'
      end
      entry do
          command 'aB'
          name    'a block with {}'
      end
      entry do
          command 'ib'
          name    'inner block with ()'
      end
      entry do
          command 'iB'
          name    'inner block with {}'
      end
      entry do
          command 'Esc'
          name    'exit visual mode'
      end
  end
  category do
      id 'Visual commands'
      entry do
          command '>'
          name    'shift text right'
      end
      entry do
          command '<'
          name    'shift text left'
      end
      entry do
          command 'y'
          name    'yank (copy) marked text'
      end
      entry do
          command 'd'
          name    'delete marked text'
      end
      entry do
          command '~'
          name    'switch case'
      end
  end
  category do
      id 'Cut and paste'
      entry do
          command 'yy'
          name    'yank (copy) a line'
      end
      entry do
          command '2yy'
          name    'yank (copy) 2 lines'
      end
      entry do
          command 'yw'
          name    'yank (copy) word'
      end
      entry do
          command 'y$'
          name    'yank (copy) to end of line'
      end
      entry do
          command 'p'
          name    'put (paste) the clipboard after cursor'
      end
      entry do
          command 'P'
          name    'put (paste) before cursor'
      end
      entry do
          command 'dd'
          name    'delete (cut) a line'
      end
      entry do
          command '2dd'
          name    'delete (cut) 2 lines'
      end
      entry do
          command 'dw'
          name    'delete (cut) word'
      end
      entry do
          command 'D'
          name    'delete (cut) to the end of the line'
      end
      entry do
          command 'd$'
          name    'delete (cut) to the end of the line'
      end
      entry do
          command 'x'
          name    'delete (cut) character'
      end
  end
  category do
      id 'Exiting'
      entry do
          command ':w'
          name    'write (save) the file, but don''t exit'
      end
      entry do
          command ':wq'
          name    'write (save) and quit'
      end
      entry do
          command ':x'
          name    'write (save) and quit'
      end
      entry do
          command ':q'
          name    'quit (fails if there are unsaved changes)'
      end
      entry do
          command ':q!'
          name    'quit and throw away unsaved changes'
      end
  end
  category do
      id 'Search and replace'
      entry do
          command '/pattern'
          name    'search for pattern'
      end
      entry do
          command '?pattern'
          name    'search backward for pattern'
      end
      entry do
          command 'n'
          name    'repeat search in same direction'
      end
      entry do
          command 'N'
          name    'repeat search in opposite direction'
      end
      entry do
          command ':%s/old/new/g'
          name    'replace all old with new throughout file'
      end
      entry do
          command ':%s/old/new/gc'
          name    'replace all old with new throughout file with confirmations'
      end
  end
  category do
      id 'Working with multiple files'
      entry do
          command ':e filename'
          name    'edit a file in a new buffer'
      end
      entry do
          command ':bnext or :bn'
          name    'go to the next buffer'
      end
      entry do
          command ':bprev or :bp'
          name    'go to the previous buffer'
      end
      entry do
          command ':bd'
          name    'delete a buffer (close a file)'
      end
      entry do
          command ':sp filename'
          name    'open a file in a new buffer and split window'
      end
      entry do
          command ':vsp filename'
          name    'open a file in a new buffer and vertically split window'
      end
      entry do
          command 'Ctrl + ws'
          name    'split window'
      end
      entry do
          command 'Ctrl + ww'
          name    'switch windows'
      end
      entry do
          command 'Ctrl + wq'
          name    'quit a window'
      end
      entry do
          command 'Ctrl + wv'
          name    'split window vertically'
      end
  end
  category do
      id 'Tabs'
      entry do
          command ':tabnew filename or :tabn filename'
          name    'open a file in a new tab'
      end
      entry do
          command 'Ctrl + wt'
          name    'move the current split window into its own tab'
      end
      entry do
          command 'gt or :tabnext or :tabn'
          name    'move to the next tab'
      end
      entry do
          command 'gT or :tabprev or :tabp'
          name    'move to the previous tab'
      end
      entry do
          command '#gt'
          name    'move to tab number #'
      end
      entry do
          command ':tabmove #'
          name    'move current tab to the #th position (indexed from 0)'
      end
      entry do
          command ':tabclose or :tabc'
          name    'close the current tab and all its windows'
      end
      entry do
          command ':tabonly or :tabo'
          name    'close all tabs except for the current one'
      end
  end
  notes <<-'END'
  
  notes <<-'END'
  Original cheatsheet from [rtorr/vim-cheat-sheet](https://github.com/rtorr/vim-cheat-sheet)
  <br />
  Create the docset:<br />
  Copy the text from [Vim Cheat Sheet](http://vim.rtorr.com/) and then substitute text with your text editor of choice.  
  END

end
