cheatsheet do
  title "ranger file manager"
  docset_file_name "ranger"
  keyword "ranger"
  source_url 'http://cheat.kapeli.com'

  introduction "[ranger file manager](https://ranger.github.io/)"

  category do
    id "Navigation"
    entry do
      command "j"
      name "Move up"
    end
    entry do
      command "k"
      name "Move down"
    end
    entry do
      command "l"
      name "Open directory or file"
    end
    entry do
      command "h"
      name "Go to parent directory"
    end
    entry do
      command "i"
      name "Preview file"
    end
    entry do
      command "q"
      name "Quit"
    end
  end
  category do
    id "Actions prefixes"
    entry do
      command "g"
      name "Go (navigation or tabs)"
    end
    entry do
      command "r"
      name "Open with"
    end
    entry do
      command "y"
      name "Yank/copy"
    end
    entry do
      command "d"
      name "Delete/cut"
    end
    entry do
      command "p"
      name "Paste"
    end
    entry do
      command "o"
      name "sOrt"
    end
    entry do
      command "."
      name "Filter stack"
    end
    entry do
      command "u"
      name "Undo"
    end
    entry do
      command "z"
      name "Settings"
    end
    entry do
      command "M"
      name "lineMode (file details)"
    end
    entry do
      command "+"
      command "-"
      command "="
      name "chmod"
    end
    entry do
      command "?"
      name "Help"
    end
  end
  category do
    id "Marking"
    entry do
      command "space"
      name "Mark current file"
    end
    entry do
      command "v"
      name "Invert selection"
    end
    entry do
      command "V"
      name "Visual mark mode"
    end
    entry do
      command "uv"
      name "Unmark all"
    end
    entry do
      command ":mark REGEX"
      name "Mark by regex"
    end
  end
  category do
    id "Renaming"
    entry do
      command "cw"
      command ":rename"
      name "Rename file"
      notes "Rename extension `:rename %s.txt`"
    end
    entry do
      command ":bulkrename"
      name "Bulk rename files in external editor"
    end
  end
  category do
    id "Go"
    entry do
      command "gh"
      name "Jump to home"
    end
    entry do
      command "gg"
      name "Jump to first line"
    end
    entry do
      command "G"
      name "Jump to last line"
    end
    entry do
      command "gn"
      name "New tab"
    end
    entry do
      command "gt"
      name "Next tab"
    end
    entry do
      command "gT"
      name "Previous tab"
    end
    entry do
      command "OPTION-N"
      name "Go to Nth tab"
    end
    entry do
      command ":travel"
      name "Jump to directory"
    end
  end
  category do
    id "Settings"
    entry do
      command "zh"
      command "CTRL-h"
      command "backspace"
      name "Toggle hidden files"
    end
    entry do
      command "zi"
      name "Toggle image previews"
    end
  end
  category do
    id "Bookmarks"
    entry do
      command "m<key>"
      name "Create bookmark named <key>"
    end
    entry do
      command "'<key>"
      name "Jump to bookmark named <key>"
    end
    entry do
      command "''"
      name "Jump to last position"
    end
  end
end
