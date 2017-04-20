cheatsheet do
  title 'emacsIDEAs' # Will be displayed by Dash in the docset list
  docset_file_name 'emacsIDEAs' # Used for the filename of the docset
  keyword 'emacsideas' # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction '[emacsIDEAs](https://plugins.jetbrains.com/plugin/7163) plugin cheatsheet for [IntelliJ IDEA](https://www.jetbrains.com/idea/)' # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'AceJump' # Must be unique and is used as title of the category

    entry do
      command "CTRL+L 't' 'm'" # Optional
      name 'Basic Word Jump' # A short name, can contain Markdown or HTML
      notes <<-'END'
        'Type CTRL+L, then type target char (eg. 't') to jump to, then type marker char (eg. 'm') to move caret'
      END
    end
    entry do
      command "CTRL+J 't' 'm'"
      name 'Basic Char Jump'
    end
  end

  category do
    id 'AceJump, jump to special place'

    entry do
      command "CTRL+L '␣' 'm'"
      name 'Jump to line end or start'
      notes <<-'END'
        To show marker on line end and line start, type space ' ' as target char
      END
    end

    entry do
      command "CTRL+L ',' 'm'"
      name 'Jump to symbol key'
      notes <<-'END'
        Show markers on ```.\{}(|\`/\\;.{}()\[]?\_=-+'"!@#$%^&\*)\_=```
      END
    end
  end

  category do
    id 'Copy without selection'

    entry do
      command "CTRL+c w"
      name 'Copy word'
    end

    entry do
      command "CTRL+c s"
      name 'Copy string'
    end

    entry do
      command "CTRL+c l"
      name 'Copy line'
    end

    entry do
      command "CTRL+c b"
      name 'Copy block between balanced { and }'
    end

    entry do
      command "CTRL+c q"
      name 'Copy quoted, such as abcd in "abcd"'
    end

    entry do
      command "CTRL+c a"
      name 'Copy to line beginning'
    end

    entry do
      command "CTRL+c A"
      name 'Copy to file beginning'
    end

    entry do
      command "CTRL+c e"
      name 'Copy to line end'
    end

    entry do
      command "CTRL+c E"
      name 'Copy to file end'
    end

    entry do
      command "CTRL+c p"
      name 'Copy paragraph'
    end

    entry do
      command "CTRL+c u"
      name 'Copy to paragraph begining'
    end

    entry do
      command "CTRL+c d"
      name 'Copy to paragraph end'
    end

    entry do
      command "CTRL+c '␣' (w | s | l | q | a | A | e | E | p | u | d | b)"
      name 'Type one space to cut related area'
    end

    entry do
      command "CTRL+c '␣' '␣' (w | s | l | q | a | A | e | E | p | u | d | b)"
      name 'Type two space to select related area'
    end

  end

  category do
    id "Replace target (word | line | paragraph) with text at current caret"

    entry do
      command "CTRL+i CTRL+w 't' 'm'"
      name 'replace target word'
    end

    entry do
      command "CTRL+i CTRL+s 't' 'm'"
      name 'replace target string'
    end

    entry do
      command "CTRL+i CTRL+l 't' 'm'"
      name 'replace target line'
    end

    entry do
      command "CTRL+i CTRL+b 't' 'm'"
      name 'replace target block'
    end

    entry do
      command "CTRL+i CTRL+q 't' 'm'"
      name 'replace target quote'
    end

    entry do
      command "CTRL+i CTRL+a 't' 'm'"
      name 'replace target to line begining'
    end

    entry do
      command "CTRL+i CTRL+e 't' 'm'"
      name 'replace target char to line end'
    end

    entry do
      command "CTRL+i CTRL+p 't' 'm'"
      name 'replace target paragraph'
    end

    entry do
      command "CTRL+i CTRL+u 't' 'm'"
      name 'replace target to paragraph beginning'
    end

    entry do
      command "CTRL+i CTRL+d 't' 'm'"
      name 'replace target to paragraph end'
    end

  end

  category do
    id "Obtain target (word | line | paragraph), then replace text at current caret"

    entry do
      command "CTRL+o CTRL+w 't' 'm'"
      name "obtain target word, then replace current word"
    end

    entry do
      command "CTRL+o CTRL+s 't' 'm'"
      name "obtain target string, then replace current string"
    end

    entry do
      command "CTRL+o CTRL+l 't' 'm'"
      name "obtain target line, then replace current line"
    end

    entry do
      command "CTRL+o CTRL+b 't' 'm'"
      name "obtain target block"
    end

    entry do
      command "CTRL+o CTRL+q 't' 'm'"
      name "obtain target quote"
    end

    entry do
      command "CTRL+o CTRL+a 't' 'm'"
      name "obtain target to line beginning"
    end

    entry do
      command "CTRL+o CTRL+e 't' 'm'"
      name "obtain target char to line end"
    end

    entry do
      command "CTRL+o CTRL+p 't' 'm'"
      name "obtain target paragraph"
    end

    entry do
      command "CTRL+o CTRL+u 't' 'm'"
      name "obtain target to paragraph beginning"
    end

    entry do
      command "CTRL+o CTRL+d 't' 'm'"
      name "obtain target to paragraph end"

    end

  end


  category do
    id "Copy target (word | line | paragraph), then insert text at current caret"

    entry do
      command "CTRL+w CTRL+w 't' 'm'"
      name "Copy target word, then insert at current caret"
    end

    entry do
      command "CTRL+w CTRL+s 't' 'm'"
      name "Copy target string, then insert at current caret"
    end

    entry do
      command "CTRL+w CTRL+l 't' 'm'"
      name "Copy target line, then insert at current caret"
    end

    entry do
      command "CTRL+w CTRL+b 't' 'm'"
      name "Copy target block"
    end

    entry do
      command "CTRL+w CTRL+q 't' 'm'"
      name "Copy target quote"
    end

    entry do
      command "CTRL+w CTRL+a 't' 'm'"
      name "Copy target to line beginning"
    end

    entry do
      command "CTRL+w CTRL+e 't' 'm'"
      name "Copy target char to line end"
    end

    entry do
      command "CTRL+w CTRL+p 't' 'm'"
      name "Copy target paragraph"
    end

    entry do
      command "CTRL+w CTRL+u 't' 'm'"
      name "Copy target to paragraph beginning"
    end
    entry do
      command "CTRL+w CTRL+d 't' 'm'"
      name "Copy target to paragraph end"
    end
  end

  category do
    id "Cut target (word | line | paragraph), then insert text at current caret"

    entry do
      command "CTRL+x CTRL+w 't' 'm'"
      name "Cut target word, then insert at current caret"
    end

    entry do
      command "CTRL+x CTRL+s 't' 'm'"
      name "Cut target string, then insert at current caret"
    end

    entry do
      command "CTRL+x CTRL+l 't' 'm'"
      name "Cut target line, then insert at current caret"
    end

    entry do
      command "CTRL+x CTRL+b 't' 'm'"
      name "Cut target block"
    end

    entry do
      command "CTRL+x CTRL+q 't' 'm'"
      name "Cut target quote"
    end

    entry do
      command "CTRL+x CTRL+a 't' 'm'"
      name "Cut target to line beginning"
    end

    entry do
      command "CTRL+x CTRL+e 't' 'm'"
      name "Cut target char to line end"
    end

    entry do
      command "CTRL+x CTRL+p 't' 'm'"
      name "Cut target paragraph"
    end

    entry do
      command "CTRL+x CTRL+u 't' 'm'"
      name "Cut target to paragraph beginning"
    end

    entry do
      command "CTRL+x CTRL+d 't' 'm'"
      name "Cut target to paragraph end"
    end

  end

  category do
    id "Highlight symbol"

    entry do
      command "CTRL+,"
      name "hightlight-symbol-prev | Jump to prev occurrence of symbol that around caret"
    end

    entry do
      command "CTRL+."
      name "hightlight-symbol-next | Jump to next occurrence of symbol that around caret"
    end
  end

  category do
    id "Just one space"

    entry do
      command "CTRL+M-Space"
      name "Make just one space around caret by Ctrl-Cmd-Space"
    end
  end

  category do
    id "Separate AceJump copy,cut,select command"

    entry do
      command "CTRL+i CTRL+c 't' 'm'"
      name "Copy jump area | CTRL+i CTRL+c means type CTRL+i then continue type CTRL+c"
    end

    entry do
      command "CTRL+i CTRL+x 't' 'm'"
      name "Cut jump area"
    end

    entry do
      command "CTRL+i CTRL+i 't' 'm'"
      name "Select jump area"
    end

    entry do
      command "CTRL+i CTRL+f 't' 'm'"
      name "Basic Jump alias"
    end
  end

  category do
    id "Copy and Replace"

    entry do
      command "CTRL+I CTRL+R (w | s | l | q | a | A | e | E | p | u | d) 't' 'm'"
      name "copy current word/line/paragraph, jump, then replace target word/line/paragraph"
    end

  end

  notes <<-'END'
    #### Recent change notes
    1.3.2
    1. fix wrong selection issue after "Cut target paragraph" command. CTRL+x CTRL+p 't' 'm'

    1.3.0
    1. CTRL+i CTRL+s 't' 'm': Select jump area ---changed_to----> CTRL+i CTRL+i 't' 'm'
    2. Add obtain(copy) remote target(w,l,e,p,b) and replace current(w,l,e,p,b) command:
    CTRL+o CTRL+(w | s | l | q | a | e | p | u | d | b) 3. extend CTRL+i CTRL+(w|l|p) to CTRL+I CTRL+(w | s | l | q | a | e | p | u | d | b)

    1.2.0
    1. Remove support for command: CTRL+L 't' (c, x, p, P, s) 'm'
    instead using the command: CTRL+i CTRL+(c,x,s) 't' 'm'

    1.1.9
    Add action to copy current word | line | paragraph, jump, then replace target word/line/paragraph.
    CTRL+I CTRL+R (w | s | l | q | a | A | e | E | p | u | d) 't' 'm'

    1.1.8
    Add hightlight-symbol-prev and hightlight-symbol-next

    1.1.7
    Let cut to paragraph end(CTRL+c ' ' d) and cut paragraph (CTRL+c ' ' p) skip ending brackets.

    1.1.6
    Add Jump Word Action, and assigned to CTRL+L. Jump Char Action assigned to CTRL+J.

    1.1.5
    Changed AceJump's keymap to be more intuitive one. such as "CTRL+L CTRL+s" for select jump area.

    1.1.0
    Add copy without selection

    1.0
    Add basic AceJump function

  END

end
