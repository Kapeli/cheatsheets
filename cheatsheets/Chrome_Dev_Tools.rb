cheatsheet do
    title 'Chrome Developer Tools'
    docset_file_name 'Chrome_Dev_Tools'
    keyword 'chrome'
    source_url 'http://cheat.kapeli.com'

    category do
        id 'Tools'

        entry do
            name 'View source'
            command 'CMD+ALT+U'
        end

        entry do
            name 'Developers tools'
            command 'CMD+ALT+I'
        end

        entry do
            name 'Command palette'
            command 'CMD+ALT+J'
        end
    end

    category do
        id 'All Panels'

        entry do
            name 'Go to the panel to the left'
            command 'CMD+['
        end

        entry do
            name 'Go to the panel to the right'
            command 'CMD+]'
        end

        entry do
            name 'Go back in panel history'
            command 'CMD+ALT+['
        end

        entry do
            name 'Go forward in panel history'
            command 'CMD+ALT+]'
        end

        entry do
            name 'Show console'
            command 'CTRL+~'
        end

        entry do
            name 'Search'
            command 'CMD+F'
        end

        entry do
            name 'Search across all sources'
            command 'CMD+ALT+F'
        end

        entry do
            name 'Search by filename'
            command 'CMD+O'
        end

        entry do
            name 'Select node to inspect'
            command 'CMD+SHIFT+C'
        end

        entry do
            name 'Go to source'
            command 'CMD+O'
        end

        entry do
            name 'Find next'
            command 'CMD+G'
        end

        entry do
            name 'Find previous'
            command 'CMD+SHIFT+G'
        end

        entry do
            name 'Go to line'
            command 'CTRL+G'
        end

        entry do
            name 'Show general settings'
            command 'F1'
            command 'SHIFT+?'
        end
    end

    category do
        id 'Console'

        entry do
            name 'Clear console'
            command 'CMD+K'
            command 'CTRL+L'
        end

        entry do
            name 'Accept suggestion'
            command 'Right Arrow'
        end

        entry do
            name 'Next command'
            command 'ALT+N'
        end
    
        entry do
            name 'Previous command'
            command 'ALT+P'
        end
    end

    category do
        id 'Elements Panel'

        entry do
            name 'Navigate elements'
            command 'Up Arrow'
            command 'Down Arrow'
        end

        entry do
            name 'Expand'
            command 'Right Arrow'
        end

        entry do
            name 'Collapse'
            command 'Left Arrow'
        end

        entry do
            name 'Edit attribute'
            command 'Enter'
        end

        entry do
            name 'Hide element'
            command 'H'
        end

        entry do
            name 'Toggle edit as HTML'
            command 'F2'
        end
    end

    category do
        id 'Styles Pane'

        entry do
            name 'Edit rule'
            command 'Click'
        end

        entry do
            name 'Insert new property'
            command 'Click on whitespace'
        end

        entry do
            name 'Next property'
            command 'Right Arrow'
        end

        entry do
            name 'Previous property'
            command 'SHIFT+Right Arrow'
        end

        entry do
            name 'Increment value by 1'
            command 'Up Arrow'
        end

        entry do
            name 'Decrement value by 1'
            command 'Down Arrow'
        end

        entry do
            name 'Increment value by 10'
            command 'SHIFT+Up Arrrow'
        end

        entry do
            name 'Decrement value by 10'
            command 'SHIFT+Down Arrow'
        end

        entry do
            name 'Increment value by 100'
            command 'SHIFT+Page Up'
        end

        entry do
            name 'Decrement value by 100'
            command 'SHIFT+Page Down'
        end
    
        entry do
            name 'Increment value by 0.1'
            command 'ALT+Up Arrow'
        end

        entry do
            name 'Decrement value by 0.1'
            command 'ALT+Down Arrow'
        end

    end

    category do
        id 'Sources Panel'

        entry do
            name 'Pause or continue'
            command 'F8'
        end

        entry do
            name 'Step over'
            command 'F10'
        end

        entry do
            name 'Step into'
            command 'F11'
            command 'CMD+;'
        end

        entry do
            name 'Step into selection'
            command 'CMD+F11'
        end

        entry do
            name 'Step out'
            command 'SHIFT+F11'
            command 'CMD+SHIFT+;'
        end

        entry do
            name 'Next call frame'
            command 'CTRL+.'
        end

        entry do
            name 'Previous call frame'
            command 'CTRL+,'
        end

        entry do
            name 'Evaluate selection in console'
            command 'CTRL+SHIFT+E'
        end

        entry do
            name 'Add selection to watch'
            command 'CTRL+SHIFT+A'
        end

        entry do
            name 'Go to member'
            command 'CMD+SHIFT+O'
        end

        entry do
            name 'Toggle breakpoint'
            command 'CMD+B'
        end

        entry do
            name 'Toggle comment'
            command 'CMD+/'
        end

        entry do
            name 'Increment CSS unit by 1'
            command 'ALT+Up Arrow'
        end

        entry do
            name 'Decrement CSS unit by 1'
            command 'ALT+Down Arrow'
        end

        entry do
            name 'Increment CSS unit by 10'
            command 'ALT+Page Up'
        end

        entry do
            name 'Decrement CSS unit by 10'
            command 'ALT+Page Down'
        end
    end

    category do
        id 'Timeline Panel'

        entry do
            name 'Start or stop recording'
            command 'CMD+E'
        end

        entry do
            name 'Save timeline data'
            command 'CMD+S'
        end

        entry do
            name 'Load timeline data'
            command 'CMD+O'
        end
    end

    category do
        id 'Profiles Panel'

        entry do
            name 'Start or stop recording'
            command 'CMD+E'
        end
    end

  notes <<-'END'
    * Created by [Rob Simpson](https://github.com/pertrai1).
  END
end
