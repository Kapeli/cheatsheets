cheatsheet do
  title 'Grafx2'
  docset_file_name 'Grafx2'
  keyword 'grafx2'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Move'

    entry do
      command 'Arrow Up'
      name 'Scroll up'
      notes 'Scrolls the picture up, both in magnify and normal mode. This hotkey cannot be removed.'
    end

    entry do
      command 'Arrow Down'
      name 'Scroll down'
      notes 'Scrolls the picture down, both in magnify and normal mode. This hotkey cannot be removed.'
    end

    entry do
      command 'Arrow Left'
      name 'Scroll left'
      notes 'Scrolls the picture to the left, both in magnify and normal mode. This hotkey cannot be removed.'
    end

    entry do
      command 'Arrow Right'
      name 'Scroll right'
      notes 'Scrolls the picture to the right, both in magnify and normal mode. This hotkey cannot be removed.'
    end

    entry do
      command 'SHIFT+Arrow Up'
      name 'Faster scroll up'
      notes 'Used to scroll upwards in the picture fast, either in magnify and normal mode.'
    end

    entry do
      command 'SHIFT+Arrow Down'
      name 'Faster scroll down'
      notes 'Used to scroll downwards in the picture fast, either in magnify and normal mode.'
    end

    entry do
      command 'SHIFT+Arrow Left'
      name 'Faster scroll left'
      notes 'Used to scroll to the left in the picture fast, either in magnify and normal mode.'
    end

    entry do
      command 'SHIFT+Arrow Right'
      name 'Faster scroll right'
      notes 'Used to scroll to the right in the picture fast, either in magnify and normal mode.'
    end

    entry do
      command 'ALT+Arrow Up'
      name 'Slower scroll up'
      notes 'Used to scroll upwards in the picture pixel by pixel, either in magnify and normal mode.'
    end

    entry do
      command 'ALT+Arrow Down'
      name 'Slower scroll down'
      notes 'Used to scroll downwards in the picture pixel by pixel, either in magnify andnormal mode. normal mode.'
    end

    entry do
      command 'ALT+Arrow Left'
      name 'Slower scroll left'
      notes 'Used to scroll to the left in the picture pixel by pixel, either in magnify and normal mode.'
    end

    entry do
      command 'ALT+Arrow Right'
      name 'Slower scroll right'
      notes 'Used to scroll to the right in the picture pixel by pixel, either in magnify and normal mode.'
    end

  end

  category do
    id 'Mouse emulation'

    entry do
      command 'CTRL+Arrow Up'
      name 'Move mouse cursor 1 pixel up'
      notes 'Used to simulate a very small mouse deplacement upwards. Its very useful when you want a ultra-high precision.'
    end

    entry do
      command 'CTRL+Arrow Down'
      name 'Move mouse cursor 1 pixel down'
      notes 'Used to simulate a very small mouse deplacement downwards. Its very useful when you want a ultra-high precision.'
    end

    entry do
      command 'CTRL+Arrow Left'
      name 'Move mouse cursor 1 pixel left'
      notes 'Used to simulate a very small mouse deplacement to the left. Its very useful when you want a ultra-high precision.'
    end

    entry do
      command 'CTRL+Arrow Right'
      name 'Move mouse cursor 1 pixel right'
      notes 'Used to simulate a very small mouse deplacement to the right. Its very useful when you want a ultra-high precision.'
    end

    entry do
      command 'Space'
      name 'Simulate left mouse click'
      notes 'Used to simulate a click with the left mouse button.. Its very useful when you want a ultra-high precision.'
    end

    entry do
      command 'SHIFT+Space'
      name 'Simulate right mouse click'
      notes 'Used to simulate a click with the right mouse button.. Its very useful when you want a ultra-high precision.'
    end

  end

  category do
    id 'Settings'

    entry do
      command 'SHIFT+F10'
      name 'Settings'
      notes 'Opens a menu which permits you to set the dimension of your picture, and to modify some parameters of the program.'
    end

    entry do
      command 'Return'
      name 'Screen resolution menu'
      notes 'Opens a menu where you can choose the dimensions of the screen in which you want to draw among the numerous X and SVGA proposed modes.'
    end

    entry do
      command 'SHIFT+Return'
      name '"Safety" resolution'
      notes 'Set resolution to 320x200. This can be useful if you choosed a resolution that is not supported by your monitor and video card. Cannot be removed.'
    end

    entry do
      command 'F10'
      name 'Show/hide option menu'
      notes 'Switch the tool bar display on/off. This hot-key cannot be removed.'
    end

    entry do
      command 'F9'
      name 'Show/hide cursor'
      notes 'Switch the cursor display on/off. This only works on the "small cross" and "hand" cursors.'
    end

  end

  category do
    id 'Brush'

    entry do
      command 'Del'
      name 'Set paintbrush to 1 pixel'
      notes 'Useful when you want to use a "single-pixel-brush".'
    end

    entry do
      command 'F4'
      name 'Paintbrush choice'
      notes 'Opens a menu where you can choose a paintbrush out of 24 predefined ones.'
    end

    entry do
      command 'SHIFT+F4'
      name 'Monochrome brush'
      notes 'Turn your current user-defined brush into a single colored one. All non-transparent colors are set to current foreground color.'
    end

  end

  category do
    id 'Paint'

    entry do
      command 'U'
      name 'Undo (Oops!)'
      notes 'Cancel the last action which modified the picture. This has no effect after a jump to the spare page, loading a picture or modifying its size.'
    end

    entry do
      command 'SHIFT+U'
      name 'Redo'
      notes 'Redo the last undone action. This has no effect after a jump to the spare page, loading a picture or modifying its size.'
    end

    entry do
      command 'D'
      name 'Freehand drawing'
      notes 'Set the drawing mode to the classical freehand one.'
    end

    entry do
      command 'SHIFT+D'
      name 'Switch freehand drawing mode'
      notes 'Switch between the 3 ways to use freehand drawing. These modes are: continuous, discontinuous and point by point.'
    end

    entry do
      command 'CTRL+D'
      name 'Continuous freehand drawing'
      notes 'Switch directly to continuous freehand drawing mode.'
    end

    entry do
      command 'L'
      name 'Line'
      notes 'Allows you to draw lines.'
    end

    entry do
      command 'SHIFT+L'
      name 'Knotted lines'
      notes 'Allows you to draw linked lines. This mode can also be called "Polyline".'
    end

    entry do
      command 'A'
      name 'Spray'
      notes 'Allows you to spray brushes randomly in the picture.'
    end

    entry do
      command 'SHIFT+A'
      name 'Spray menu'
      notes 'Opens a menu in which you can configure the spray flow and size.'
    end

    entry do
      command 'F'
      name 'Flood-fill'
      notes 'Allows you to fill an area of the picture made of pixels of the same color.'
    end

    entry do
      command 'SHIFT+F'
      name 'Replace color'
      notes 'Allows you to replace all the pixels of the color pointed by the mouse with the fore-color or the back-color.'
    end

    entry do
      command 'I'
      name 'Beziers curves'
      notes 'Allows you to draw Beziers curves.'
    end

    entry do
      command 'SHIFT+I'
      name 'Beziers curve with 3 or 4 points'
      notes 'Allows you to choose whether you want to draw Beziers curves with 3 or 4 points.'
    end

    entry do
      command 'R'
      name 'Empty rectangle'
      notes 'Allows you to draw a rectangle using the brush.'
    end

    entry do
      command 'SHIFT+R'
      name 'Filled rectangle'
      notes 'Allows you to draw a filled rectangle.'
    end

    entry do
      command 'C'
      name 'Empty circle'
      notes 'Allows you to draw a circle using the brush.'
    end

    entry do
      command 'CTRL+C'
      name 'Empty ellipse'
      notes 'Allows you to draw an ellipse using the brush.'
    end

    entry do
      command 'SHIFT+C'
      name 'Filled circle'
      notes 'Allows you to draw a filled circle.'
    end

    entry do
      command 'CTRL+SHIFT+C'
      name 'Filled ellipse'
      notes 'Allows you to draw a filled ellipse.'
    end

    entry do
      command 'N'
      name 'Empty polygon'
      notes 'Allows you to draw a polygon using the brush.'
    end

    entry do
      command 'CTRL+N'
      name 'Empty "polyform"'
      notes 'Allows you to draw a freehand polygon using the brush.'
    end

    entry do
      command 'SHIFT+N'
      name 'Filled polygon'
      notes 'Allows you to draw a filled polygon.'
    end

    entry do
      command 'CTRL+SHIFT+N'
      name 'Filled "polyform"'
      notes 'Allows you to draw a filled freehand polygon.'
    end

    entry do
      command 'ALT+R'
      name 'Rectangle with gradation'
      notes 'Allows you to draw a rectangle with a color gradation.'
    end

    entry do
      command 'ALT+G'
      name 'Gradation menu'
      notes 'Allows you to configure the way color gradations are calculated.'
    end

    entry do
      command 'ALT+C'
      name 'Sphere with gradation'
      notes 'Allows you to draw a rectangle with a color gradation.'
    end

    entry do
      command 'ALT+SHIFT+C'
      name 'Ellipse with gradation'
      notes 'Allows you to draw an ellipse filled with a color gradation.'
    end

    entry do
      command 'T'
      name 'Text'
      notes 'Opens a menu which permits you to type in a character string and to choose a font, and then creates a new user-defined brush fitting to your choices.'
    end

    entry do
      command ','
      name 'Shrink paintbrush'
      notes 'Decrease the width of the paintbrush if it is special circle or square.'
    end

    entry do
      command '.'
      name 'Enlarge paintbrush'
      notes 'Increase the width of the paintbrush if it is special circle or square.'
    end

  end

  category do
    id 'Picture'

    entry do
      command 'KP 5'
      name 'Adjust picture'
      notes 'Allows you to move the whole picture in order to re-center it. Notice that what gets out from a side reappears on the other.'
    end

    entry do
      command 'SHIFT+KP 5'
      name 'Flip/shrink picture menu'
      notes 'Opens a menu which allows you to flip the picture horizontally/vertically or to shrink it to half-scale horizontally and/or vertically.'
    end

  end

  category do
    id 'Effects'

    entry do
      command 'E'
      name 'Drawing effects'
      notes 'Opens a menu where you can enable/disable and configure the drawing effects listed below.'
    end

    entry do
      command 'F5'
      name 'Shade mode'
      notes 'Allows you to shade or lighten some pixels of the picture belonging to a color range, in addition of any drawing tool.'
    end

    entry do
      command 'SHIFT+F5'
      name 'Shade menu'
      notes 'Opens a menu where you can choose color ranges to use with the Shade mode. This menu also contains parameters used both in Shade and Quick-shade modes.'
    end

    entry do
      command 'CTRL+F5'
      name 'Quick-shade mode'
      notes 'Does the same thing as shade mode with a simpler method (faster to define but a bit less powerful).'
    end

    entry do
      command 'CTRL+SHIFT+F5'
      name 'Quick-shade menu'
      notes 'Opens a menu where you can define the parameters of the quick-shade mode.'
    end

    entry do
      command 'F6'
      name 'Stencil mode'
      notes 'Allows you to mask colors that must not be affected when you are drawing.'
    end

    entry do
      command 'SHIFT+F6'
      name 'Stencil menu'
      notes 'Opens a menu where you can choose colors masked by the Stencil mode.'
    end

    entry do
      command 'ALT+F6'
      name 'Mask mode'
      notes 'Allows you to mask colors of the spare page that will keep you from drawing. This mode should be called "True stencil".'
    end

    entry do
      command 'ALT+SHIFT+F6'
      name 'Mask menu'
      notes 'Opens a menu where you can choose colors for the Mask mode.'
    end

    entry do
      command 'G'
      name 'Grid mode'
      notes 'Force the cursor to snap up grid points.'
    end

    entry do
      command 'SHIFT+G'
      name 'Grid menu'
      notes 'Open a menu where you can configure the grid used by Grid mode.'
    end

    entry do
      command 'CTRL+G'
      name 'Sieve mode'
      notes 'Only draws pixels on certain positions matching with a sieve.'
    end

    entry do
      command 'CTRL+SHIFT+G'
      name 'Sieve menu'
      notes 'Opens a menu where you can configure the sieve.'
    end

    entry do
      command 'CTRL+ALT+G'
      name 'Invert sieve'
      notes 'Inverts the pattern defined in the Sieve menu.'
    end

    entry do
      command 'F7'
      name 'Colorize mode'
      notes 'Allows you to colorize the pixels on which your brush is pasted. This permits you to make transparency effects.'
    end

    entry do
      command 'SHIFT+F7'
      name 'Colorize menu'
      notes 'Opens a menu where you can give the opacity percentage for Colorize mode.'
    end

    entry do
      command 'F8'
      name 'Smooth mode'
      notes 'Soften pixels on which your brush is pasted.'
    end

    entry do
      command 'SHIFT+F8'
      name 'Smooth menu'
      notes 'Opens a menu where you can define the Smooth matrix.'
    end

    entry do
      command 'ALT+F8'
      name 'Smear mode'
      notes 'Smears the pixels when you move your brush on the picture.'
    end

    entry do
      command 'ALT+B'
      name 'Tiling mode'
      notes 'Puts parts of the brush where you draw.'
    end

    entry do
      command 'ALT+SHIFT+B'
      name 'Tiling menu'
      notes 'Opens a menu where you can configure the origin of the tiling.'
    end

  end

  category do
    id 'Brush'

    entry do
      command 'B'
      name 'Classical brush grabbing'
      notes 'Allows you to pick a brush defined within a rectangle.'
    end

    entry do
      command 'CTRL+B'
      name '"Lasso" brush grabbing'
      notes 'Allows you to pick a brush defined within a freehand polygon.'
    end

    entry do
      command 'SHIFT+B'
      name 'Get previous brush back'
      notes 'Restore the last user-defined brush.'
    end

    entry do
      command 'X'
      name 'Horizontal brush flipping'
      notes 'Reverse brush horizontally.'
    end

    entry do
      command 'Y'
      name 'Vertical brush flipping'
      notes 'Reverse brush vertically.'
    end

    entry do
      command 'Z'
      name '90ø brush rotation'
      notes 'Rotate the user-defined brush by 90ø (counter-clockwise).'
    end

    entry do
      command 'SHIFT+Z'
      name '180ø brush rotation'
      notes 'Rotate the user-defined brush by 180ø.'
    end

    entry do
      command 'S'
      name 'Strech brush'
      notes 'Allows you to resize the user-defined brush.'
    end

    entry do
      command 'SHIFT+S'
      name 'Distort brush'
      notes 'Allows you to distort the user-defined brush.'
    end

    entry do
      command 'O'
      name 'Outline brush'
      notes 'Outlines the user-defined brush with the fore color.'
    end

    entry do
      command 'SHIFT+O'
      name 'Nibble brush'
      notes 'Deletes the borders of the user-defined brush. This does the opposite of the Outline option.'
    end

    entry do
      command 'F11'
      name 'Get colors from brush'
      notes 'Copy colors of the spare page that are used in the brush.'
    end

    entry do
      command 'F12'
      name 'Recolorize brush'
      notes 'Recolorize pixels of the user-defined brush in order to get a brush which looks like the one grabbed in the spare page.'
    end

    entry do
      command 'W'
      name 'Rotate by any angle'
      notes 'Rotate the brush by an angle that you can define.'
    end

    entry do
      command 'CTRL+ALT+B'
      name 'Brush effects menu'
      notes 'Opens a menu which proposes different effects on the user-defined brush.'
    end

    entry do
      command 'CTRL+KP 5'
      name 'Center brush attachment point'
      notes 'Set the attachement of the user-defined brush to its center.'
    end

    entry do
      command 'CTRL+Home'
      name 'Top-left brush attachment point'
      notes 'Set the attachement of the user-defined brush to its top-left corner.'
    end

    entry do
      command 'CTRL+Page Up'
      name 'Top-right brush attachment point'
      notes 'Set the attachement of the user-defined brush to its top-right corner.'
    end

    entry do
      command 'CTRL+End'
      name 'Bottom-left brush attachment point'
      notes 'Set the attachement of the user-defined brush to its bottom-left corner.'
    end

    entry do
      command 'CTRL+Page Down'
      name 'Bottom-right brush attachment point'
      notes 'Set the attachement of the user-defined brush to its bottom-right corner.'
    end

  end

  category do
    id 'Colors'

    entry do
      command '`'
      name 'Pipette'
      notes 'Allows you to copy the color of a pixel in the picture into the foreground or background color.'
    end

    entry do
      command 'SHIFT+`'
      name 'Swap foreground/background colors'
      notes 'Invert foreground and background colors.'
    end

    entry do
      command 'P'
      name 'Palette menu'
      notes 'Opens a menu which allows you to modify the current palette.'
    end

    entry do
      command 'SHIFT+P'
      name 'Secondary palette menu'
      notes 'Opens a menu which allows you to define color series and some tagged colors.'
    end

    entry do
      command 'CTRL+P'
      name 'Exclude colors menu'
      notes 'Opens a menu which allows you to define the colors you dont want to use in modes such as Smooth and Transparency, or when remapping a brush.'
    end

    entry do
      command 'Page Up'
      name 'Scroll palette to the left'
      notes 'Scroll palette in the tool bar to the left, column by column.'
    end

    entry do
      command 'Page Down'
      name 'Scroll palette to the right'
      notes 'Scroll palette in the tool bar to the right, column by column.'
    end

    entry do
      command 'SHIFT+Page Up'
      name 'Scroll palette to the left faster'
      notes 'Scroll palette in the tool bar to the left, 8 columns by 8 columns.'
    end

    entry do
      command 'SHIFT+Page Down'
      name 'Scroll palette to the right faster'
      notes 'Scroll palette in the tool bar to the right, 8 columns by 8 columns.'
    end

    entry do
      command ']'
      name 'Next foreground color'
      notes 'Set the foreground color to the next in the palette.'
    end

    entry do
      command '['
      name 'Previous foreground color'
      notes 'Set the foreground color to the previous in the palette.'
    end

    entry do
      command 'SHIFT+]'
      name 'Next background color'
      notes 'Set the background color to the next in the palette.'
    end

    entry do
      command 'SHIFT+['
      name 'Previous background color'
      notes 'Set the background color to the previous in the palette.'
    end

    entry do
      command '='
      name 'Next user-defined forecolor'
      notes 'Set the foreground color to the next in the user-defined color series.'
    end

    entry do
      command '-'
      name 'Previous user-defined forecolor'
      notes 'Set the foreground color to the previous in the user-defined color series.'
    end

    entry do
      command 'SHIFT+='
      name 'Next user-defined backcolor'
      notes 'Set the background color to the next in the user-defined color series.'
    end

    entry do
      command 'SHIFT+-'
      name 'Previous user-defined backcolor'
      notes 'Set the background color to the previous in the user-defined color series.'
    end

  end

  category do
    id 'Zoom'

    entry do
      command 'M'
      name 'Magnifier mode'
      notes 'Allows you to zoom into the picture.'
    end

    entry do
      command 'SHIFT+M'
      name 'Zoom factor menu'
      notes 'Opens a menu where you can choose a magnifying factor.'
    end

    entry do
      command 'KP +'
      name 'Zoom in'
      notes 'Increase magnifying factor.'
    end

    entry do
      command 'KP -'
      name 'Zoom out'
      notes 'Decrease magnifying factor.'
    end

  end

  category do
    id 'Divers'

    entry do
      command 'Q'
      name 'Quit program'
      notes 'Allows you to leave the program. If modifications were not saved, confirmation is asked.'
    end

    entry do
      command 'F1'
      name 'Help and credits'
      notes 'Opens a window where you can get information about the program.'
    end

    entry do
      command 'SHIFT+F1'
      name 'Statistics'
      notes 'Displays miscellaneous more or less useful information.'
    end

  end

  category do
    id 'Save/Load'

    entry do
      command 'F2'
      name 'Save picture as...'
      notes 'Opens a file-selector that allows you to save your picture with a new path-name.'
    end

    entry do
      command 'SHIFT+F2'
      name 'Save picture'
      notes 'Saves your picture with the last name you gave it.'
    end

    entry do
      command 'F3'
      name 'Load picture'
      notes 'Opens a file-selector that allows you to load a new picture.'
    end

    entry do
      command 'SHIFT+F3'
      name 'Re-load picture'
      notes 'Re-load the current picture. This allows you to cancel modifications made since last saving.'
    end

    entry do
      command 'CTRL+F2'
      name 'Save brush'
      notes 'Opens a file-selector that allows you to save your current user-defined brush.'
    end

    entry do
      command 'CTRL+F3'
      name 'Load brush'
      notes 'Opens a file-selector that allows you to load a brush.'
    end

  end

  category do
    id 'Pages'

    entry do
      command 'Tab'
      name 'Jump to spare page'
      notes 'Swap current page and spare page.'
    end

    entry do
      command 'SHIFT+Tab'
      name 'Copy current page to spare page'
      notes 'Copy current page to spare page.'
    end

    entry do
      command 'SHIFT+Del'
      name 'Kill'
      notes 'Kills the current page. It actually removes the current page from the list of "Undo" pages.'
    end

    entry do
      command 'Backspace'
      name 'Clear page'
      notes 'Clears the picture with the first color of the palette (usually black).'
    end

    entry do
      command 'SHIFT+Backspace'
      name 'Clear page with backcolor'
      notes 'Clears the picture with the backcolor.'
    end

  end

  notes 'These are the default shortcuts. You can modify the actual shortcuts for your config in the helpscreen inside the program.'
end