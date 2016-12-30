cheatsheet do
  title 'GDB'
  docset_file_name 'GDB'
  keyword 'gdb'
  source_url 'http://cheat.kapeli.com'

  category do
    id "Running"

    entry do
      command '# gdb <program> [core dump]'
      name "
        Start GDB (with optional core dump)
          "
    end
    entry do
      command '# gdb --args <program> <args...>'
      name "
        Start GDB and pass arguments
          "
    end
    entry do
      command '# gdb --pid <pid>'
      name "
        Start GDB and attach to process
          "
    end
    entry do
      command 'set args <args...>'
      name "
        Set arguments to pass to program to be debugged
          "
    end
    entry do
      command 'run'
      name "
        Run the program to be debugged
          "
    end
    entry do
      command 'kill'
      name "
        Kill the running program
          "
    end
  end

  category do
    id "Breakpoints"
    entry do
      command 'break <where>'
      name "
        Set a new breakpoint
          "
    end
    entry do
      command 'delete <breakpoint#>'
      name "
        Remove a breakpoint
          "
    end
    entry do
      command 'clear'
      name "
        Delete all breakpoints
          "
    end
    entry do
      command 'enable <breakpoint#>'
      name "
        Enable a disabled breakpoint
          "
    end
    entry do
      command 'disable <breakpoint#>'
      name "
        Disable a breakpoint
          "
    end
  end

  category do
    id 'Watchpoints'

    entry do
      command 'watch <where>'
      name "
        Set a new watchpoint
          "
    end
    entry do
      command 'delete <watchpoint#>'
      name "
        Delete a watchpoint
          "
    end
    entry do
      command 'enable <watchpoint#>'
      name "
        Enable a disabled watchpoint
          "
    end
    entry do
      command 'disable <watchpoint#>'
      name "
        Disable a watchpoint
          "
    end
  end

  category do
    id 'Where'
    entry do
      command 'function_name'
      name "
        Break/watch the named function
          "
    end
    entry do
      command 'line_number'
      name "
        Break/watch the line number in the current source file
          "
    end
    entry do
      command 'file:line_number'
      name "
        Break/watch the line number in the named source file
          "
    end
  end

  category do
    id 'Conditions'

    entry do
      command 'break/watch <where> if <condition>'
      name "
        Break/watch at the given location if the condition is met. Condition may be almost any C expression that evaluates to `true` or `false`
          "
    end
    entry do
      command 'condition <breakpoint#> <condition>'
      name "
        Set/change the condition of an existing break or watchpoint
          "
    end
  end

  category do
    id 'Examining the Stack'

    entry do
      command 'backtrace'
      command 'where'
      name "
        Show call stack
          "
    end
    entry do
      command 'backtrace full'
      command 'where full'
      name "
        Show call stack, also print the local variables in each frame
          "
    end
    entry do
      command 'frame <frame#>'
      name "
        Select the stack frame to operate on
          "
    end
  end

  category do
    id 'Stepping'
    entry do
      command 'step'
      name "
        Go to next instruction (source line), diving into function
          "
    end
    entry do
      command 'next'
      name "
        Go to next instruction (source line) but do not dive into function
          "
    end
    entry do
      command 'finish'
      name "
        Continue until the current function returns
          "
    end
    entry do
      command 'continue'
      name "
        Continue normal execution
          "
    end
  end

  category do
    id 'Variables and Memory'
    entry do
      command 'print/format <what>'
      name "
        Print content of variable/memory location/register
          "
    end
    entry do
      command 'display/format <what>'
      name "
        Like `print`, but print the information after each stepping instruction
          "
    end
    entry do
      command 'undisplay <display#>'
      name "
        Remove the `display` with the given number
          "
    end
    entry do
      command 'enable display <display#>'
      command 'disable display <display#>'
      name "
        Enable or disable the `display` with the given number
          "
    end
    entry do
      command 'x/nfu <address>'
      name "Print memory"
      notes "`n`: How many units to print (default 1)<br>
        `f`: Format character (like `printf`)<br>
        `u`: Unit<br>

        Unit is one of: `b` (Byte), `h` (Half-word/two bytes), `w` (Word/four bytes), `g` (Giant-word/eight bytes)
          "
    end
  end

  category do
    id 'Format'

    entry do
      command 'a'
      name "
        Pointer
          "
    end
    entry do
      command 'c'
      name "
        Read as integer, print as character
          "
    end
    entry do
      command 'd'
      name "
        Integer, signed decimal
          "
    end
    entry do
      command 'f'
      name "
        Floating point number
          "
    end
    entry do
      command 'o'
      name "
        Integer, print as octal
          "
    end
    entry do
      command 's'
      name "
        Try to treat as C string
          "
    end
    entry do
      command 't'
      name "
        Integer, print as binary (t = 'two')
          "
    end
    entry do
      command 'u'
      name "
        Integer, unsigned decimal
          "
    end
    entry do
      command 'x'
      name "
        Integer, print as hexadecimal
          "
    end
  end

  category do
    id 'What'

    entry do
      command 'expression'
      name "
        Almost any C expression, including function calls (must be prefixed with a cast to tell GDB the return value type)
          "
    end
    entry do
      command 'file_name::variable_name'
      name "
        Content of the variable defined in the name file (static variables)
          "
    end
    entry do
      command 'function_name::variable_name'
      name "
        Content of the variable defined in the name function (if on the stack)
          "
    end
    entry do
      command '{type}address'
      name "
        Content at address, interpreted as being of the C type `type`
          "
    end
    entry do
      command '$register'
      name "
        Content of named register. Interesting registers are `$esp` (stack pointer), `$ebp` (frame pointer) and `$eip` (instruction pointer)
          "
    end
  end

  category do
    id 'Threads'
    entry do
      command 'thread <thread#>'
      name "
        Choose thread to operate on
          "
    end
  end

  category do
    id 'Manipulate the Program'
    entry do
      command 'set var <variable_name>=<value>'
      name "
        Change the content of a variable to the given value
          "
    end
    entry do
      command 'return <expression>'
      name "
        Force the current function to return immediately, passing the given value
          "
    end
  end

  category do
    id 'Sources'
    entry do
      command 'directory <directory>'
      name "
        Add directory to the list of directories that is searched for sources
          "
    end
    entry do
      command 'list'
      command 'list <filename>:<function>'
      command 'list <filename>:<line_number>'
      command 'list <first>, <last>'
      name "
        Shows the current or given source context. The filename may be omitted. If last is omitted the context starting at start is printed instead of centered around it
          "
    end
    entry do
      command 'set listsize <count>'
      name "
        Set how many lines to show in `list`
          "
    end
  end

  category do
    id 'Signals'
    entry do
      command 'handle <signal> <options>'
      name "Set how to handle signals"
      notes "Options are:<br>`(no)print`: (Do *not*) print a message when signals occur<br> `(no)stop`: (Do *not*) stop the program when signals occur<br> `(no)pass`: (Do *not*) pass the signal to the program
          "
    end
  end

  category do
    id 'Information'
    entry do
      command 'disassemble'
      command 'disassemble <where>'
      name "
        Disassemble the current function or given location
          "
    end
    entry do
      command 'info args'
      name "
        Print the arguments to the function of the current stack frame
          "
    end
    entry do
      command 'info breakpoints'
      name "
        Print information about the breakpoints and watchpoints
          "
    end
    entry do
      command 'info display'
      name "
        Print information about the `display`
          "
    end
    entry do
      command 'info locals'
      name "
        Print the local variables in the currently selected stack frame
          "
    end
    entry do
      command 'info sharedlibrary'
      name "
        List loaded shared libraries
          "
    end
    entry do
      command 'info signals'
      name "
        List all signals and how they are currently handled
          "
    end
    entry do
      command 'info threads'
      name "
        List all threads
          "
    end
    entry do
      command 'show directories'
      name "
        Print all directories in which GDB searches for source files
          "
    end
    entry do
      command 'show listsize'
      name "
        Print how many are shown in the `list` command
          "
    end
    entry do
      command 'whatis variable_name'
      name "
        Print type of named variable
          "
    end
  end

  notes "
    * Based on the cheat sheet from [Marc's realm](http://darkdust.net/files/GDB%20Cheat%20Sheet.pdf)
    * Converted by [Li Xinyang](https://li-xinyang.com)
      "
end