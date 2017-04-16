cheatsheet do
  title 'Keybinding Madness'
  docset_file_name 'KeybindingMadness'
  keyword 'keybindings'
  source_url 'http://ttscoff.github.io/KeyBindings/'

  category do
    id 'General Commands'
    entry do
      command '^y'
      name 'replace yank: command with yankAndSelect for use with the kill ring ( defaults write -g NSTextKillRingSize -string 6)'
    end
    entry do
      command '^⇧u'
      name 'uppercase word'
    end
    entry do
      command '^⌥u'
      name 'lowercase word'
    end
    entry do
      command '^⇧t'
      name 'titlecase word'
    end
    entry do
      command '^⌥⇧u'
      name 'uppercase current paragraph'
    end
    entry do
      command '^⌥t'
      name 'titlecase paragraph'
    end
    entry do
      command '^w'
      name 'delete word before cursor'
    end
    entry do
      command '⌥w'
      name 'select word'
    end
    entry do
      command '⌥⇧s'
      name 'select entire line/paragraph'
    end
    entry do
      command '⌥s'
      name 'select from beginning of paragrah to last character'
    end
    entry do
      command '^⌥⇧s'
      name 'select paragraph excluding leading/trailing whitespace (same as ^$@\UF701)'
    end
    entry do
      command '⌥d'
      name 'delete line/paragraph'
    end
    entry do
      command '⌥y'
      name 'copy paragraph'
    end
    entry do
      command '⌥x'
      name 'cut paragraph'
    end
    entry do
      command '⌥p'
      name 'paste paragraph below'
    end
    entry do
      command '⌥⇧p'
      name 'paste paragraph above'
    end
    entry do
      command '^⇧a'
      name 'select to beginning of paragraph and copy'
    end
    entry do
      command '^⇧e'
      name 'select to end of paragraph and copy'
    end
    entry do
      command '⌥q'
      name 'cut to beginning of paragraph'
    end
    entry do
      command '⌥k'
      name 'cut to end of paragraph'
    end
    entry do
      command '⌥o'
      name 'blank line after current'
    end
    entry do
      command '⌥⇧o'
      name 'blank line before current'
    end
    entry do
      command '^⌘k'
      name 'move line up'
    end
    entry do
      command '^⌘j'
      name 'move line down'
    end
    entry do
      command '^⌘l'
      name 'indent line'
    end
    entry do
      command '^⌘h'
      name 'outdent line (one tab or char)'
    end
    entry do
      command '^⌘↑'
      name 'move line up ( same commands but with arrow keys)'
    end
    entry do
      command '^⌘↓'
      name 'move line down'
    end
    entry do
      command '^⌘→'
      name 'indent line'
    end
    entry do
      command '^⌘←'
      name 'outdent line (one tab or char)'
    end
    entry do
      command '^⇧⌘←'
      name 'Full outdent - Deletes all leading space of line/paragraph (updated) ( Control-shift-command-left arrow)'
    end
    entry do
      command '^⇧⌘→'
      name 'Delete trailing space'
    end
    entry do
      command '^⌘⇧↑'
      name 'Delete leading and trailing whitespace for paragraph'
    end
    entry do
      command '^⌘⇧↓'
      name 'Select paragraph without leading or trailing whitespace (same as &#8220;^~s&#8221;)'
    end
    entry do
      command '⌘⌥⇧↑'
      name 'modify selection up by paragraph (Command Option Shift Up)'
    end
    entry do
      command '⌘⌥⇧↓'
      name 'modify selection down by paragraph (Command Option Shift Down)'
    end
    entry do
      command '^⌥⇧←'
      name 'modify selection left by word'
    end
    entry do
      command '^⌥⇧→'
      name 'modify selection right by word'
    end
    entry do
      command '⌘⌥^←'
      name 'Move to first Alphanumeric character of line (new)'
    end
    entry do
      command '⌘⌥←'
      name 'Move to first non-whitespace character of line (new)'
    end
    entry do
      command '⌘⌥⇧←'
      name 'Select to first character of line with leading space (new)'
    end
    entry do
      command '⌥⌘→'
      name 'Move to last non-whitespace character of paragraph (new)'
    end
    entry do
      command '^⌥→'
      name 'Move to end of paragraph and delete trailing whitespace (new)'
    end
    entry do
      command '⌘↩'
      name 'TextMate Command-Return (Command Enter)'
    end
    entry do
      command '⌘⇧↩'
      name 'Insert blank line above paragraph (Command Shift Enter)'
    end
    entry do
      command '⌥_'
      name 'hyphenate next space and move to next word ( this will kill non alphanumeric symbols and punctuation, use only on <em>words</em>)'
    end
    entry do
      command '⌥1'
      name 'bookmark'
    end
    entry do
      command '⌥2'
      name 'jump to bookmark'
    end
    entry do
      command '⌥⌘↩'
      name 'Continue a list item with indentation and include the same delimiter ( Command Option Enter)'
    end
    entry do
      command '⇧⇥'
      name 'remove one tab (or character) from start of line (outdent) ( Shift Tab)'
    end
    entry do
      command '⌘⌥b'
      name 'bold selection (Markdown)'
    end
    entry do
      command '⌘⌥i'
      name 'italicize selection (Markdown)'
    end
    entry do
      command '⌘⌥='
      name 'increase markdown header level'
    end
    entry do
      command '⌘⌥-'
      name 'decrease markdown header level'
    end
    entry do
      command '^⌥↩'
      name 'Add hard break for current line and insert newline below (new)'
    end
    entry do
      command '^⌘↩'
      name 'Break line at cursor and add Markdown hard line break (new)'
    end
    entry do
      command '^&lt;'
      name 'Make selected text into paired HTML tag. Allows attributes, only dupes first word into closing tag (caveat: overwrites your pasteboard)'
    end
    entry do
      command '⌥r'
      name 'repeat character before cursor'
    end
    entry do
      command '⌘⇧⌦'
      name 'Forward delete to end of paragraph'
    end
    entry do
      command '⌘⇧⌫'
      name 'Delete to beginning of paragraph'
    end
    entry do
      command '⌘⌥7'
      name 'Right mouse click (useless, doesn&#8217;t maintain cursor position)'
    end
  end

  category do
    id 'Commenting Commands'
    entry do
      command '^⌘c /'
      name 'comment with "//"'
    end
    entry do
      command '^⌘c \\'
      name 'comment with "#"'
    end
    entry do
      command '^⌘c !'
      name 'HTML commenting'
    end
    entry do
      command '^⌘c *'
      name 'Css Commenting'
    end
  end

  category do
    id 'Multi-stroke Markdown Commands  (^⌘w)'
    entry do
      command '^⌘w  ␍'
      name 'force carriage return in text field'
    end
    entry do
      command '^⌘w  ⇥'
      name 'force tab in text field'
    end
    entry do
      command '^⌘w  \\'
      name 'insert reference link <code>[selection][[cursor]]</code>'
    end
    entry do
      command '^⌘w  \\'
      name 'insert reference <code>[selection]: [cursor]</code>'
    end
    entry do
      command '^⌘w  +'
      name 'Unordered list item with'
    end
    entry do
      command '^⌘w  -'
      name 'Unordered list item with -'
    end
    entry do
      command '^⌘w  *'
      name 'Unordered list item with *'
    end
    entry do
      command '^⌘w  8'
      name 'convert current numbered list item to bullet, handles indentation'
    end
    entry do
      command '^⌘w  1'
      name 'convert current bullet list item to numbered'
    end
    entry do
      command '^⌘w h 1'
      name "#"
    end
    entry do
      command '^⌘w h 2'
      name "##"
    end
    entry do
      command '^⌘w h 3'
      name '###'
    end
    entry do
      command '^⌘w h 4'
      name '####'
    end
    entry do
      command '^⌘w h 5'
      name '#####'
    end
    entry do
      command '^⌘w h 6'
      name '######'
    end
    entry do
      command '^⌘w l t'
      name 'create a link for selected text, cursor between () <code>[selected text]([cursor])</code> ( links without selected text first, these can produce a mess using multiple clipboards make a text selection before you run them)'
    end
    entry do
      command '^⌘w l c'
      name 'create a link for selected text, inserting clipboard as url <code>[[cursor]selected text](clipboard contents)</code>'
    end
    entry do
      command '^⌘w i t'
      name 'same as lt, but with image syntax <pre>![selected text]([cursor])</pre>'
    end
    entry do
      command '^⌘w i c'
      name 'same as lc, but with image syntax <code>![selected text](clipboard)</code>'
    end
    entry do
      command '^⌘w : t'
      name 'create a reference link from selected text'
    end
    entry do
      command '^⌘w : c'
      name 'create a reference link from selected text, clipboard as url'
    end
  end

  category do
    id 'HTML Commands  (^⌘e)'
    entry do
      command '^⌘e  ='
      name '=&#8220;[cursor]&#8221;'
    end
    entry do
      command '^⌘e  e'
      name 'entity &amp;[cursor];'
    end
    entry do
      command '^⌘e  /'
      name 'http://'
    end
    entry do
      command '^⌘e  t'
      name 'Make previous word into paired HTML tag'
    end
    entry do
      command '^⌘e a t'
      name 'Insert HTML link for selected text, leave cursor in the href with &#8220;http://&#8221; selected'
    end
    entry do
      command '^⌘e a c'
      name 'Insert HTML link with clipboard as href'
    end
    entry do
      command '^⌘e i t'
      name 'Insert image tag, any selected text is alt text, leave cursor in src attribute'
    end
    entry do
      command '^⌘e i c'
      name 'Insert image tag, clipboard as src, any selected text as alt, leave cursor at beginning of alt attribute'
    end
  end

  category do
    id 'Surround Commands  (^⌘s)'
    entry do
      command '^⌘s  ('
      name 'wrap () with spaces'
    end
    entry do
      command '^⌘s  )'
      name 'wrap () no spaces'
    end
    entry do
      command '^⌘s  \    '
      name 'wrap [] with spaces'
    end
    entry do
      command '^⌘s  \    '
      name 'wrap [] no spaces'
    end
    entry do
      command '^⌘s  {'
      name 'wrap {} with spaces'
    end
    entry do
      command '^⌘s  }'
      name 'wrap {} no spaces'
    end
    entry do
      command '^⌘s  &lt;'
      name 'wrap &lt;&gt; with spaces'
    end
    entry do
      command '^⌘s  &gt;'
      name 'wrap &lt;&gt; no spaces'
    end
    entry do
      command '^⌘s  &#8217;'
      name 'wrap single quotes'
    end
    entry do
      command '^⌘s  `'
      name 'wrap backticks'
    end
  end

  notes 'Based on the Keybinding Madness layout by Brett Terpstra.'
end
