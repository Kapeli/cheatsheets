cheatsheet do
    title "Vimium"
    docset_file_name 'Vimium'
    keyword 'vimium'
    source_url 'https://github.com/philc/vimium'


    category do
      id 'Build Status'

    entry do
      name ''
      notes "
      Vimium is a Chrome extension that provides keyboard-based navigation and control in the spirit of the Vim editor.

      ### Installation instructions:

      You can install the stable version of Vimium from the [Chrome Extensions Gallery](https://chrome.google.com/extensions/detail/dbepggeogbaibhgnhhndojpepiihcmeb).

      Please see [CONTRIBUTING.md](https://github.com/philc/vimium/blob/master/CONTRIBUTING.md#installing-from-source) for instructions on how you can install Vimium from source.

      The Options page can be reached via a link on the help dialog (hit ?) or via the button next to Vimium on the Chrome Extensions page (`chrome://extensions`).

      ### Keyboard Bindings

      Modifier keys are specified as `<c-x>`, `<m-x>`, and `<a-x>` for `ctrl+x`, `meta+x`, and `alt+x` respectively. See the next section for instructions on modifying these bindings."
    end
  end


  category do
      id 'Navigating the current page'

       entry do
          command '?'
          name    'show the help dialog for a list of all available keys'
      end

       entry do
          command 'h'
          name    'scroll left'
      end

       entry do
          command 'j'
          name    'scroll down'
      end

       entry do
          command 'k'
          name    'scroll up'
      end

       entry do
          command 'l'
          name    'scroll right'
      end

       entry do
          command 'gg'
          name    'scroll to top of the page'
      end

       entry do
          command 'G'
          name    'scroll to bottom of the page'
      end

       entry do
          command 'd'
          name    'scroll down half a page'
      end

       entry do
          command 'u'
          name    'scroll up half a page'
      end

       entry do
          command 'f'
          name    'open a link in the current tab'
      end

       entry do
          command 'F'
          name    'open a link in a new tab'
      end

       entry do
          command 'r'
          name    'reload'
      end

       entry do
          command 'gs'
          name    'view source'
      end

       entry do
          command 'i'
          name    'enter insert mode -- all commands will be ignored until you hit esc to exit'
      end

       entry do
          command 'yy'
          name    'copy the current url to the clipboard'
      end

       entry do
          command 'yf'
          name    'copy a link url to the clipboard'
      end

       entry do
          command 'gf'
          name    'cycle forward to the next frame'
      end

  end
  category do
      id 'Navigating to new pages'

       entry do
          command 'o'
          name    'Open URL, bookmark, or history entry'
      end

       entry do
          command 'O'
          name    'Open URL, bookmark, history entry in a new tab'
      end

       entry do
          command 'b'
          name    'Open bookmark'
      end

       entry do
          command 'B'
          name    'Open bookmark in a new tab'
      end

  end
  category do
      id 'Using find'

       entry do
          command '/'
          name    'enter find mode -- type your search query and hit enter to search or esc to cancel
          <br />See here for advanced usage (regular expressions): https://github.com/philc/vimium/wiki/Find-Mode
          '
      end
       entry do
          command 'n'
          name    'cycle forward to the next find match'
      end

       entry do
          command 'N'
          name    'cycle backward to the previous find match'
      end

  end
  category do
      id 'Navigating your history'

       entry do
          command 'H'
          name    'go back in history'
      end

       entry do
          command 'L'
          name    'go forward in history'
      end

  end
  category do
      id 'Manipulating tabs'

       entry do
          command 'J, gT'
          name    'go one tab left'
      end

       entry do
          command 'K, gt'
          name    'go one tab right'
      end

       entry do
          command 'g0'
          name    'go to the first tab'
      end

       entry do
          command 'g$'
          name    'go to the last tab'
      end

       entry do
          command 't'
          name    'create tab'
      end

       entry do
          command 'yt'
          name    'duplicate current tab'
      end

       entry do
          command 'x'
          name    'close current tab'
      end

       entry do
          command 'X'
          name    "restore closed tab (i.e. unwind the 'x' command)"
      end

       entry do
          command 'T'
          name    'search through your open tabs'
      end

       entry do
          command '.'
          name    'pin/unpin current tab'
      end

  end
  category do
      id 'Additional advanced browsing commands'

       entry do
          command ']]'
          name    "Follow the link labeled 'next' or '>'. Helpful for browsing paginated sites."
      end

       entry do
          command '[['
          name    "Follow the link labeled 'previous' or '<'. Helpful for browsing paginated sites."
      end

       entry do
          command '`<a-f>`'
          name    'open multiple links in a new tab'
      end

       entry do
          command 'gi'
          name    'focus the first (or n-th) text input box on the page'
      end

       entry do
          command 'gu'
          name    'go up one level in the URL hierarchy'
      end

       entry do
          command 'gU'
          name    'go up to root of the URL hierarchy'
      end

       entry do
          command 'zH'
          name    'scroll all the way left'
      end

       entry do
          command 'zL'
          name    'scroll all the way right'
      end
  end

  notes <<-'END'

      Vimium supports command repetition so, for example, hitting '5t' will open 5 tabs in rapid succession. 
      `<ESC>` (or `<c-[>`) will clear any partial commands in the queue and will also exit insert and find modes.

      ###  Custom Key Mappings

      You may remap or unmap any of the default key bindings in the "Key mappings" section under "Advanced Options" on the options page.

      Enter one of the following key mapping commands per line:

      - **map key command**: Maps a key to a Vimium command. Overrides Chrome''s default behavior (if any).
      - **unmap key**: Unmaps a key and restores Chrome''s default behavior (if any).
      - **unmapAll**: Unmaps all bindings. This is useful if you want to completely wipe Vimium''s defaults and start from scratch with your own setup.
      
      ### Examples:

      - map `<c-d>` scrollPageDown maps `ctrl+d` to scrolling the page down. Chrome''s default behavior of bringing up a bookmark dialog is suppressed.
      - map r reload maps the r key to reloading the page.
      - unmap `<c-d>` removes any mapping for `ctrl+d` and restores Chrome''s default behavior.
      - unmap r removes any mapping for the r key.
      
      Available Vimium commands can be found via the "Show Available Commands" link near the key mapping box. The command name appears to the right of the description in parenthesis.

      You can add comments to your key mappings by starting a line with " or #.

      The following special keys are available for mapping:

      - `<c-*>`, `<a-*>`, `<m-*>` for `ctrl`, `alt`, and `meta` (`command` on Mac) respectively with any key. Replace * with the key of choice.
      - `<left>`, `<right>`, `<up>`, `<down>` for the arrow keys
      - `<f1>` through `<f12>` for the function keys
      Shifts are automatically detected so, for example, `<c-&>` corresponds to `ctrl+s` `hift+7` on an English keyboard.

      ### Contributing

      Please see CONTRIBUTING.md for details.

      END
    end
