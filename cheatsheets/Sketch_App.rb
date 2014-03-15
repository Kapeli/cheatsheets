cheatsheet do
    title 'Sketch'
    docset_file_name 'Sketch_App'
    keyword 'sketch'
    source_url 'http://cheat.kapeli.com'

    category do
        id 'Insert'

        entry do
            name 'Rectangle'
            command 'R'
        end

        entry do
            name 'Rounded Rectangle'
            command 'U'
        end

        entry do
            name 'Oval'
            command 'O'
        end

        entry do
            name 'Vector Point'
            command 'V'
        end

        entry do
            name 'Text'
            command 'T'
        end

        entry do
            name 'Line'
            command 'L'
        end
    end

    category do
        id 'Canvas View'

        entry do
            name 'Zoom In'
            command 'CMD(+)+'
        end

        entry do
            name 'Zoom Out'
            command 'CMD(+)-'
        end

        entry do
            name 'Actual Size'
            command 'CMD+0'
        end

        entry do
            name 'Center Canvas'
            command 'CMD+1'
        end

        entry do
            name 'Center Selection'
            command 'CMD+3'
        end

        entry do
            name 'Zoom Selection'
            command 'CMD+2'
        end

        entry do
            name 'Toggle Rulers'
            command 'CONTROL+R'
        end

        entry do
            name 'Toggle Grid'
            command 'CONTROL+G'
        end

        entry do
            name 'Toggle Layer Guides'
            command 'CONTROL+L'
        end

        entry do
            name 'Toggle Pixels'
            command 'CONTROL+P'
        end

        entry do
            name 'Toggle Selection Handles'
            command 'CONTROL+H'
        end

        entry do
            name 'Toggle Pixel Grid'
            command 'CONTROL+H'
        end
    end

    category do
        id 'Window'

        entry do
            name 'Toggle Layers List'
            command 'ALT+CMD+1'
        end

        entry do
            name 'Toggle Inpector'
            command 'ALT+CMD+2'
        end

        entry do
            name 'Toggle Layers, Inspector'
            command 'ALT+CMD+3'
        end

        entry do
            name 'Toggle Toolbar'
            command 'ALT+CMD+T'
        end

        entry do
            name 'Fullscreen'
            command 'CONTROL+CMD+F'
        end
    end

    category do
        id 'Editing Shapes'

        entry do
            name 'Use as Mask span (Works for Layers & Groups)'
            command 'CONTROL+CMD+M'
        end

        entry do
            name 'Union'
            command 'ALT+CMD+U'
        end

        entry do
            name 'Substract'
            command 'ALT+CMD+S'
        end

         entry do
            name 'Intersect'
            command 'ALT+CMD+I'
        end

        entry do
            name 'Difference'
            command 'ALT+CMD+X'
        end
    end

    category do
        id 'Editing Layers'

        entry do
            name 'Keep Current Selection'
            command 'A'
        end

        entry do
            name 'Show Distance to other Layers'
            command 'ALT'
        end
        
        entry do
            name 'Show Distance to other Layers inside Group'
            command 'ALT+CMD'
        end

        entry do
            name 'Duplicate (Repeat with ⌘D)'
            command 'ALT+Drag'
        end

        entry do
            name 'Copy Style'
            command 'ALT+CMD+C'
        end

        entry do
            name 'Paste Style'
            command 'ALT+CMD+V'
        end

        entry do
            name 'Color Picker'
            command 'CONTROL+C'
        end

        entry do
            name 'Transform'
            command 'CMD+T'
        end

        entry do
            name 'Rotate'
            command 'SHIFT+CMD+R'
        end

        entry do
            name 'Toggle Fill'
            command 'F'
        end

        entry do
            name 'Toggle Border'
            command 'B'
        end
    end

    category do
        id 'Arranging Layers, Groups and Artboards'

        entry do
            name 'Bring Forward'
            command 'ALT+CMD+↑'
        end

        entry do
            name 'Bring to Front'
            command 'CONTROL+ALT+CMD+↑'
        end

        entry do
            name 'Send Backward'
            command 'ALT+CMD+↓'
        end

        entry do
            name 'Send to Back'
            command 'CONTROL+ALT+CMD+↓'
        end

        entry do
            name 'Hide'
            command 'SHIFT+CMD+H'
        end

        entry do
            name 'Lock'
            command 'SHIFT+CMD+L'
        end

        entry do
            name 'Rename'
            command 'CMD+R'
        end

        entry do
            name 'Group Layers'
            command 'CMD+G'
        end

        entry do
            name 'Ungroup Layers'
            command 'SHIFT+CMD+G'
        end

        entry do
            name 'Select Above Layer'
            command 'SHIFT+TAB'
        end

        entry do
            name 'Select Layer Below'
            command 'TAB'
        end

        entry do
            name 'Select Parent Artboard'
            command 'ESC'
        end

        entry do
            name 'Find Layer by Name'
            command 'CMD+F'
        end
    end

  notes <<-'END'
    * Based on [sketchshortcuts.com](http://sketchshortcuts.com) by [Robert van Klinken](https://twitter.com/robertvklinken) & [Jeffrey de Groot](https://twitter.com/jeffreydgroot).
    * Converted by [Frank Betorina](https://twitter.com/frankbetorina).
  END
end
