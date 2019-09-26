cheatsheet do
  title 'LLDB Chisel Commands'
  docset_file_name 'LLDB_Chisel_Commands'
  keyword 'lldb'
  source_url 'http://cheat.kapeli.com'

  # FBAccessibilityCommands.py
  category do
    id 'Accessibility Commands'

    entry do
      name 'Print accessibility labels of all views in hierarchy of `aView`'
      notes '
      ```
      (lldb) pa11y <aView>
      ```
      '
    end

    entry do
      name 'Print accessibility identifiers of all views in hierarchy of `aView`'
      notes '
      ```
      (lldb) pa11yi <aView>
      ```
      '
    end

    entry do
      name 'Find the views whose accessibility labels match labelRegex and puts the address of the first result on the clipboard'
      notes '
      ```
      (lldb) fa11y <aView>
      ```
      '
    end
  end

  # FBAutoLayoutCommands.py
  category do
    id 'AutoLayout Commands'

    entry do
      name 'Print the Auto Layout trace for the given view. Defaults to the key window'
      notes '
      ```
      (lldb) paltrace [aView]
      ```
      '
    end

    entry do
      name 'Put a border around views with an ambiguous layout'
      notes '
      ```
      (lldb) alamborder
      ```
      '
    end

    entry do
      name 'Removes the border around views with an ambiguous layout'
      notes '
      ```
      (lldb) alamunborder
      ```
      '
    end
  end

  # FBClassDump.py

  category do
    id 'Class Dump'

    entry do
      name 'Print the class and instance methods of a class'
      notes '
      ```
      (lldb) pmethods <instance/class>
      -a / --address Print the implementation address of the method
      -i / --instance Print the instance methods
      -c / --class Print the class methods
      -n / --name Take the argument as class name
      ```
      '
    end

    entry do
      name 'Print the properties of an instance or class'
      notes '
      ```
      (lldb) pproperties -n <className>
      ```
      '
    end

    entry do
      name 'Print the block\'s implementation address and signature'
      notes '
      ```
      (lldb) pblock <block>
      ```
      '
    end
  end

  # FBComponentCommands.py

  category do
    id 'Component Commands'

    entry do
      name 'Set debugging options for components'
      notes '
      ```
      (lldb) dcomponents --set
      (lldb) dcomponents --unset
      ```
      '
    end

    entry do
      name 'Print a recursive description of components found starting from `aView`'
      notes '
      ```
      (lldb) pcomponents <aView>
      ```
      '
    end
  end
  
  # FBDisplayCommands.py
  category do
    id 'Display Commands'

    entry do
      name 'Show/hide a view or layer'
      notes '
      ```
      (lldb) show <viewOrLayer>
      (lldb) hide <viewOrLayer>
      ```
      '
    end

    entry do
      name 'Draws a border around `viewOrLayer`. Color and width can be optionally provided. Additionally depth can be provided in order to recursively border subviews'
      notes '
      ```
      (lldb) border <viewOrLayer>
      (lldb) unborder <viewOrLayer>
      -c <colorname>
      -w <width>
      -d <depth>
      ```
      '
    end

    entry do
      name 'Add a transparent rectangle to the window to reveal a possibly obscured or hidden view or layer\'s bounds'
      notes '
      ```
      (lldb) mask <viewOrLayer>
      (lldb) unmask <viewOrLayer>
      ```
      '
    end

    entry do
      name 'Force Core Animation to flush. This will \'repaint\' the UI but also may mess with ongoing animations'
      notes '
      ```
      (lldb) caflush
      ```
      '
    end

    entry do
      name 'Present a view controller'
      notes '
      ```
      (lldb) present <aViewController>
      ```
      '
    end

    entry do
      name 'Dismiss a presented view controller'
      notes '
      ```
      (lldb) dismiss <aViewController>
      ```
      '
    end

    entry do
      name 'Slows down animations. Works on the iOS Simulator and a device'
      notes '
      ```
      (lldb) slowanim
      ```
      '
    end

    entry do
      name 'Turn off slow animations'
      notes '
      ```
      (lldb) unslowanim
      ```
      '
    end

  end

  # FBFlickerCommands.py
  category do
    id 'Flicker Commands'

    entry do
      name 'Quickly show and hide a view to quickly help visualize where it is'
      notes '
      ```
      (lldb) flicker <viewOrLayer>
      ```
      '
    end

    entry do
      name 'Interactively search for a view by walking the hierarchy'
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
      name 'Find the view controllers whose class names match `classNameRegex` and puts the address of first on the clipboard'
      notes '
      ```
      (lldb) fvc <classNameRegex>
      ```
      '
    end

    entry do
      name 'Find the views whose class names match `classNameRegex` and puts the address of first result on the clipboard'
      notes '
      ```
      (lldb) fv <classNameRegex>
      ```
      '
    end

  end

  # FBVisualizationCommands.py
  category do
    id 'Visualization Commands'

    entry do
      name 'Open a UIImage in Preview.app on your Mac'
      notes '
      ```
      (lldb) showimage <anImage>
      ```
      '
    end

    entry do
      name 'Open a CGImageRef in Preview.app on your Mac'
      notes '
      ```
      (lldb) showimageref <anImageRef>
      ```
      '
    end

    entry do
      name 'Render the given UIView into an image and open it in Preview.app on your Mac'
      notes '
      ```
      (lldb) showview <aView>
      ```
      '
    end

    entry do
      name 'Render the given CALayer into an image and open it in Preview.app on your Mac'
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
      name 'Print the stack frame, receiver, and arguments of the current invocation. It will fail to print all arguments if any arguments are variadic (varargs)'
      notes '
      ```
      (lldb) pinvocation [--all]
      ```
      Note: sadly this is currently only implemented on x86.
      '
    end 

  end

  # FBDebugCommands.py
  category do
    id 'Debug Commands'
    
    entry do
      name 'Set a watchpoint for an object\'s instance variable'
      notes '
      ```
      (lldb) wivar <object> <ivarName>
      ```
      '
    end

    entry do
      name 'Set a breakpoint for a selector on a class, even if the class itself doesn\'t override that selector. It walks the hierarchy until it finds a class that does implement the selector and sets a conditional breakpoint there'
      notes '
      ```
      (lldb) bmessage <expression>
      (lldb) bmessage -[MyView setFrame:]
      ```
      '
    end

    entry do
      name 'Set a breakpoint for a relative address within the framework/library that\'s currently running. This does the work of finding the offset for the framework/library and sliding your address accordingly'
      notes '
      ```
      (lldb) binside <address>
      ```
      '
    end

    entry do
      name 'Simulate a memory warning'
      notes '
      ```
      (lldb) mwarning
      ```
      '
    end
  end

  # FBPrintCommands.py
  category do
    id 'Print Commands'
    
    entry do
      name 'Print the recursion description of `aView`'
      notes '
      ```
      (lldb) pviews <aView>
      ```
      '
    end

    entry do
      name 'Print layer tree from the perspective of the render server'
      notes '
      ```
      (lldb) pca
      ```
      '
    end

    entry do
      name 'Print the recursion description of `aViewController`'
      notes '
      ```
      (lldb) pvc <aViewController>
      ```
      '
    end

    entry do
      name 'Prints if the code is currently execution with a UIView animation block'
      notes '
      ```
      (lldb) panim
      ```
      '
    end

    entry do
      name 'Print the inheritance starting from an instance of any class'
      notes '
      ```
      (lldb) pclass <anObject>
      ```
      '
    end

    entry do
      name 'Print the responder chain starting from a specific responder'
      notes '
      ```
      (lldb) presponder <startResponder>
      ```
      '
    end

    entry do
      name 'Print the highest table view in the hierarchy'
      notes '
      ```
      (lldb) ptv
      ```
      '
    end

    entry do
      name 'Print the visible cells of the highest table view in the hierarchy'
      notes '
      ```
      (lldb) pcells
      ```
      '
    end

    entry do
      name 'Show the internals of an object by dereferencing it as a pointer'
      notes '
      ```
      (lldb) pinternals <anObject>
      ```
      '
    end

    entry do
      name 'Print the value of an object\'s named instance variable'
      notes '
      ```
      (lldb) pivar <anObject> <ivarName>
      ```
      '
    end

    entry do
      name 'Print out the value of the key path expression using -valueForKeyPath:'
      notes '
      ```
      (lldb) pkp <keyPath>
      ```
      '
    end

    entry do
      name 'Print application\'s `Documents` directory path'
      notes '
      ```
      (lldb) pdocspath
      ```
      '
    end

    entry do
      name 'Print application\'s bundle directory path'
      notes '
      ```
      (lldb) pbundlepath
      ```
      '
    end

    entry do
      name 'Print the contents of NSData object as string'
      notes '
      ```
      (lldb) pdata <data>
      Supported encodings:
      -ascii,
      -utf8,
      -utf16, unicode,
      -utf16l (Little endian),
      -utf16b (Big endian),
      -utf32,
      -utf32l (Little endian),
      -utf32b (Big endian),
      -latin1, iso88591 (88591),
      -latin2, iso88592 (88592),
      -cp1251 (1251),
      -cp1252 (1252),
      -cp1253 (1253),
      -cp1254 (1254),
      -cp1250 (1250

      ```
      '
    end

    entry do
      name 'Print the actions and targets of a control'
      notes '
      ```
      (lldb) pactions <control>
      ```
      '
    end

    entry do
      name 'Print JSON representation of NSDictionary or NSArray object'
      notes '
      ```
      (lldb) pjson <aDictOrArray>
      ```
      '
    end

    entry do
      name 'Print the NSURLRequest (HTTP) as curl command'
      notes '
      ```
      (lldb) pcurl <aRequest>
      ```
      '
    end

    entry do
      name 'Print object and copy output to clipboard'
      notes '
      ```
      (lldb) pbcopy <object>
      ```
      '
    end

    entry do
      name 'Print the expression result, with the expression run in an ObjC++ context. (Shortcut for "expression -O -l ObjC++ -- '
      notes '
      ```
      (lldb) poobjc <expression>
      ```
      '
    end

  end

  # FBTextInputCommands.py
  category do
    id 'Test Input Commands'

    entry do
      name 'Set text on text on a view by accessibility id'
      notes '
      ```
      (lldb) settext <accessibilityId> <replacementText>
      ```
      '
    end

    entry do
      name 'Input text into text field or text view that is first responder'
      notes '
      ```
      (lldb) setinput <inputText>
      ```
      '
    end
  end

  notes '* Based on the help documentation of Chisel https://github.com/facebook/chisel'
end
