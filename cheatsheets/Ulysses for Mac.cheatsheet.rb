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
      command 'CMD+N'

    end
    entry do
      name 'move a sheet to the trash'
      command 'CMD+←'

    end
    entry do
      name 'split a sheet at the current cursor location'
      command 'CMD+SHIFT+B'

    end
    entry do
      name 'create a new group'
      command 'CMD+SHIFT+N'

    end
    entry do
      name 'create a new filter'
      command 'CMD+CTR+N'

    end
    entry do
      name 'NOTES:'

      notes <<-'END'
* Items will always be created in vicinity of the current selection.
* Sheets will be created below the currently selected sheet.
* Groups and filters will be created inside the currently selected group.
* If there is no selection, or if the selection can’t accept new content, items will be created in the "Inbox" of the top-most category (e.g. iCloud).
* Click to select
* Double-click to edit
      END

    end
  end

  category do
    id 'Basic Operation / Views and Frequently Used Features'
    entry do
      name 'toggle the library'
      command 'CMD+1'

    end
    entry do
      name 'toggle the sheet list'
      command 'CMD+2'

    end
    entry do
      name 'toggle the editor-only view'
      command 'CMD+3'

    end
    entry do
      name 'toggle the Attachment Bar'
      command 'CMD+4'

    end
    entry do
      name 'go to the Favorites group (FIVEorites)'
      command 'CMD+5'

    end
    entry do
      name 'show Quick Export (SIXport)'
      command 'CMD+6'

    end
    entry do
      name 'show Statistics'
      command 'CMD+7'

    end
    entry do
      name 'show the Navigator (NavigEIGHTor, get it?)'
      command 'CMD+8'

    end
    entry do
      name 'show the Markup Bar'
      command 'CMD+9'

    end
  end

  category do
    id 'Basic Operation / Quick Open Panel'
    entry do
      name 'look for a sheet in the whole library'
      command 'CMD+O'

    end
    entry do
      name 'look for a sheet in the current library section (iCloud, On My Mac, etc.)'
      command 'CMD+SHIFT+O'

    end
    entry do
      name 'look for a sheet in the currently selected group'
      command 'CMD+ALT+O'

    end
  end

  category do
    id 'Basic Operation / Global Search'
    entry do
      name 'switch focus to the sheet filter'
      command 'CMD+SHIFT+F'

    end
    entry do
      name 'leave the sheet filter'
      command 'ESC'

    end
  end

  category do
    id 'Basic Operation / Editor Find & Replace'
    entry do
      name 'show the Find panel'
      command 'CMD+F'

    end
    entry do
      name 'show the Find & Replace panel'
      command 'CMD+ALT+F'

    end
    entry do
      name 'close the Find/Replace panel'
      command 'ESC'

    end
  end

  category do
    id 'Basic Operation / Favorites'
    entry do
      name 'add a sheet to or remove it from Favorites'
      command 'CMD+D'
      notes %(You can also use a sheet’s context menu for that.)

    end
    entry do
      name 'go to the Favorites group (will only be displayed when there are favorited sheets)'
      name 'go to the Favorites group (will only be displayed when there are favorited sheets)'
      command 'CMD+5'

    end
  end

  category do
    id 'Basic Operation / Editor Smart Paste'
    entry do
      name 'invoke Smart Paste'
      command 'CMD+SHIFT+V'

    end
    entry do
      name 'invoke Smart Paste with options'
      command 'Hold CMD+V'

      notes <<-'END'
* Paste options will vary based on clipboard content and current markup
* `Arrow left/right` to preview available paste options
* `↩︎` to confirm and paste
      END
    end
  end

  category do
    id 'Screen Modes'
    entry do
      name 'toggle Dark Theme'
      command 'CMD+ALT+X'

    end
    entry do
      name 'toggle Full Screen Mode'
      command 'CMD+CTR+F'

    end
    entry do
      name 'toggle Dark Mode'
      command 'CMD+ALT+L'

    end
  end

  category do
    id 'Screen Modes / Multiple Windows, Split View'
    entry do
      name 'New Window'
      command 'CMD+ALT+N'
      notes <<-'END'
* You can have multiple windows open at the same time
* We support macOS’ Split View, so you can display two windows next to each other in Split View.
* You can also display a Ulysses sheet next to another app in Split View, or next to its own preview.
* You can even have the same sheet visible in all open windows, which makes for some fancy show-off while editing, but it’s of not much use, to be honest.
      END
    end
  end

  category do
    id 'Screen Modes / Sheet List Options'

    entry do
      notes <<-'END'
