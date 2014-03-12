cheatsheet do
    title 'Vim'
    docset_file_name 'Vim'
    keyword 'vimc'
    source_url 'http://cheat.kapeli.com'
    
    category do
        id 'How to Exit'
        
        entry do
            command ':q[uit]'
            name 'Quit Vim'
            notes 'This fails when changes have been made'
        end
        entry do
            command ':q[uit]!'
            name 'Quit without writing'
        end
        entry do
            command ':cq[uit]'
            name 'Quit always, without writing'
        end
        entry do
            command ':wq'
            name 'Write the current file and exit'
        end
        entry do
            command ':wq!'
            name 'Write the current file and exit always'
        end
        entry do
            command ':wq {file}'
            name 'Write to {file}. Exit if not editing the last'
        end
        entry do
            command ':wq! {file}'
            name 'Write to {file} and exit always'
        end
        entry do
            command ':[range]wq[!]'
            name 'Write the lines in [range] and exit always'
        end
        entry do
            command 'ZZ'
            name 'Write current file, if modified, and exit'
        end
        entry do
            command 'ZQ'
            name 'Quit current file and exit'
            notes 'Same as `:q!`'
        end
        
    end

    category do
        id 'Editing a File'
        
        entry do
            command ':e[dit]'
            name 'Edit the current file'
            notes 'This is useful to re-edit the current file, when it has been changed outside of Vim'
        end
        entry do
            command ':e[dit]!'
            name 'Edit the current file always'
            notes 'Discard any changes to the current buffer. This is useful if you want to start all over again'
        end
        entry do
            command ':e[dit] {file}'
            name 'Edit {file}'
        end
        entry do
            command ':e[dit]! {file}'
            name 'Edit {file} always'
            notes 'Discard any changes to the current buffer'
        end
        entry do
            command 'gf'
            name 'Edit the file whose name is under or after the cursor'
            notes 'Mnemonic: `goto file`'
        end
    end

    category do
        id 'Inserting Text'
        
        entry do
            command 'a'
            name 'Append text after the cursor [count] times'
        end
        entry do
            command 'A'
            name 'Append text at the end of the line [count] times'
        end
        entry do
            command 'i'
            name 'Insert text before the cursor [count] times'
        end
        entry do
            command 'I'
            name 'Insert text before the first non-blank in the line [count] times'
        end
        entry do
            command 'gI'
            name 'Insert text in column 1 [count] times'
        end
        entry do
            command 'o'
            name 'Begin a new line below the cursor and insert text, repeat [count] times'
        end
        entry do
            command 'O'
            name 'Begin a new line above the cursor and insert text, repeat [count] times'
        end
    end

    category do
        id 'Inserting a File'
        entry do
            command ':r[ead] [name]'
            name 'Insert the file [name] below the cursor'
        end
        entry do
            command ':r[ead] !{cmd}'
            name 'Execute {cmd} and insert its standard output below the cursor'
        end
    end

    category do
        id 'Deleting Text'
        entry do
            command '<Del>'
            command 'x'
            name 'Delete [count] characters under and after the cursor'
        end
        entry do
            command 'X'
            name 'Delete [count] characters before the cursor'
        end
        entry do
            command 'd{motion}'
            name 'Delete text that {motion} moves over'
        end
        entry do
            command 'dd'
            name 'Delete [count] lines'
        end
        entry do
            command 'D'
            name 'Delete the characters under the cursor until the end of the line'
        end
        entry do
            command '{Visual}x'
            command '{Visual}d'
            name 'Delete the highlighted text'
            notes 'For {Visual} see Selecting Text'
        end
        entry do
            command '{Visual}CTRL-H'
            command '{Visual}<BS>'
            name 'Delete the highlighted text when in Select mode'
        end
        entry do
            command '{Visual}X'
            command '{Visual}D'
            name 'Delete the highlighted lines'
        end
        entry do
            command ':[range]d[elete]'
            name 'Delete [range] lines'
            notes 'Default: current line'
        end
        entry do
            command ':[range]d[elete] {count}'
            name 'Delete {count} lines, starting with [range]'
        end
    end

    category do
        id 'Changing or Replacing Text'
        entry do
            command 'r{char}'
            name 'Replace the character under the cursor with {char}'
        end
        entry do
            command 'R'
            name 'Enter Insert mode, replacing characters rather than inserting'
        end
        entry do
            command '~'
            name 'Switch case of the character under the cursor and move the cursor to the right'
            notes 'If a [count] is given, do that many characters'
        end
        entry do
            command '~{motion}'
            name 'Switch case of {motion} text'
        end
        entry do
            command '{Visual}~'
            name 'Switch case of highlighted text'
        end
    end

    category do
        id 'Substituting'
        entry do
            name 'For each line in [range] replace a match of {pattern} with {string}'
            notes '
            ```
            :[range]s[ubstitute]/{pattern}/{string}/[c][e][g][p][r][i][I] [count]
            ```'
        end
        entry do
            name 'Repeat last :substitute with same search pattern and substitute string, but without the same flags'
            notes '
            ```
            :[range]s[ubstitute] [c][e][g][r][i][I] [count] :[range]&[c][e][g][r][i][I] [count]
            ```
            You may add extra flags'
        end
        entry do
            notes <<-'END'
            The arguments that you can use for the substitute commands:

            * `[c]` Confirm each substitution. Vim positions the cursor on the matching string. You can type:
              * `y`      to substitute this match
              * `n`      to skip this match
              * `<Esc>`   to skip this match
              * `a`      to substitute this and all remaining matches {not in Vi}
              * `q`      to quit substituting {not in Vi}
              * `CTRL-E`  to scroll the screen up {not in Vi}
              * `CTRL-Y`  to scroll the screen down {not in Vi}

            * `[e]` When the search pattern fails, do not issue an error message and, in particular, continue in maps as if no error occurred
            * `[g]`  Replace all occurrences in the line. Without this argument, replacement occurs only for the first occurrence in each line
            * `[i]`  Ignore case for the pattern
            * `[I]`  Don't ignore case for the pattern
            * `[p]`  Print the line containing the last substitute
            END
        end
    end

    category do
        id 'Copying and Moving Text'
        entry do
            command '"{a-zA-Z0-9.%#:-"}'
            name 'Use register {a-zA-Z0-9.%#:-"} for next delete, yank or put'
            notes 'Use uppercase character to append with delete and yank. {.%#:} only work with put'
        end
        entry do
            command ':reg[isters]'
            command ':di[splay]'
            name 'Display the contents of all numbered and named registers'
        end
        entry do
            command ':reg[isters] {arg}'
            command ':di[splay] [arg]'
            name 'Display the contents of the numbered and named registers that are mentioned in {arg}'
        end
        entry do
            command '["x]y{motion}'
            name 'Yank {motion} text [into register x]'
        end
        entry do
            command '["x]yy'
            command '["x]Y'
            name 'Yank [count] lines [into register x]'
        end
        entry do
            command '{Visual}["x]y'
            name 'Yank the highlighted text \[into register x\]'
            notes 'For {Visual} see Selecting Text'
        end
        entry do
            command '{Visual}["x]Y'
            name 'Yank the highlighted lines [into register x]'
        end
        entry do
            command ':[range]y[ank] [x]'
            name 'Yank \[range\] lines [into register x]'
        end
        entry do
            command ':[range]y[ank] [x] {count}'
            name 'Yank {count} lines, starting with last line number in \[range\], [into register x]'
            notes 'Default: current line'
        end
        entry do
            command '["x]p'
            name 'Put the text [from register x] after the cursor [count] times'
        end
        entry do
            command '["x]P'
            name 'Put the text [from register x] before the cursor [count] times'
        end
        entry do
            command '["x]gp'
            name 'Just like `p`, but leave the cursor just after the new text'
        end
        entry do
            command '["x]gP'
            name 'Just like `P`, but leave the cursor just after the new text'
        end
        entry do
            command ':[line]pu[t] [x]'
            name 'Put the text [from register x] after \[line\]'
            notes 'Default: current line'
        end
        entry do
            command ':[line]pu[t]! [x]'
            name 'Put the text [from register x] before \[line\]'
            notes 'Default: current line'
        end
    end



    category do
        id 'Undo, Redo and Repeat'
        
        entry do
            command 'u'
            name 'Undo [count] changes'
        end
        entry do
            command ':u[ndo]'
            name 'Undo one change'
        end
        entry do
            command 'CTRL-R'
            name 'Redo [count] changes which were undone'
        end
        entry do
            command ':red[o]'
            name 'Redo one change which was undone'
        end
        entry do
            command 'U'
            name 'Undo all latest changes on one line. {Vi: while not moved off of it}'
        end
        entry do
            command '.'
            name 'Repeat last change, with count replaced with [count]'
        end
    end

    category do
        id 'Moving Around'
        
        entry do
            name 'Basic motion commands'
            notes <<-'END'
            ```
              k              <up>
            h   l      <left>    <right>
              j             <down>
            ```
            END
        end
        entry do
            command 'h'
            command '<Left>'
            name '[count] characters to the left (exclusive)'
        end
        entry do
            command 'l'
            command '<Right>'
            command '<Space'
            name '[count] characters to the right (exclusive)'
        end
        entry do
            command 'k'
            command '<Up>'
            command 'CTRL-P'
            name '[count] lines upward'
        end
        entry do
            command 'j'
            command '<Down>'
            command 'CTRL-J'
            command '<NL>'
            command 'CTRL-N'
            name '[count] lines downward (linewise)'
        end
        entry do
            command '0'
            command '<Home>'
            name 'To the first character of the line (exclusive)'
        end
        entry do
            command '^'
            name 'To the first non-blank character of the line'
        end
        entry do
            command '$'
            command '<End>'
            name 'To the end of the line and [count - 1] lines downward'
        end
        entry do
            command 'g0'
            command 'g<Home>'
            name 'To the first character of the screen line (exclusive) when lines wrap (\'wrap on). Differs from `0` when a line is wider than the screen

            To the leftmost character of the current line that is on the screen when lines don\'t wrap (\'wrap\' off). Differs from `0` when the first character of the line is not on the screen'
        end
        entry do
            command 'g^'
            name 'To the first non-blank character of the screen line (exclusive) when lines wrap (\'wrap\' on). Differs from `^` when a line is wider than the screen. 

            To the leftmost non-blank character of the current line that is on the screen when lines don\'t wrap (\'wrap\' off). Differs from `^` when the first non-blank character of the line is not on the screen'
        end
        entry do
            command 'g$ or g<End>'
            name 'To the last character of the screen line and [count - 1] screen lines downward (inclusive) when lines wrap (\'wrap\' on). Differs from `$` when a line is wider than the screen. 

            To the rightmost character of the current line that is visible on the screen when lines don\'t wrap (\'wrap\' off). Differs from `$` when the last character of the line is not on the screen or when a count is used'
        end
        entry do
            command 'f{char}'
            name 'To [count]\'th occurrence of {char} to the right. The cursor is placed on {char} (inclusive)'
        end
        entry do
            command 'F{char}'
            name 'To the [count]\'th occurrence of {char} to the left. The cursor is placed on {char} (inclusive)'
        end
        entry do
            command 't{char}'
            name 'Till before [count]\'th occurrence of {char} to the right. The cursor is placed on the character left of {char} (inclusive)'
        end
        entry do
            command 'T{char}'
            name 'Till after [count]\'th occurrence of {char} to the left. The cursor is placed on the character right of {char} (inclusive)'
        end
        entry do
            command ';'
            name 'Repeat latest f, t, F or T [count] times'
        end
        entry do
            command ','
            name 'Repeat latest f, t, F or T in opposite direction [count] times'
        end
        entry do
            command '-  <minus>'
            name '[count] lines upward, on the first non-blank character (linewise)'
        end
        entry do
            command '+ or CTRL-M or <CR>'
            name '[count] lines downward, on the first non-blank character
            (linewise)'
        end
        entry do
            command '_  <underscore>'
            name '[count] - 1 lines downward, on the first non-blank character (linewise)'
        end
        entry do
            command '<C-End> or G'
            name 'Goto line [count] on the first non-blank character'
            notes 'Default: last line'
        end
        entry do
            command '<C-Home>  or gg'
            name 'Goto line [count] on the first non-blank character'
            notes 'Default: first line'
        end
        entry do
            command '<S-Right>  or w'
            name '[count] words forward'
        end
        entry do
            command '<C-Right>  or W'
            name '[count] WORDS forward'
        end
        entry do
            command 'e'
            name 'Forward to the end of word [count]'
        end
        entry do
            command 'E'
            name 'Forward to the end of WORD [count]'
        end
        entry do
            command '<S-Left>  or b'
            name '[count] words backward'
        end
        entry do
            command '<C-Left>  or B'
            name '[count] WORDS backward'
        end
        entry do
            command 'ge'
            name 'Backward to the end of word [count]'
        end
        entry do
            command 'gE'
            name 'Backward to the end of WORD [count]'
        end
        
        entry do
            notes <<-'END'
            The following commands move over words or WORDS.

            A word consists of a sequence of letters, digits and underscores, or a sequence of other non-blank characters, separated with white space (spaces, tabs, &lt;EOL&gt;). This can be changed with the 'iskeyword' option.

            A WORD consists of a sequence of non-blank characters, separated with white space. An empty line is also considered to be a word and a WORD.
            END
        end
    
        entry do
            command '('
            name '[count] sentences backward'
        end
        entry do
            command ')'
            name '[count] sentences forward'
        end
        entry do
            command '{'
            name '[count] paragraphs backward'
        end
        entry do
            command '}'
            name '[count] paragraphs forward'
        end
        entry do
            command ']]'
            name '[count] sections forward or to the next \'{\' in the first column'
            notes 'When used after an operator, then the \'}\' in the first column'
        end
        entry do
            command ']['
            name '[count] sections forward or to the next \'}\' in the first column'
        end
        entry do
            command '[['
            name '[count] sections backward or to the previous \'{\' in the first column'
        end
        entry do
            command '[]'
            name '[count] sections backward or to the previous \'}\' in the first column'
        end

    end


    category do
        id 'Marks'
        entry do
            command 'm{a-zA-Z}'
            name 'Set mark {a-zA-Z} at cursor position'
            notes 'Does not move the cursor, this is not a motion command'
        end
        entry do
            command 'm\'  or m\`'
            name 'Set the previous context mark'
            notes 'This can be jumped to with the `\'\'` or ``` `` ``` command. Does not move the cursor, this is not a motion command'
        end
        entry do
            command ':[range]ma[rk] {a-zA-Z}'
            command ':[range]k{a-zA-Z}'
            name 'Set mark {a-zA-Z} at last line number in [range], column 0'
            notes 'Default is cursor line'
        end
        entry do
            command '\'{a-z}'
            name 'To the first non-blank character on the line with mark {a-z} (linewise)'
        end
        entry do
            command '\'{A-Z0-9}'
            name 'To the first non-blank character on the line with mark {A-Z0-9} in the correct file'
        end
        entry do
            command '`{a-z}'
            name 'To the mark {a-z}'
        end
        entry do
            command '`{A-Z0-9}'
            name 'To the mark {A-Z0-9} in the correct file'
        end
        entry do
            command ':marks'
            name 'List all the current marks (not a motion command)'
        end
        entry do
            command ':marks {arg}'
            name 'List the marks that are mentioned in {arg} (not a motion command). For example:'
        end
    end


    category do
        id 'Searching'
        entry do
            command '/{pattern}[/]<CR>'
            name 'Search forward for the [count]\'th occurrence of {pattern}'
        end
        entry do
            command '/{pattern}/{offset}<CR>'
            name 'Search forward for the [count]\'th occurrence of {pattern} and go {offset} lines up or down'
        end
        entry do
            command '/<CR>'
            name 'Search forward for the [count]\'th latest used pattern'
        end
        entry do
            command '//{offset}<CR>'
            name 'Search forward for the [count]\'th latest used pattern with new'
            notes 'If {offset} is empty no offset is used'
        end
        entry do
            command '?{pattern}[?]<CR>'
            name 'Search backward for the [count]\'th previous occurrence of {pattern}'
        end
        entry do
            command '?{pattern}?{offset}<CR>'
            name 'Search backward for the [count]\'th previous occurrence of {pattern} and go {offset} lines up or down'
        end
        entry do
            command '?<CR>'
            name 'Search backward for the [count]\'th latest used pattern'
        end
        entry do
            command '??{offset}<CR>'
            name 'Search backward for the [count]\'th latest used pattern with new {offset}'
            notes 'If {offset} is empty no offset is used'
        end
        entry do
            command 'n'
            name 'Repeat the latest `/` or `?` [count] times'
        end
        entry do
            command 'N'
            name 'Repeat the latest `/` or `?` [count] times in opposite direction'
        end
    end

    category do
        id 'Selecting Text (Visual Mode)'
    
        entry do
            notes <<-'END'
            To select text, enter visual mode with one of the commands below, and use motion commands to highlight the text you are interested in. Then, use some command on the text.

            The operators that can be used are:

            * `~`   switch case
            * `d`   delete
            * `c`   change
            * `y`   yank
            * `>`   shift right
            * `<`   shift left
            * `!`   filter through external command
            * `=`   filter through 'equalprg' option command
            * `gq`  format lines to 'textwidth' length
            END
        end
        entry do
            command 'v'
            name 'Start Visual mode per character'
        end
        entry do
            command 'V'
            name 'Start Visual mode linewise'
        end
        entry do
            command '<Esc>'
            name 'Exit Visual mode without making any changes'
        end
    end


    category do
        id 'How to Suspend'
    
        entry do
            command 'CTRL-Z'
            name 'Suspend Vim'
            notes 'Like `:stop`. Works in Normal and in Visual mode. In Insert and Command-line mode, the CTRL-Z is inserted as a normal character'
        end
        entry do
            command ':sus[pend][!]'
            command ':st[op][!]'
            name 'Suspend Vim!'
            notes 'If the \'!\' is not given and \'autowrite\' is set, every buffer with changes and a file name is written out. If the \'!\' is given or \'autowrite\' is not set, changed buffers are not written, don\'t forget to bring Vim back to the foreground later!'
        end
    
    end


    notes <<-'END'
    * Based on the cheat sheet from [fprintf](http://www.fprintf.net/vimCheatSheet.html).
    * Converted by [Arief Bayu Purwanto](https://github.com/ariefbayu).
    END
end
