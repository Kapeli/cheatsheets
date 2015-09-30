cheatsheet do
  title 'Blender 2.5'               # Will be displayed by Dash in the docset list
  docset_file_name 'Blender2.5'    # Used for the filename of the docset
  keyword 'Blender'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'Blender 2.5 Keyboard Shortcuts'  # Optional, can contain Markdown or HTML

  category do
    id 'Basics'
    entry do
      command 'Right Click'
      name 'Select'
    end
    entry do
      command 'Middle Click'
      name 'Pan'
    end
    entry do
      command 'Mouse Wheel'
      name 'Zoom'
    end
    entry do
      command 'SHIFT+A'
      name 'Add Object'
    end
    entry do
      command 'X'
      name 'Delete'
    end
    entry do
      command 'Spacebar'
      name 'Search for Function'
    end
    entry do
      command 'T'
      name 'Toolbar'
    end
    entry do
      command 'N'
      name 'Properties'
    end
    entry do
      command 'CTRL+S'
      name 'Save File'
    end
    entry do
      command 'F12'
      name 'Render'
    end
    entry do
      command 'CTRL+F12'
      name 'Render Animation'
    end
    entry do
      command 'ESC'
      name 'Stop Render'
    end
    entry do
      command 'F3'
      name 'Save Render'
    end
    entry do
      command 'F11'
      name 'Show Last Render'
    end
    entry do
      command 'CTRL+Z'
      name 'Undo'
    end
    entry do
      command 'CTRL+SHIFT+Z'
      name 'Redo'
    end
  end

  category do
    id 'General'
    entry do
      command 'SHIFT+D'
      name 'Duplicate'
    end
    entry do
      command 'M'
      name 'Move to layer'
    end
    entry do
      command 'CTRL+M'
      name 'Mirror'
    end
    entry do
      command 'H'
      name 'Hide'
    end
    entry do
      command 'ALT+H'
      name 'Unhide'
    end
    entry do
      command 'CTRL+ALT+SHIFT+C'
      name 'Move to origin point'
    end
    entry do
      command 'CTRL+P'
      name 'Parent to'
    end
    entry do
      command 'ALT+P'
      name 'Clear parent'
    end
    entry do
      command 'CTRL+T'
      name 'Track to'
    end
    entry do
      command 'ALT+T'
      name 'Clear track'
    end
    entry do
      command 'SHIFT+C'
      name 'Reset 3D cursor'
    end
    entry do
      command 'CTRL+Spacebar'
      name 'Turn widget on/off'
    end
    entry do
      command 'CTRL+G'
      name 'Add to group'
    end
  end

  category do
    id 'Movements'
    entry do
      command 'G'
      name 'Move'
    end
    entry do
      command 'R'
      name 'Rotate'
    end
    entry do
      command 'S'
      name 'Scale'
    end
    entry do
      command '[HOLD]+SHIFT'
      name 'Precise movements'
    end
    entry do
      command '[HOLD]+CTRL'
      name 'Increment movements'
    end
    entry do
      command 'Middle Click or X/Y/Z'
      name 'Lock to axis'
    end
  end

  category do
    id 'Navigation'
    entry do
      command 'NUMPAD7'
      name 'Top view'
    end
    entry do
      command 'NUMPAD1'
      name 'Front view'
    end
    entry do
      command 'NUMPAD3'
      name 'Side view'
    end
    entry do
      command 'CTRL+NUMPAD1/3/7'
      name 'Opposite view'
    end
    entry do
      command 'NUMPAD0'
      name 'Camera view'
    end
    entry do
      command 'NUMPAD.'
      name 'Zoom to object'
    end
    entry do
      command 'SHIF+F'
      name 'Fly mode'
    end
  end

  category do
    id 'Selection'
    entry do
      command 'RIGHT CLICK'
      name 'Select object'
    end
    entry do
      command 'SHIFT+RIGHT-CLICK'
      name 'Select multiple'
    end
    entry do
      command 'A'
      name '(De)Select all'
    end
    entry do
      command 'ALT+RIGHT-CLICK'
      name 'Select object behind'
    end
    entry do
      command 'L'
      name 'Select linked'
    end
    entry do
      command 'CTRL+L'
      name 'Select all linked'
    end
    entry do
      command 'B'
      name 'Box select'
    end
    entry do
      command 'C'
      name 'Circle select'
    end
    entry do
      command 'CTRL+CLICK'
      name 'Lasso tool'
    end
    entry do
      command 'CTRL+I'
      name 'Inverse selection'
    end
  end

  category do
    id 'Animation'
    entry do
      command 'ALT+A'
      name 'Play/stop animation'
    end
    entry do
      command 'ALT+SHIFT+A'
      name 'Play animation in reverse'
    end
    entry do
      command 'RIGHT-ARROW'
      name 'Next frame'
    end
    entry do
      command 'LEFT-ARROW'
      name 'Previous frame'
    end
    entry do
      command 'UP-ARROW'
      name 'Forward 10 frames'
    end
    entry do
      command 'DOWN-ARROW'
      name 'Back 10 frames'
    end
    entry do
      command 'SHIFT+LEFT-ARROW'
      name 'Jump to start point'
    end
    entry do
      command 'SHIFT+RIGHT-ARROW'
      name 'Jump to end point'
    end
    entry do
      command 'ALT+MOUSEWHEEL'
      name 'Scroll through frames'
    end
    entry do
      command 'I'
      name 'Insert keyframe'
    end
    entry do
      command 'ALT+I'
      name 'Remove keyframe'
    end
    entry do
      command 'CTRL+PAGEUP'
      name 'Jump to next keyframe'
    end
    entry do
      command 'CTRL+PAGEDOWN'
      name 'Jump to previous keyframe'
    end
  end

  category do
    id 'Armatures'
    entry do
      command 'E / CTRL+CLICK'
      name 'Add bone'
    end
    entry do
      command 'CTRL+R'
      name 'Rotate'
    end
    entry do
      command 'CTRL+N'
      name 'Recalculate roll'
    end
    entry do
      command 'CTRL+ALT+A'
      name 'Align bones'
    end
    entry do
      command 'M'
      name 'Move to bone layers'
    end
    entry do
      command 'SHIFT+M'
      name 'View bone layers'
    end
    entry do
      command 'SHIFT+W'
      name 'Set bone flag'
    end
    entry do
      command 'ALT+F'
      name 'Switch bone direction'
    end
    entry do
      command '] / ['
      name 'Scroll hierarchy'
    end
    entry do
      command 'SHIFT+] / ['
      name 'Select hierarchy'
    end
    entry do
      command 'L'
      name 'Select connected'
    end
  end

  category do
    id 'Pose Mode'
    entry do
      command 'CTRL+A'
      name 'Apply pose'
    end
    entry do
      command 'ALT+R'
      name 'Clear pose rotation'
    end
    entry do
      command 'ALT+L'
      name 'Clear pose location'
    end
    entry do
      command 'ALT+S'
      name 'Clear pose scale'
    end
    entry do
      command 'CTRL+C'
      name 'Copy pose'
    end
    entry do
      command 'CTRL+V'
      name 'Paste pose'
    end
    entry do
      command 'SHIFT+I'
      name 'Add IK'
    end
    entry do
      command 'CTRL+ALT+I'
      name 'Remove IK'
    end
    entry do
      command 'CTRL+G'
      name 'Add to bone group'
    end
    entry do
      command 'ALT+E'
      name 'Relax pose'
    end
  end

  category do
    id 'Timeline'
    entry do
      command 'S'
      name 'Set start frame'
    end
    entry do
      command 'E'
      name 'Set end frame'
    end
    entry do
      command 'HOME'
      name 'Show all frames'
    end
    entry do
      command 'M'
      name 'Add marker'
    end
    entry do
      command 'RIGHT-CLICK & DRAG'
      name 'Move marker'
    end
    entry do
      command 'CTRL+T'
      name 'Toggle frame/seconds'
    end
  end

  category do
    id 'Video Sequence Editor'
    entry do
      command 'SHIFT+F8'
      name 'Switch to editor'
    end
    entry do
      command 'PAGEUP'
      name 'Next strip'
    end
    entry do
      command 'PAGEDOWN'
      name 'Previous strip'
    end
    entry do
      command 'K'
      name 'Split strips'
    end
    entry do
      command 'SHIFT+L'
      name 'Lock strip'
    end
    entry do
      command 'SHIFT+ALT+L'
      name 'Unlock strip'
    end
    entry do
      command 'CTRL+C'
      name 'Copy strip'
    end
    entry do
      command 'CTRL+V'
      name 'Paste strip'
    end
    entry do
      command 'Y'
      name 'Separate images'
    end
    entry do
      command 'SHIFT+S'
      name 'Snap strip to scrubber'
    end
  end

  category do
    id 'Node Editor'
    entry do
      command 'SHIFT+A'
      name 'Add node'
    end
    entry do
      command 'CTRL+CLICK'
      name 'Cut links'
    end
    entry do
      command 'H'
      name 'Hide/unhide node'
    end
    entry do
      command 'CTRL+G'
      name 'Make group'
    end
    entry do
      command 'ALT+G'
      name 'Ungroup'
    end
    entry do
      command 'TAB'
      name 'Edit group'
    end
    entry do
      command 'ALT+MIDDLE-CLICK'
      name 'Move background'
    end
    entry do
      command 'V'
      name 'Zoom in background'
    end
    entry do
      command 'ALT+V'
      name 'Zoom out background'
    end
    entry do
      command 'N'
      name 'Properties'
    end
  end

  category do
    id 'Modelling'
    entry do
      command 'F'
      name 'Make face'
    end
    entry do
      command 'W'
      name 'Subdivide'
    end
    entry do
      command 'E'
      name 'Extrude'
    end
    entry do
      command 'V'
      name 'Rip'
    end
    entry do
      command 'P'
      name 'Separate'
    end
    entry do
      command 'CTRL+R'
      name 'Create loopcut'
    end
    entry do
      command 'O'
      name 'Proportional editing'
    end
    entry do
      command 'ALT+RIGHT-CLICK'
      name 'Select edge loop'
    end
    entry do
      command 'CTRL+E'
      name 'Make seam/sharp'
    end
    entry do
      command 'ALT+M'
      name 'Merge vertices'
    end
    entry do
      command 'CTRL+M'
      name 'Mirror'
    end
    entry do
      command 'ALT+S'
      name 'Shrink/fatten'
    end
    entry do
      command 'K+CLICK'
      name 'Knife'
    end
    entry do
      command 'ALT+F'
      name 'Fill'
    end
    entry do
      command 'SHIFT+ALT+F'
      name 'Beauty fill'
    end
    entry do
      command 'CTRL+1/2/3/4'
      name 'Add subdivision level'
    end
  end

  category do
    id 'Editing Curves'
    entry do
      command 'ALT+C'
      name 'Close path'
    end
    entry do
      command 'CTRL+CLICK'
      name 'Add handle'
    end
    entry do
      command 'W'
      name 'Subdivide'
    end
    entry do
      command 'CTRL+T'
      name 'Tilt'
    end
    entry do
      command 'ALT+T'
      name 'Clear tilt'
    end
    entry do
      command 'H'
      name 'Change handle to bezier'
    end
    entry do
      command 'V'
      name 'Change handle to vector'
    end
    entry do
      command 'SHIFT+H'
      name 'Revert to default handle'
    end
  end

  category do
    id 'Sculpting'
    entry do
      command 'F'
      name 'Change brush size'
    end
    entry do
      command 'SHIFT+F'
      name 'Change brush strength'
    end
    entry do
      command 'CTRL+F'
      name 'Rotate brush structure'
    end
  end

  category do
    id 'Changing Modes'
    entry do
      command 'TAB'
      name 'Edit/object mode'
    end
    entry do
      command 'V'
      name 'Vertext paint mode'
    end
    entry do
      command 'CTRL+TAB'
      name 'Weight paint mode'
    end
    entry do
      command 'CTRL+LEFT/RIGHT-ARROW'
      name 'Cycle workspace'
    end
    entry do
      command 'SHIFT+F2'
      name 'Logic editor'
    end
    entry do
      command 'SHIFT+F3'
      name 'Node editor'
    end
    entry do
      command 'SHIFT+F4'
      name 'Console'
    end
    entry do
      command 'SHIFT+F5'
      name '3D viewport'
    end
    entry do
      command 'SHIFT+F6'
      name 'F-Curve editor'
    end
    entry do
      command 'SHIFT+F7'
      name 'Buttons'
    end
    entry do
      command 'SHIFT+F8'
      name 'Video sequence editor'
    end
    entry do
      command 'SHIFT+F9'
      name 'Outliner'
    end
    entry do
      command 'SHIFT+F10'
      name 'UV/Image editor'
    end
    entry do
      command 'SHIFT+F11'
      name 'Text editor'
    end
  end

  category do
    id 'Advanced'
    entry do
      command 'SHIFT+F1'
      name 'Append file'
    end
    entry do
      command 'ALT+F11'
      name 'Fullscreen mode'
    end
    entry do
      command 'CTRL+UP-ARROW'
      name 'Maximize subwindow'
    end
    entry do
      command 'CTRL+O'
      name 'Change active camera'
    end
    entry do
      command 'J'
      name 'Use render buffer'
    end
    entry do
      command 'W'
      name 'Only render selected'
    end
    entry do
      command 'SHIFT+B'
      name 'Only render portion'
    end
    entry do
      command 'CTRL+U'
      name 'Save over default scene'
    end
    entry do
      command 'CTRL+F4'
      name 'Make screencast'
    end
  end

  category do
    id 'Fly Mode'
    entry do
      command 'SHIFT+F'
      name 'Start fly mode'
    end
    entry do
      command 'MOUSEWHEEL-UP'
      name 'Accelerate'
    end
    entry do
      command 'MOUSEWHEEL-DOWN'
      name 'Decelerate'
    end
    entry do
      command 'MIDDLE-CLICK'
      name 'Pan'
    end
    entry do
      command 'W'
      name 'Fly forward'
    end
    entry do
      command 'S'
      name 'Fly backwards'
    end
    entry do
      command 'A'
      name 'Fly left'
    end
    entry do
      command 'D'
      name 'Fly right'
    end
    entry do
      command 'R'
      name 'Fly up'
    end
    entry do
      command 'F'
      name 'Fly down'
    end
  end

  notes 'Taken from BlenderGuru.com - By Ramsy de Vos'


  # A cheat sheet must consist of categories
#  category do
#    id 'Windows'  # Must be unique and is used as title of the category
#
#    entry do
#      command 'CMD+N'         # Optional
#      command 'CMD+SHIFT+N'   # Multiple commands are supported
#      name 'Create window'    # A short name, can contain Markdown or HTML
#      notes 'Some notes'      # Optional longer explanation, can contain Markdown or HTML
#    end
#    entry do
#      command 'CMD+W'
#      name 'Close window'
#    end
#  end
#
#  category do
#    id 'Code'
#    entry do
#      name 'Code sample'
#      notes <<-'END'
#        ```ruby
#        sample = "You can include code snippets as well"
#        ```
#        Or anything else **Markdown** or HTML.
#      END
#    end
#  end
#
#  notes 'Some notes at the end of the cheat sheet'
end
