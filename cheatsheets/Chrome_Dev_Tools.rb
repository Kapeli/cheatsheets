cheatsheet do
    title 'Chrome Developer Tools'
    docset_file_name 'Chrome_Dev_Tools'
    keyword 'chrome dev tools'
    source_url 'http://cheat.kapeli.com'

    category do
        id 'Tools'

        entry do
            name 'View Source'
            command 'CMD+ALT+U'
        end

        entry do
            name 'Developers Tools'
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
            name 'Go to the panel to the left/right'
            command 'CMD+[ / CMD+]'
        end

        entry do
            name 'Go back/forward in panel history'
            command 'CMD+ALT[ / CMD+ALT]'
        end

        entry do
            name 'Show Console'
            command 'CTRL+Tilde'
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
            name 'Find next/previous'
            command 'CMD+G / CMD+SHIFT+G'
        end

        entry do
            name 'To to line'
            command 'CTRL+G'
        end

        entry do
            name 'Show general settings'
            command 'F1 or SHIFT+?'
        end
    end

    category do
        id 'Console'

        entry do
            name 'Clear console'
            command 'CMD+K or CTRL+L'
        end

        entry do
            name 'Autocomplete common prefix'
            command 'Right arrow'
        end

        entry do
            name 'Accept suggestion'
            command 'Right arrow'
        end

        entry do
            name 'Next/previous line'
            command 'Right arrow / SHIFT+Righ Arrow'
        end

        entry do
            name 'Next/previous command'
            command 'ALT+N / ALT+P'
        end
    end

    category do
        id 'Elements Panel'

        entry do
            name 'Navigate elements'
            command 'Up arrow / Down arrow'
        end

        entry do
            name 'Expand/collapse'
            command 'Right arrow / Left arrow'
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
            command 'Single-click'
        end

        entry do
            name 'Insert new property'
            command 'Single-click on whitespace'
        end

        entry do
            name 'Next/previous property'
            command 'Right arrow / SHIFT+right arrow'
        end

        entry do
            name 'Increment value'
            command 'Up Arrow'
        end

        entry do
            name 'Decrement value'
            command 'Down Arrow'
        end

        entry do
            name 'Increment by 10'
            command 'SHIFT+Up Arrrow'
        end

        entry do
            name 'Decrement by 10'
            command 'SHIFT+Down Arrow'
        end

        entry do
            name 'Increment by 100'
            command 'SHIFT+Page Up'
        end

        entry do
            name 'Decrement by 100'
            command 'SHIFT+Page Down'
        end

        entry do
            name 'Increment by 0.1'
            command 'ALT+Page Up'
        end

        entry do
            name 'Decrement by 0.1'
            command 'ALT+Page Down'
        end
    end

    category do
        id 'Sources Panel'

        entry do
            name 'Pause/Continue'
            command 'F8'
        end

        entry do
            name 'Step over'
            command 'F10'
        end

        entry do
            name 'Step into'
            command 'F11 or CMD+;'
        end

        entry do
            name 'Step into selection'
            command 'CMD+F11 or CMD+SHIFT+F11'
        end

        entry do
            name 'Step out'
            command 'SHIFT+F11 / CMD+SHIFT+;'
        end

        entry do
            name 'Next/previous call frame'
            command 'CTRL+. / CTRL+,'
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
            command 'ALT+Up arrow'
        end

        entry do
            name 'Decrememt CSS unit by 1'
            command 'ALT+Down arrow'
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
            name 'Start/stop recording'
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
            name 'Start/stop recording'
            command 'CMD+E'
        end
    end

  notes <<-'END'
    * Created by [Rob Simpson](https://github.com/pertrai1).
  END
end
