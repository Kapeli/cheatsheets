# encoding: utf-8

cheatsheet do
  title 'Ulysses for Mac'
  docset_file_name 'ulysses'
  keyword 'ulysses'
  introduction <<-'END'

  END
  category do
    id 'Basic Operation'
    entry do
      name 'create a new sheet'
      command '`⌘N`'

    end
    entry do
      name 'move a sheet to the trash'
      command '`⌘←`'

    end
    entry do
      name 'split a sheet at the current cursor location'
      command '`⇧⌘B`'

    end
    entry do
      name 'create a new group'
      command '`⇧⌘N`'

    end
    entry do
      name 'create a new filter'
      command '`⌃⌘N`'

    end
    entry do
      name ''

      notes %(Items will always be created in vicinity of the current selection.)
    end
    entry do
      name ''

      notes %(Sheets will be created below the currently selected sheet.)
    end
    entry do
      name ''

      notes %(Groups and filters will be created inside the currently selected group.)
    end
    entry do
      name ''

      notes %(If there is no selection, or if the selection can’t accept new content, items will be created in the “Inbox” of the top-most category (e.g. iCloud).)
    end
    entry do
      name ''

      notes %(Click to select)
    end
    entry do
      name ''

      notes %(Double-click to edit)
    end
  end
  category do
    id 'Basic Operation / Views and Frequently Used Features'
    entry do
      name 'toggle the library'
      command '`⌘1`'

    end
    entry do
      name 'toggle the sheet list'
      command '`⌘2`'

    end
    entry do
      name 'toggle the editor-only view'
      command '`⌘3`'

    end
    entry do
      name 'toggle the Attachment Bar'
      command '`⌘4`'

    end
    entry do
      name 'go to the Favorites group (FIVEorites)'
      command '`⌘5`'

    end
    entry do
      name 'show Quick Export (SIXport)'
      command '`⌘6`'

    end
    entry do
      name 'show Statistics'
      command '`⌘7`'

    end
    entry do
      name 'show the Navigator (NavigEIGHTor, get it?)'
      command '`⌘8`'

    end
    entry do
      name 'show the Markup Bar'
      command '`⌘9`'

    end
  end
  category do
    id 'Basic Operation / Quick Open Panel'
    entry do
      name 'look for a sheet in the whole library'
      command '`⌘O`'

    end
    entry do
      name 'look for a sheet in the current library section (iCloud, On My Mac, etc.)'
      command '`⇧⌘O`'

    end
    entry do
      name 'look for a sheet in the currently selected group'
      command '`⌥⌘O`'

    end
  end
  category do
    id 'Basic Operation / Global Search'
    entry do
      name 'switch focus to the sheet filter'
      command '`⇧⌘F`'

    end
    entry do
      name 'leave the sheet filter'
      command '`esc`'

    end
  end
  category do
    id 'Basic Operation / Editor Find & Replace'
    entry do
      name 'show the Find panel'
      command '`⌘F`'

    end
    entry do
      name 'show the Find & Replace panel'
      command '`⌥⌘F`'

    end
    entry do
      name 'close the Find/Replace panel'
      command '`esc`'

    end
  end
  category do
    id 'Basic Operation / Favorites'
    entry do
      name 'add a sheet to or remove it from Favorites'
      command '`⌘D`'

    end
    entry do
      name ''

      notes %(You can also use a sheet’s context menu for that.)
    end
    entry do
      name 'go to the Favorites group (will only be displayed when there are favorited sheets)'
      command '`⌘5`'

    end
  end
  category do
    id 'Basic Operation / Editor Smart Paste'
    entry do
      name 'invoke Smart Paste'
      command '`⇧⌘V`'

    end
    entry do
      name 'invoke Smart Paste'
      command 'Hold `⌘V`'

      notes %(Paste options will vary based on clipboard content and current markup)
    end
    entry do
      name 'preview available paste options'
      command 'Arrow left/right'

      notes %(`↩︎` to confirm and paste)
    end
  end
  category do
    id 'Screen Modes'
    entry do
      name 'toggle Dark Theme'
      command '`⌥⌘X`'

    end
    entry do
      name 'toggle Full Screen Mode'
      command '`⌃⌘F`'

    end
    entry do
      name 'toggle Dark Mode'
      command '`⌥⌘L`'

    end
  end
  category do
    id 'Screen Modes / Multiple Windows, Split View'
    entry do
      name 'New Window'
      command '`⌥⌘N`'

      notes %(You can have multiple windows open at the same time)
    end
    entry do
      name ''

      notes %(We support macOS’ Split View, so you can display two windows next to each other in Split View.)
    end
    entry do
      name ''

      notes %(You can also display a Ulysses sheet next to another app in Split View, or next to its own preview.)
    end
    entry do
      name ''

      notes %(You can even have the same sheet visible in all open windows, which makes for some fancy show-off while editing, but it’s of not much use, to be honest.)
    end
  end
  category do
    id 'Screen Modes / Sheet List Options'
    entry do
      name ''

      notes %(The “View” menu holds several options for personalizing the sheet list:)
    end
    entry do
      name ''

      notes %(Set the “Sheet Preview” to anything between 1 and 6 lines.)
    end
    entry do
      name ''

      notes %(Include Keywords and Goals in the sheet preview.)
    end
    entry do
      name ''

      notes %(Either sort manually, by date or by first character.)
    end
  end
  category do
    id 'Screen Modes / Editor Options'
    entry do
      name ''

      notes %(The “View” menu also holds options for personalizing the editor:)
    end
    entry do
      name 'toggle Typewriter Mode'
      command '`⌥⌘T`'

    end
    entry do
      name ''

      notes %(Enable the display of paragraph numbers)
    end
  end
  category do
    id 'Screen Modes / Font Size'
    entry do
      name 'increase font size'
      command '`⌘+`'

    end
    entry do
      name 'decrease font size'
      command '`⌘-`'

    end
    entry do
      name 'reset font size to default value'
      command '`⌘0`'

    end
  end
  category do
    id 'Markup'
    entry do
      name 'Headlines'
      command '`⌘\`'

    end
    entry do
      name '_emphasize_'
      command '`⌘I`'

    end
    entry do
      name '**strong**'
      command '`⌘B`'

    end
    entry do
      name '[links]'
      command '`⌘K`'

    end
    entry do
      name 'removing any sort of Markup'
      command '`⌘L`'

    end
    entry do
      name 'how the Markup Bar, in case you can’t remember any of this'
      command '`⌘9`'

    end
  end
  category do
    id 'Markup / Smart Tags'
    entry do
      name ''

      notes %(If enabled, end tag placeholders will automatically be inserted whenever a start tag is followed by a character.)
    end
    entry do
      name ''

      notes %(Enable Smart Tags via “Edit › Substitutions”.)
    end
  end
  category do
    id 'Markup / End Tag Completion'
    entry do
      name 'automatically enter an end tag placeholder.'
      command '`esc`'

    end
    entry do
      name ''

      notes %(To accept the end tag, do any of the following:)
    end
    entry do
      name ''
      command 'Press `↩︎`'

    end
    entry do
      name ''
      command 'Press `→`'

    end
    entry do
      name ''
      command 'Press `↓`'

      notes %((if at the very end of a sheet))
    end
    entry do
      name ''
      command 'Type in the end tag'

    end
    entry do
      name 'Dismiss the end tag, press'
      command '`esc`'

    end
  end
  category do
    id 'Markup / Escape Character'
    entry do
      name ''

      notes %(To keep Ulysses from treating any character as markup, just add a backslash in front of it (e.g., if you really want a square bracket instead of a link, type “\[something]”).)
    end
  end
  category do
    id 'Markup / Markup Bar'
    entry do
      name 'show Markup Bar'
      command '`⌘9`'

      notes %(When showing the Markup Bar (), you can click on any listed markup to apply it to the current selection.)
    end
    entry do
      name 'select different parts of your text'
      command '`⌘`-Click'

      notes %(This works with multiple selections (`⌘`-Click to select different parts of your text).)
    end
    entry do
      name ''

      notes %(Multi-level paragraphs, such as lists and block quotes, will get indented +1 every time you click.)
    end
    entry do
      name 'either removes the markup or outdents multi-level paragraphs'
      command '`⇧`-Click'

    end
  end
  category do
    id 'Markup / Markup Language'
    entry do
      name ''

      notes %(By default, Ulysses uses its native markup language “Markdown XL”.)
    end
    entry do
      name ''

      notes %(Switch to “Markdown” or “Textile’d” or “Minimark” via “Edit › Convert Markup”.)
    end
    entry do
      name ''

      notes %(You can create your own markup via “Preferences › Markup”.)
    end
  end
  category do
    id 'Lists'
    entry do
      name 'increase list indentation'
      command '`⇥`'

    end
    entry do
      name 'decrease list indentation'
      command '`⇧⇥`'

    end
  end
  category do
    id 'Lists / Smart Lists'
    entry do
      name 'add another list item'
      command '`↩︎`'

      notes %(If Smart List is enabled)
    end
    entry do
      name 'create a new paragraph'
      command '`⌥↩︎`'

      notes %(If Smart List is enabled)
    end
    entry do
      name ''

      notes %(Enable Smart Lists via “Edit › Substitutions”.)
    end
  end
  category do
    id 'Lists / Media'
    entry do
      name ''

      notes %(Drag’n’drop images and PDFs into the editor to create a text object which holds the item.)
    end
  end
  category do
    id 'Lists / Text Objects'
    entry do
      name 'select'
      command '`⌘`-Click'

    end
    entry do
      name 'open the text object popover.'
      command 'Double-click'

    end
  end
  category do
    id 'Lists / Text Object Popovers'
    entry do
      name 'close and move insertion point forward'
      command '`⌘↩︎`'

    end
    entry do
      name 'close and keep object selected'
      command '`esc`'

    end
    entry do
      name 'switch between input fields'
      command '`⇥`'

    end
  end
  category do
    id 'Navigation / Library'
    entry do
      name 'to open group'
      command '`→` on groups'

    end
    entry do
      name 'to switch focus to the sheet list'
      command '`→` on groups'

    end
  end
  category do
    id 'Navigation / Sheet List'
    entry do
      name 'switch focus into the editor (placing insertion point at last edited location)'
      command '`→`'

    end
    entry do
      name 'switch focus into the library'
      command '`←`'

    end
  end
  category do
    id 'Navigation / Editor'
    entry do
      name 'move one sheet up'
      command 'Double-tap `↑`'

      notes %(At the start of a sheet)
    end
    entry do
      name 'move one sheet down'
      command 'Double-tap `↓`'

      notes %(At the end of a sheet)
    end
    entry do
      name 'move one sheet up'
      command '`⌥⌘↑`'

      notes %(Anywhere within a sheet)
    end
    entry do
      name 'move to next sheet'
      command '`⌥⌘↓`'

      notes %(Anywhere within a sheet)
    end
    entry do
      name 'switch focus into the sheet list'
      command 'Double-tap `⌘←`'

    end
  end
  category do
    id 'Navigation / Copy & Move in Sidebars'
    entry do
      name ''

      notes %(By default, dragging groups and sheets to and from iCloud or “On My Mac” will always _move_, i.e. contents will get transferred to the new location.)
    end
    entry do
      name ''

      notes %(Dragging to and from External Folders will always _copy_, i.e. contents will live in both locations afterwards.)
    end
    entry do
      name 'force _copy_ of groups and sheets.'
      command 'Hold `⌥` while dragging'

    end
    entry do
      name 'force _move_ of groups and sheets.'
      command 'Hold `⌘` while dragging'

    end
  end
  category do
    id 'Quick Export'
    entry do
      name 'show Quick Export (SIXport) for the current editor'
      command '`⌘6`'

    end
    entry do
      name ''

      notes %(You can also right-click on a group, filter or sheet in the sidebar and select “Quick Export…”.)
    end
  end
  category do
    id 'Quick Export / Text Export'
    entry do
      name ''

      notes %(Choose between Plain Text, Rich Text, Markdown and TextBundle output:)
    end
    entry do
      name ''

      notes %(- “Plain Text” will strip out all tags, comments, annotations, images etc., and only export the text itself.)
    end
    entry do
      name ''

      notes %(- “Rich Text” will produce a simple RTF file.)
    end
    entry do
      name ''

      notes %(- “Markdown” will keep (or convert) all tags and export the text in Markdown syntax.)
    end
    entry do
      name ''

      notes %(- [“TextBundle”](http://TextBundle.org) is a new file format which supports embedded images in plain text files.)
    end
  end
  category do
    id 'Quick Export / HTML Export'
    entry do
      name ''

      notes %(Choose an export style to be applied during export.)
    end
    entry do
      name ''

      notes %(Choose between Snippet and Single Page output:)
    end
    entry do
      name ''

      notes %(- “Snippet” will just convert all tags to HTML and then export the text.)
    end
    entry do
      name ''

      notes %(- “Single Page” will create a complete HTML document, including header, body, CSS links and so on.)
    end
  end
  category do
    id 'Quick Export / ePub Export'
    entry do
      name ''

      notes %(- Choose an export style to be applied during export.)
    end
    entry do
      name ''

      notes %(- You can set title and author metadata.)
    end
    entry do
      name ''

      notes %(- You can drop an image to be used as cover image for your ebook.)
    end
  end
  category do
    id 'Quick Export / PDF Export'
    entry do
      name ''

      notes %(- Choose an export style to be applied during export.)
    end
    entry do
      name ''

      notes %(- Choose a paper format.)
    end
  end
  category do
    id 'Quick Export / DOCX Export'
    entry do
      name ''

      notes %(- Choose an export style to be applied during export.)
    end
    entry do
      name ''

      notes %(- Choose a paper format.)
    end
  end
  category do
    id 'Quick Export / Publishing'
    entry do
      name ''

      notes %(- Ulysses lets you publish directly to Wordpress blogs for which you have editing access:)
    end
    entry do
      name ''

      notes %(- 1. Choose “Add Account › WordPress/Custom WordPress”.)
    end
    entry do
      name ''

      notes %(- 2. Provide your Username and Password, and, for a self-hosted WordPress installation, the URL.)
    end
    entry do
      name ''

      notes %(- 3. Before publishing a post, you can revise its settings (categories, tags, schedule, publishing status and so on.))
    end
    entry do
      name ''

      notes %(- If you own a [Medium](https://medium.com) account, Ulysses allows you to publish your texts as drafts to Medium:)
    end
    entry do
      name ''

      notes %(- 1. Choose “Add Account › Medium”.)
    end
    entry do
      name ''

      notes %(- 2. You’ll need to provide an integration token for activation.)
    end
  end
  category do
    id 'Quick Export / Export Preview'
    entry do
      name 'preview the current sidebar selection (can be groups)'
      command '`⇧⌘P`'

    end
    entry do
      name 'refresh all open previews'
      command '`⌘R`'

    end
    entry do
      name ''

      notes %(Choose an export style to be used for preview)
    end
    entry do
      name ''

      notes %(You can export directly from the preview window.)
    end
  end
  category do
    id 'Open and Import Files'
    entry do
      name ''

      notes %(You can use Ulysses to edit or respectively import a couple of different file types:)
    end
    entry do
      name ''

      notes %(By default, text and markdown files will appear in the “Open Files” group within your library. All edits and changes will be saved to the original files.)
    end
    entry do
      name ''

      notes %(To _import_ text and markdown files as Ulysses sheets, simply drag them to a group in your library. The original files will stay unaffected from any edits.)
    end
    entry do
      name ''

      notes %(RTF, DOCX and HTML files will always be imported as Ulysses sheets, and will therefore be added to the “Inbox” of your topmost library section. You can of course drag them around at will.)
    end
  end
  category do
    id 'Misc.'
    entry do
      name 'create a new version of the current sheet'
      command '`⌘S`'

      notes %(Select “Browse All Versions…” from the “File” menu to see how often you invoked that command.)
    end
    entry do
      name 'jump to the location of your last edit'
      command 'Double-clicking a sheet in the sheet list'

    end
  end

end