* The “View” menu holds several options for personalizing the sheet list:
    * Set the “Sheet Preview” to anything between 1 and 6 line
    * Include Keywords and Goals in the sheet preview.
	* Either sort manually, by date or by first character.
      END
    end
  end

  category do
    id 'Screen Modes / Editor Options'

    entry do
      name 'toggle Typewriter Mode'
      command 'CMD+ALT+T'

    end
    entry do
      name 'Enable the display of paragraph numbers'

      command 'Edit › Show Paragraph Numbers'
    end
  end

  category do
    id 'Screen Modes / Font Size'
    entry do
      name 'increase font size'
      command 'CMD+"+"'

    end
    entry do
      name 'decrease font size'
      command 'CMD+"-"'

    end
    entry do
      name 'reset font size to default value'
      command 'CMD+0'

    end
  end

  category do
    id 'Markup'
    entry do
      name 'Headlines'
      command 'CMD+\\'

    end
    entry do
      name '_emphasize_'
      command 'CMD+I'

    end
    entry do
      name '**strong**'
      command 'CMD+B'

    end
    entry do
      name '[links]'
      command 'CMD+K'

    end
    entry do
      name 'removing any sort of Markup'
      command 'CMD+L'

    end
    entry do
      name 'show the Markup Bar'
      command 'CMD+9'

    end
  end

  category do
    id 'Markup / Smart Tags'
    entry do
      name 'Enable Smart Tags'
      command 'Edit › Substitutions'
      notes %(If enabled, end tag placeholders will automatically be inserted whenever a start tag is followed by a character.)
    end
  end

  category do
    id 'Markup / End Tag Completion'
    entry do
      name 'automatically enter an end tag placeholder.'
      command 'ESC'

    end
    entry do
      name 'accept the end tag'
      command '↩︎'

    end
    entry do
      name 'accept the end tag'
      command '→'

    end
    entry do
      name 'accept the end tag'
      command '↓'

      notes %(if at the very end of a sheet)
    end
    entry do
      name 'accept the end tag'
      command '(Type in the end tag)'

    end
    entry do
      name 'Dismiss the end tag'
      command 'ESC'

    end
  end

  category do
    id 'Markup / Escape Character'
    entry do
      name 'Escape markup character'
      command '\[something]'
      notes %(To keep Ulysses from treating any character as markup, just add a backslash in front of it (e.g., if you really want a square bracket instead of a link, type “\[something]”).)
    end
  end

  category do
    id 'Markup / Markup Bar'
    entry do
      name 'show Markup Bar'
      command 'CMD+9'

      notes %(When showing the Markup Bar (), you can click on any listed markup to apply it to the current selection.)
    end
    entry do
      name 'select different parts of your text'
      command 'CMD-Click'

      notes <<-'END'
