cheatsheet do
  title 'Amethyst'
  docset_file_name 'Amethyst'
  keyword 'amethyst'
  source_url 'http://cheat.kapeli.com'

  # A cheat sheet must consist of categories
  category do
    id 'Layouts'
    
    entry do
      command 'mod1 + space'
      name 'cycle-layout'
      notes 'Cycle layout to the next layout'
    end
    
    entry do
      command 'mod2 + space'
      name 'cycle-layout-backward'
      notes 'Cycle layout to the previous layout'
    end
    
    entry do
      command 'mod1 + a'
      name 'select-tall-layout'
      notes 'Select the tall layout: a main area on the left and a secondary area on the right'
    end
    
    entry do
      command 'mod1 + s'
      name 'select-wide-layout'
      notes 'Select the wide layout: a main area on the top and a secondary column on the right'
    end
    
    entry do
      command 'mod1 + d'
      name 'select-fullscreen-layout'
      notes 'Select the fullscreen layout: all windows are sized to fill the screen'
    end
    entry do
      command 'mod1 + f'
      name 'select-column-layout'
      notes 'All windows are distributed in evenly sized in columns from left to right'
    end

    entry do
      command 'mod1 + h'
      name 'shrink-main'
      notes 'Shrink the main pane of the current layout'
    end
    entry do
      command 'mod1 + l'
      name 'expand-main'
      notes 'Expand the main pane of the current layout'
    end
    entry do
      command 'mod1 + ,'
      name 'increase-main'
      notes 'Increase the number of windows in the main pane'
    end
    entry do
      command 'mod1 + .'
      name 'decrease-main'
      notes 'Decrease the number of windows in the main pane'
    end

    entry do
      command 'mod1 + t'
      name 'toggle-float'
      notes 'Toggle the focused window between being floating and tiled'
    end

    entry do
      command 'mod2 + t'
      name 'toggle-tiling'
      notes 'Toggle tiling of all windows'
    end
    
    entry do
      command 'mod1 + i'
      name 'display-current-layout'
      notes 'Show a HUD with the current layout'
    end
    
  end
  
  category do
    id 'Windows'
    
    entry do
      command 'mod1 + w'      
      name 'focus-screen-1'
      notes 'Focus the main window on the first screen'
    end
    entry do
      command 'mod1 + e'
      name 'focus-screen-2'
      notes 'Focus the main window on the second screen'
    end
    entry do
      command 'mod1 + r'
      name 'focus-screen-3'
      notes 'Focus the main window on the third screen'
    end
    entry do
      command 'mod2 + w'
      name 'throw-screen-1'
      notes 'Throw the focused window to the first screen'
    end
    entry do
      command 'mod2 + e'
      name 'throw-screen-2'
      notes 'Throw the focused window to the second screen'
    end
    entry do
      command 'mod2 + r'
      name 'throw-screen-3'
      notes 'Throw the focused window to the third screen'
    end

    entry do
      command 'mod1 + j'
      name 'focus-ccw'
      notes 'Move window focus counter-clockwise on the current screen'
    end
    entry do
      command 'mod1 + k'
      name 'focus-cw'
      notes 'Move window focus clockwise on the current screen'
    end

    entry do
      command 'mod2 + h'
      name 'swap-screen-ccw'
      notes 'Throw the focused window counter-clockwise to the next screen'
    end
    entry do
      command 'mod2 + l'
      name 'swap-screen-cw'
      notes 'Throw the focused window clockwise to the next screen'
    end
    
    entry do
      command 'mod2 + j'
      name 'swap-ccw'
      notes 'Swap focused window with the next window going counter-clockwise'
    end
    entry do
      command 'mod2 + k'
      name 'swap-cw'
      notes 'Swap focused window with the next window going clockwise'
    end
    
    entry do
      command 'mod1 + enter'
      name 'swap-main'
      notes 'Swap focused window with the main window of its screen'
    end
    entry do
      command 'mod2 + 1'
      name 'throw-space-1'
      notes 'Throw the focused window to the first space'
    end
    entry do
      command 'mod2 + 2'
      name 'throw-space-2'
      notes 'Throw the focused window to the second space'
    end
    entry do
      command 'mod2 + 3'
      name 'throw-space-3'
      notes 'Throw the focused window to the third space'
    end
    entry do
      command 'mod2 + 4'
      name 'throw-space-4'
      notes 'Throw the focused window to the fourth space'
    end
    entry do
      command 'mod2 + 5'
      name 'throw-space-5'
      notes 'Throw the focused window to the fifth space'
    end
    entry do
      command 'mod2 + 6'
      name 'throw-space-6'
      notes 'Throw the focused window to the sixth space'
    end
    entry do
      command 'mod2 + 7'
      name 'throw-space-7'
      notes 'Throw the focused window to the seventh space'
    end
    entry do
      command 'mod2 + 8'
      name 'throw-space-8'
      notes 'Throw the focused window to the eighth space'
    end
    entry do
      command 'mod2 + 9'
      name 'throw-space-9'
      notes 'Throw the focused window to the ninth space'
    end
  end
  
end
