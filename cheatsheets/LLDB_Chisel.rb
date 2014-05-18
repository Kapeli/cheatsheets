cheatsheet do
  title 'Chisel Commands'
  docset_file_name 'LLDB_Chisel'
  keyword 'chisel'
  source_url 'http://cheat.kapeli.com'
  
  # FBDisplayCommands.py
  category do
    id 'Display Commands'

    entry do
      name 'Show/Hide a view or layer.'
      notes '
      ```
      (lldb) show <viewOrLayer>
      (lldb) hide <viewOrLayer>
      ```
      '
    end

    entry do
      name 'Draws a border around <viewOrLayer>. Color and width can be optionally provided.'
      notes '
      ```
      (lldb) border <viewOrLayer>
      (lldb) unborder <viewOrLayer>
      ```
      '
    end

    entry do
      name 'Add a transparent rectangle to the window to reveal a possibly obscured or hidden view or layer\'s bounds.'
      notes '
      ```
      (lldb) mask <viewOrLayer>
      (lldb) unmask <viewOrLayer>
      ```
      '
    end

    entry do
      name 'Force Core Animation to flush. This will \'repaint\' the UI but also may mess with ongoing animations.'
      notes '
      ```
      (lldb) caflush
      ```
      '
    end

  end

  # FBFlickerCommands.py
  category do
    id 'Flicker Commands'

    entry do
      name 'Quickly show and hide a view to quickly help visualize where it is.'
      notes '
      ```
      (lldb) flicker <viewOrLayer>
      ```
      '
    end

    entry do
      name 'Interactively search for a view by walking the hierarchy.'
      notes '
      ```
      (lldb) vs <view>
      ```
      '
    end

  end

  # FBFindCommands.py
  category do
    id 'Find Commands'

    entry do
      name 'Find the view controllers whose class names match `classNameRegex` and puts the address of first on the clipboard.'
      notes '
      ```
      (lldb) fvc <classNameRegex>
      ```
      '
    end

    entry do
      name 'Find the views whose class names match `classNameRegex` and puts the address of first on the clipboard.'
      notes '
      ```
      (lldb) fv <classNameRegex>
      ```
      '
    end

    entry do
      name 'Find the views whose accessibility labels match `labelRegex` and puts the address of the first result on the clipboard.'
      notes '
      ```
      (lldb) fa11y <labelRegex>
      ```
      '
    end

  end

  # FBVisualizationCommands.py
  category do
    id 'Visualization Commands'

    entry do
      name 'Open a UIImage in Preview.app on your Mac.'
      notes '
      ```
      (lldb) showimage <anImage>
      ```
      '
    end

    entry do
      name 'Open a CGImageRef in Preview.app on your Mac.'
      notes '
      ```
      (lldb) showimageref <anImageRef>
      ```
      '
    end

    entry do
      name 'Render the given UIView into an image and open it in Preview.app on your Mac.'
      notes '
      ```
      (lldb) showview <aView>
      ```
      '
    end

    entry do
      name 'Render the given CALayer into an image and open it in Preview.app on your Mac.'
      notes '
      ```
      (lldb) showlayer <aLayer>
      ```
      '
    end

  end

  # FBInvocationCommands.py
  category do
    id 'Invocation Commands'

    entry do
      name 'Print the stack frame, receiver, and arguments of the current invocation. It will fail to print all arguments if any arguments are variadic (varargs).'
      notes '
      NOTE: Sadly this is currently only implemented on x86.
      ```
      (lldb) pinvocation [--all]
      ```
      '
    end 

  end

  # FBDebugCommands.py
  category do
    id 'Debug Commands'
    
    entry do
      name 'Set a watchpoint for an object\'s instance variable.'
      notes '
      ```
      (lldb) wivar <object> <ivarName>
      ```
      '
    end

    entry do
      name 'Set a breakpoint for a selector on a class, even if the class itself doesn\'t override that selector. It walks the hierarchy until it finds a class that does implement the selector and sets a conditional breakpoint there.'
      notes '
      ```
      (lldb) bmessage <expression>
      (lldb) bmessage -[MyView setFrame:]
      ```
      '
    end

  end

  # FBPrintCommands.py
  category do
    id 'Print Commands'
    
    entry do
      name 'Print the recursion description of <aView>.'
      notes '
      ```
      (lldb) pviews <aView>
      ```
      '
    end

    entry do
      name 'Print layer tree from the perspective of the render server.'
      notes '
      ```
      (lldb) pca
      ```
      '
    end

    entry do
      name 'Print the recursion description of <aViewController>.'
      notes '
      ```
      (lldb) pvc <aViewController>
      ```
      '
    end

    entry do
      name 'Prints if the code is currently execution with a UIView animation block.'
      notes '
      ```
      (lldb) panim
      ```
      '
    end

    entry do
      name 'Print the inheritance starting from an instance of any class.'
      notes '
      ```
      (lldb) pclass <anObject>
      ```
      '
    end

    entry do
      name 'Print the responder chain starting from a specific responder.'
      notes '
      ```
      (lldb) presponder <startResponder>
      ```
      '
    end

    entry do
      name 'Print the highest table view in the hierarchy.'
      notes '
      ```
      (lldb) ptv
      ```
      '
    end

    entry do
      name 'Print the visible cells of the highest table view in the hierarchy.'
      notes '
      ```
      (lldb) pcells
      ```
      '
    end

    entry do
      name 'Show the internals of an object by dereferencing it as a pointer.'
      notes '
      ```
      (lldb) pinternals <anObject>
      ```
      '
    end

    entry do
      name 'Print the value of an object\'s named instance variable.'
      notes '
      ```
      (lldb) pivar <anObject> <ivarName>
      ```
      '
    end

  end

  notes '* Based on the help documentation of Chisel https://github.com/facebook/chisel'
end