* This works with multiple selections (`CMD`-Click to select different parts of your text).
* Multi-level paragraphs, such as lists and block quotes, will get indented +1 every time you click.
      END
    end
    entry do
      name 'either removes the markup or outdents multi-level paragraphs'
      command 'SHIFT-Click'
    end
  end

  category do
    id 'Markup / Markup Language'
    entry do
      name 'Switch to “Markdown” or “Textile’d” or “Minimark”'
      command 'Preferences › Markup'
    end
    entry do
      name 'Create own markup language'
      command 'Preferences › Markup'
      notes ''
    end
  end

  category do
    id 'Lists'
    entry do
      name 'increase list indentation'
      command '⇥'

    end
    entry do
      name 'decrease list indentation'
      command 'SHIFT⇥'

    end
  end
  category do
    id 'Lists / Smart Lists'
    entry do
      name 'add another list item'
      command '↩︎'

      notes %(If Smart List is enabled)
    end
    entry do
      name 'create a new paragraph'
      command 'ALT↩︎'

      notes %(If Smart List is enabled)
    end
    entry do
      name 'Enable Smart Lists'
      command 'Edit › Substitutions'
    end
  end
  category do
    id 'Lists / Media'
    entry do
      name 'Insert images and PDFs into editor'

      command 'Drag’n’drop images and PDFs into the editor'
    end
  end
  category do
    id 'Lists / Text Objects'
    entry do
      name 'select'
      command 'CMD-Click'

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
      command 'CMD+↩︎'

    end
    entry do
      name 'close and keep object selected'
      command 'ESC'

    end
    entry do
      name 'switch between input fields'
      command '⇥'
    end
    entry do
      name 'Place popover on screen'
      command '(tear the popover off)'
      notes 'Drag any popover to tear it off and place it anywhere on screen'
    end
  end
  category do
    id 'Navigation / Library'
    entry do
      name 'to open group'
      command '→ on groups'

    end
    entry do
      name 'to switch focus to the sheet list'
      command '→ on groups'

    end
  end
  category do
    id 'Navigation / Sheet List'
    entry do
      name 'switch focus into the editor (placing insertion point at last edited location)'
      command '→'

    end
    entry do
      name 'switch focus into the library'
      command '←'

    end
  end
  category do
    id 'Navigation / Editor'
    entry do
      name 'move one sheet up'
      command 'Double-tap ↑'

      notes %(At the start of a sheet)
    end
    entry do
      name 'move one sheet down'
      command 'Double-tap ↓'

      notes %(At the end of a sheet)
    end
    entry do
      name 'move one sheet up'
      command 'CMD+ALT+↑'

      notes %(Anywhere within a sheet)
    end
    entry do
      name 'move to next sheet'
      command 'CMD+ALT+↓'

      notes %(Anywhere within a sheet)
    end
    entry do
      name 'switch focus into the sheet list'
      command 'Double-tap CMD+←'

    end
  end
  category do
    id 'Navigation / Copy & Move in Sidebars'
    entry do
      name 'move contents to new location'
      command '[drag groups and sheets in Sidebars]'

      notes %(By default, dragging groups and sheets to and from iCloud or “On My Mac” will always _move_, i.e. contents will get transferred to the new location.)
    end
    entry do
      name 'copy contents to and from External Folders'
      command '[drag groups and sheets in Sidebars]'

      notes %(Dragging to and from External Folders will always _copy_, i.e. contents will live in both locations afterwards.)
    end
    entry do
      name 'force _copy_ of groups and sheets.'
      command 'Hold ALT while dragging'

    end
    entry do
      name 'force _move_ of groups and sheets.'
      command 'Hold CMD while dragging'

    end
  end

  category do
    id 'Quick Export'
    entry do
      name 'show Quick Export (SIXport) for the current editor'
      command 'CMD+6'
      notes %(You can also right-click on a group, filter or sheet in the sidebar and select “Quick Export…”.)
    end
  end

  category do
    id 'Quick Export / Text Export'
    entry do
      name 'export as Plain Text'
      command 'CMD+6 › Plain Text'
      notes %(“Plain Text” will strip out all tags, comments, annotations, images etc., and only export the text itself.)
    end

    entry do
      name 'export as Rich Text'
      command 'CMD+6 › Rich Text'
      notes %(“Rich Text” will produce a simple RTF file.)
    end
    entry do
      name 'export as Markdown'
      command 'CMD+6 › Markdown'
      notes %(“Markdown” will keep (or convert) all tags and export the text in Markdown syntax.)
    end
    entry do
      name 'export as TextBundle'
      command 'CMD+6 › TextBundle'
      notes %([“TextBundle”](http://TextBundle.org) is a new file format which supports embedded images in plain text files.)
    end
  end

  category do
    id 'Quick Export / HTML Export'
    entry do
      name 'export as HTML Snippet'
      command 'CMD+6 › Snippet'
      notes %(“Snippet” will just convert all tags to HTML and then export the text.)
    end
    entry do
      name 'export as HTML Single Page'
      command 'CMD+6 › Full Page'
      notes %(“Single Page” will create a complete HTML document, including header, body, CSS links and so on.)
    end
  end

  category do
    id 'Quick Export / ePub Export'
    entry do
      name 'export as ePub'
      command 'CMD+6'
      notes <<-'END'
- Choose an export style to be applied during export.
- You can set title and author metadata.
- You can drop an image to be used as cover image for your ebook.
      END
    end
  end

  category do
    id 'Quick Export / PDF Export'
    entry do
      name 'export as PDF'
      command 'CMD+6'
      notes <<-'END'
- Choose an export style to be applied during export.
- Choose a paper format.
      END
    end
  end

  category do
    id 'Quick Export / DOCX Export'
    entry do
      name 'export as DOCX'
      command 'CMD+6'
      notes <<-'END'
- Choose an export style to be applied during export.
- Choose a paper format.
      END
    end
  end

  category do
    id 'Quick Export / Publishing'
    entry do
      name 'Publish to Medium / WordPress'
      command 'CMD+6'

      notes <<-'END'
- Ulysses lets you publish directly to Wordpress blogs for which you have editing access:
    1. Choose “Add Account › WordPress/Custom WordPress”.
    2. Provide your Username and Password, and, for a self-hosted WordPress installation, the URL.
    3. Before publishing a post, you can revise its settings (categories, tags, schedule, publishing status and so on.)
- If you own a [Medium](https://medium.com) account, Ulysses allows you to publish your texts as drafts to Medium:
    1. Choose “Add Account › Medium”.
    2. You’ll need to provide an integration token for activation.
      END
    end

  end
  category do
    id 'Quick Export / Export Preview'
    entry do
      name 'preview the current sidebar selection (can be groups)'
      command 'CMD+SHIFT+P'
      notes <<-'END'
Choose an export style to be used for preview.
You can export directly from the preview window.
      END
    end
    entry do
      name 'refresh all open previews'
      command 'CMD+R'

    end
  end

  category do
    id 'Open and Import Files'
    entry do
      name 'Editting text and markdown files'
      command '"Open Files" group within your library'
      notes %(By default, text and markdown files will appear in the “Open Files” group within your library. All edits and changes will be saved to the original files.)
    end
    entry do
      name 'Import text and markdown files as Ulysses sheets'
      command '[drag them to a group in library]'
      notes %(To _import_ text and markdown files as Ulysses sheets, simply drag them to a group in your library. The original files will stay unaffected from any edits.)
    end

    entry do
      name 'Import RTF, DOCX and HTML files'
      command '[drag them to library]'
      notes %(RTF, DOCX and HTML files will always be imported as Ulysses sheets, and will therefore be added to the “Inbox” of your topmost library section. You can of course drag them around at will.)
    end
  end

  category do
    id 'Misc.'
    entry do
      name 'create a new version of the current sheet'
      command 'CMD+S'

      notes %(Select “Browse All Versions…” from the “File” menu to see how often you invoked that command.)
    end
    entry do
      name 'jump to the location of your last edit'
      command 'Double-clicking a sheet in the sheet list'

    end
  end
end
