cheatsheet do
    title 'Chrome Developer Tools'
    docset_file_name 'Chrome_Dev_Tools'
    keyword 'chrome'
    source_url 'http://cheat.kapeli.com'

    category do
        id 'Tools'

        entry do
            name 'View source'
            command 'CMD+OPTION+U'
        end

        entry do
            name 'Developers tools'
            command 'CMD+OPTION+I'
        end

        entry do
            name 'Command palette'
            command 'CMD+OPTION+J'
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
            command 'CMD+OPTION+['
        end

        entry do
            name 'Go forward in panel history'
            command 'CMD+OPTION+]'
        end

        entry do
            name 'Jump to panel 1-9'
            command 'CMD+1-9'
        end

        entry do
            name 'Show console'
            command 'CTRL+~'
        end

        entry do
            name 'Refresh the page'
            command 'CMD+R'
        end

        entry do
            name 'Refresh the page ignoring cached content'
            command 'CMD+SHIFT+R'
        end

        entry do
            name 'Search'
            command 'CMD+F'
        end

        entry do
            name 'Search across all sources'
            command 'CMD+OPTION+F'
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

        entry do
            name 'Hide general settings'
            command 'Esc'
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
            name 'Next suggestion'
            command 'Tab'
        end

        entry do
            name 'Previous suggestion'
            command 'SHIFT+Tab'
        end

        entry do
            name 'Accept suggestion'
            command 'Arrow Right'
        end

        entry do
            name 'Next command'
            command 'OPTION+N'
        end
    
        entry do
            name 'Previous command'
            command 'OPTION+P'
        end

        entry do
            name 'Multi-line entry'
            command 'CTRL+Return'
        end

        entry do
            name 'Execute'
            command 'Return'
        end

    end

    category do
        id 'Elements Panel'

        entry do
            name 'Navigate elements'
            command 'Arrow Up'
            command 'Arrow Down'
        end

        entry do
            name 'Expand node'
            command 'Arrow Right'
        end

        entry do
            name 'Collapse node'
            command 'Arrow Left'
        end

        entry do
            name 'Edit attribute'
            command 'Return'
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
            name 'Edit next property'
            command 'Tab'
        end

        entry do
            name 'Edit previous property'
            command 'SHIFT+Tab'
        end

        entry do
            name 'Increment value by 1'
            command 'Arrow Up'
        end

        entry do
            name 'Decrement value by 1'
            command 'Arrow Down'
        end

        entry do
            name 'Increment value by 10'
            command 'SHIFT+Arrow Up'
        end

        entry do
            name 'Decrement value by 10'
            command 'SHIFT+Arrow Down'
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
            command 'OPTION+Arrow Up'
        end

        entry do
            name 'Decrement value by 0.1'
            command 'OPTION+Arrow Down'
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
            command 'OPTION+Arrow Up'
        end

        entry do
            name 'Decrement CSS unit by 1'
            command 'OPTION+Arrow Down'
        end

        entry do
            name 'Increment CSS unit by 10'
            command 'OPTION+Page Up'
        end

        entry do
            name 'Decrement CSS unit by 10'
            command 'OPTION+Page Down'
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
