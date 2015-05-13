cheatsheet do
  title 'GDB'
  docset_file_name 'GDB'
  keyword 'gdb'
  source_url 'http://cheat.kapeli.com'

  introduction 'The GNU Debugger, usually called just GDB and named gdb as an executable file, is the standard debugger for the GNU operating system.'

  category do
    id "Running"

    entry do
      name '`# gdb <program> [core dump]`'
      notes "
        Start GDB (with optional core dump).
          "
    end
    entry do
      name '`# gdb --args <program> <args...>`'
      notes "
        Start GDB and pass arguments.
          "
    end
    entry do
      name '`# gdb --pid <pid>`'
      notes "
        Start GDB and attach to process.
          "
    end
    entry do
      name '`set args <args...>`'
      notes "
        Set arguments to pass to program to be debugged.
          "
    end
    entry do
      name '`run`'
      notes "
        Run the program to be debugged.
          "
    end
    entry do
      name '`kill`'
      notes "
        Kill the running program.
          "
    end
  end

  category do
    id "Breakpoints"
    entry do
      name '`break <where>`'
      notes "
        Set a new breakpoint.
          "
    end
    entry do
      name '`delete <breakpoint#>`'
      notes "
        Remove a breakpoint.
          "
    end
    entry do
      name '`clear`'
      notes "
        Delete all breakpoint.
          "
    end
    entry do
      name '`enable <breakpoint#>`'
      notes "
        Enable a disabled breakpoint.
          "
    end
    entry do
      name '`disable <breakpoint#>`'
      notes "
        Disable a breakpoint.
          "
    end
  end

  category do
    id 'Watchpoints'

    entry do
      name '`watch <where>`'
      notes "
        Set a new watchpoint.
          "
    end
    entry do
      name '`delete/enable/disable <watchpoint#>`'
      notes "
        Like breakpoints.
          "
    end
  end

  category do
    id '<where>'
    entry do
      name '`function_name`'
      notes "
        Break/watch the named function.
          "
    end
    entry do
      name '`line_number`'
      notes "
        Break/watch the line number in the current source file.
          "
    end
    entry do
      name '`file:line_number`'
      notes "
        Break/watch the line number in the named source file.
          "
    end
  end

  category do
    id 'Conditions'

    entry do
      name '`break/watch <where> if <condition>`'
      notes "
        Break/watch at the given location if the condition is met. Condition may be almost any C expression that evaluate to `true` or `false`.
          "
    end
    entry do
      name '`condition <breakpoint#> <conditon>`'
      notes "
        Set/change the condition of an existing break- or watchpoint.
          "
    end
  end

  category do
    id 'Examining the stack'

    entry do
      name '`backtrace`<br>
            `where`'
      notes "
        Show call stack.
          "
    end
    entry do
      name '`backtrace full`<br>
            `where full`'
      notes "
        Show call stack, also print the local variables in each frame.
          "
    end
    entry do
      name '`frame <frame#>`'
      notes "
        Select the stack frame to operate on.
          "
    end
  end

  category do
    id 'Stepping'
    entry do
      name '`step`'
      notes "
        Go to next instruction (source line), diving into function.
          "
    end
    entry do
      name '`next`'
      notes "
        Go to next instruction (source line) but do not dive into function.
          "
    end
    entry do
      name '`finish`'
      notes "
        Continue until the current function returns.
          "
    end
    entry do
      name '`continue`'
      notes "
        Continue normal execution.
          "
    end
  end

  category do
    id 'Variables and Memory'
    entry do
      name '`print/format <what>'
      notes "
        Print content of variabel/memory location/register.
          "
    end
    entry do
      name '`display/format <what>`'
      notes "
        Like `print`, but print the information after each stepping instruction.
          "
    end
    entry do
      name '`undisplay <display#>`'
      notes "
        Remove the `display` with the given number.
          "
    end
    entry do
      name '`enable display <display#>`<br>
            `disable display <display#>`'
      notes "
        En- or disable the `display` with the given number.
          "
    end
    entry do
      name '`x/nfu <address>`'
      notes "
        Print memory.<br>
        n: How many units to print (default 1).<br>
        f: Format character (like `printf`).<br>
        u: Unit.<br>
        Unit is one of: b(Byte), h(Half-word/two bytes), w(Word/four bytes), g(Giant-word/eight bytes).
          "
    end
  end

  notes "

    * Based on the cheat sheet from [Marc's realm](http://darkdust.net). The original can be found [here](http://darkdust.net/files/GDB%20Cheat%20Sheet.pdf).
    * Converted by [Li Xinyang](https://li-xinyang.com).
      "
end