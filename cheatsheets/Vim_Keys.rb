cheatsheet do
    title 'Vim Keys'
    docset_file_name 'Vim Keys'
    keyword 'vimk'
    source_url 'http://cheat.kapeli.com'

    category do
        id 'Cursor Movement'

        entry do
            command 'h'
            name 'Move cursor left'
        end
        entry do
            command 'j'
            name 'Move cursor down'
        end
        entry do
            command 'k'
            name 'Move cursor up'
        end
        entry do
            command 'l'
            name 'Move cursor right'
        end
        entry do
            command 'w'
            name 'Jump forward to the start of a word'
        end
        entry do
            command 'W'
            name 'Jump forward to the start of a word'
            notes '(Words can contain puncuation)'
        end
        entry do
            command 'e'
            name 'Jump forward to the end of a word'
        end
        entry do
            command 'E'
            name 'Jump forward to the end of a word'
            notes '(Words can contain puncuation)'
        end
        entry do
            command 'b'
            name 'Jump backward to the start of a word'
        end
        entry do
            command 'B'
            name 'Just backward to the start of a word'
            notes '(words can contain puncuation)'
        end
        entry do
            command '0'
            name 'Jump to the start of the line'
        end
        entry do
            command '^'
            name 'Jump to the first non-blank character of the line'
        end
        entry do
            command '$'
            name 'Jump to the end of the line'
        end
        entry do
            command 'G'
            name 'Go to the last line of the document'
        end
        entry do
            command '[#]G'
            name 'Go to line #'
        end
    end

    category do
        id 'Insert Mode - Inserting/Appending Text'

        entry do
            command 'i'
            name 'Insert before the cursor'
        end
        entry do
            command 'I'
            name 'Insert at the beginning of the line'
        end
        entry do
            command 'a'
            name 'Insert (append) after the cursor'
        end
        entry do
            command 'A'
            name 'Insert (append) at the end of the line'
        end
        entry do
            command 'o'
            name 'Append (open) a new line below the current line'
        end
        entry do
            command 'O'
            name 'Append (open) a new line above the current line'
        end
        entry do
            command 'ea'
            name 'Insert (append) at the end of the word'
        end
        entry do
            command 'Esc'
            name 'Exit insert mode'
        end
    end

    category do
        id 'Editing'
        entry do
            command 'r'
            name 'Replace a single character'
        end
        entry do
            command 'J'
            name 'Join line below to the current one'
        end
        entry do
            command 'cc'
            name 'Change (replace) entire line'
        end
        entry do
            command 'cw'
            name 'Change (replace) to the end of the word'
        end
        entry do
            command 'c$'
            name 'Change (replace) to the end of the line'
        end
        entry do
            command 's'
            name 'Delete character and substitute text'
        end
        entry do
            command 'S'
            name 'Delete line and substitute text (same as cc)'
        end
        entry do
            command 'xp'
            name 'Transpose two letters (delete and paste)'
        end
        entry do
            command 'u'
            name 'Undo'
        end
        entry do
            command 'Ctrl + r'
            name 'Redo'
        end
        entry do
            command '.'
            name 'Repeat last command'
        end
    end

    category do
        id 'Marking Text (visual Mode)'
        entry do
            command 'v'
            name 'Start visual mode'
            notes 'Mark lines, then do a command (like y-yank)'
        end
        entry do
            command 'V'
            name 'Start linewise visual mode'
        end
        entry do
            command 'o'
            name 'Move to other end of marked area'
        end
        entry do
            command 'Ctrl + v'
            name 'Start visual block mode'
        end
        entry do
            command 'O'
            name 'Move to other corner of block'
        end
        entry do
            command 'aw'
            name 'Mark a word'
        end
        entry do
            command 'ab'
            name 'A block with ()'
        end
        entry do
            command 'aB'
            name 'A block with {}'
        end
        entry do
            command 'ib'
            name 'Inner block with ()'
        end
        entry do
            command 'iB'
            name 'Inner block with {}'
        end
        entry do
            command 'Esc'
            name 'Exit visual mode'
        end
    end

    category do
        id 'Visual commands'

        entry do
            command '>'
            name 'Shift text right'
        end
        entry do
            command '<'
            name 'Shift text left'
        end
        entry do
            command 'y'
            name 'Yank (copy) marked text'
        end
        entry do
            command 'd'
            name 'Delete marked text'
        end
        entry do
            command '~'
            name 'Switch case'
        end
    end

    category do
        id 'Cut and Paste'


        entry do
            command 'yy'
            name 'Yank (copy) a line'
        end
        entry do
            command '2yy'
            name 'Yank (copy) 2 lines'
        end
        entry do
            command 'yw'
            name 'Yank (copy) word'
        end
        entry do
            command 'y$'
            name 'Yank (copy) to end of line'
        end
        entry do
            command 'p'
            name 'Put (paste) the clipboard after cursor'
        end
        entry do
            command 'P'
            name 'Put (paste) before cursor'
        end
        entry do
            command 'dd'
            name 'Delete (cut) a line'
        end
        entry do
            command '2dd'
            name 'Delete (cut) 2 lines'
        end
        entry do
            command 'dw'
            name 'Delete (cut) word'
        end
        entry do
            command 'D'
            name 'Delete (cut) to the end of the line'
        end
        entry do
            command 'd$'
            name 'Delete (cut) to the end of the line'
        end
        entry do
            command 'x'
            name 'Delete (cut) character'
        end
    end

    category do
        id 'Exiting'

        entry do
            command ':w'
            name 'Write file'
            notes 'Does not exit'
        end
        entry do
            command ':wq'
            command ':x'
            command 'ZZ'
            name 'Write and quit'
        end
        entry do
            command ':q'
            name 'Quit'
            notes '(Fails if there are unsaved changes)'
        end
        entry do
            command ':q!'
            command 'ZQ'
            name 'Quit and throw away unsaved changes'
        end
    end

    category do
        id 'Search and Replace'

        entry do
            command '/pattern'
            name 'Search for pattern'
        end
        entry do
            command '?pattern'
            name 'Search backward for pattern'
        end
        entry do
            command 'n'
            name 'Repeat search in same direction'
        end
        entry do
            command 'N'
            name 'Repeat search in opposite direction'
        end
        entry do
            command ':%s/old/new/g'
            name 'Replace all old with new throughout file'
        end
        entry do
            command ':%s/old/new/gc'
            name 'Replace all old with new throughout file with confirmations'
        end
    end

    category do
        id 'Working with Multiple Files'

        entry do
            command ':e filename'
            name 'Edit a file in a new buffer'
        end
        entry do
            command ':bnext'
            command ':bn'
            name 'Go to the next buffer'
        end
        entry do
            command ':bprev'
            command ':bp'
            name 'Go to the previous buffer'
        end
        entry do
            command ':bd'
            name 'Delete a buffer (close a file)'
        end
        entry do
            command ':sp filename'
            name 'Open a file in a new buffer and split window'
        end
        entry do
            command ':vsp filename'
            name 'Open a file in a new buffer and vertically split window'
        end
        entry do
            command 'Ctrl + ws'
            name 'Split window'
        end
        entry do
            command 'Ctrl + ww'
            name 'Switch windows'
        end
        entry do
            command 'Ctrl + wq'
            name 'Quit a window'
        end
        entry do
            command 'Ctrl + wv'
            name 'Split window vertically'
        end
        entry do
            command 'Ctrl + wh'
            name 'Move cursor to the left window (vertical split)'
        end
        entry do
            command 'Ctrl + wl'
            name 'Move cursor to the right window (vertical split)'
        end
        entry do
            command 'Ctrl + wj'
            name 'Move cursor to the window below (horizontal split)'
        end
        entry do
            command 'Ctrl + wk'
            name 'Move cursor to the window above (horizontal split)'
        end
    end

    category do
        id 'Tabs'

        entry do
            command ':tabnew filename'
            command ':tabn filename'
            name 'Open a file in a new tab'
        end
        entry do
            command 'Ctrl + wT'
            name 'Move the current split window into its own tab'
        end
        entry do
            command 'gt'
            command ':tabnext'
            command ':tabn'
            name 'Move to the next tab'
        end
        entry do
            command 'gT'
            command ':tabprev'
            command ':tabp'
            name 'Move to the previous tab'
        end
        entry do
            command '#gt'
            name 'Move to tab number #'
        end
        entry do
            command ':tabmove #'
            name 'Move current tab to the #th position (indexed from 0)'
        end
        entry do
            command ':tabclose'
            command ':tabc'
            name 'Close the current tab and all its windows'
        end
        entry do
            command ':tabonly'
            command ':tabo'
            name 'Close all tabs except for the current one'
        end
    end

    notes <<-'END'
    * Based on the cheat sheet from [vim.rtorr.com](http://vim.rtorr.com/).
    * Converted by [fskirschbaum](https://github.com/fskirschbaum).
    END
end