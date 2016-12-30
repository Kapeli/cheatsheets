cheatsheet do
  title 'LLDB Commands'
  docset_file_name 'LLDB_Commands'
  keyword 'lldb'
  source_url 'http://cheat.kapeli.com'
  
  category do
    id 'Execution Commands'

    entry do
      name 'Launch a process with no arguments'
      notes '
      ```
      (lldb) process launch
      (lldb) run
      (lldb) r
      ```
      '
    end
    
    entry do
      name 'Launch a process with arguments `<args>`'
      notes '
      ```
      (lldb) process launch -- <args>
      (lldb) r <args>
      ```
      '
    end
    
    entry do
      name 'Launch a process for with arguments `a.out 1 2 3` without having to supply the args every time'
      notes '
      ```
      % lldb -- a.out 1 2 3
      (lldb) run
      ...
      (lldb) run
      ...
      ```
      or:

      ```
      (lldb) settings set target.run-args 1 2 3
      (lldb) run
      ...
      (lldb) run
      ...
      ```
      '
    end
    
    entry do
      name 'Launch a process with arguments in new terminal window (macOS only)'
      notes '
      ```
      (lldb) process launch --tty -- <args>
      (lldb) pro la -t -- <args>
      ```
      '
    end
    
    entry do
      name 'Launch a process with arguments in existing terminal `/dev/ttys006` (macOS only)'
      notes '
      ```
      (lldb) process launch --tty=/dev/ttys006 -- <args>
      (lldb) pro la -t/dev/ttys006 -- <args>
      ```
      '
    end
    
    entry do
      name 'Set environment variables for process before launching'
      notes '
      ```
      (lldb) settings set target.env-vars DEBUG=1
      (lldb) set se target.env-vars DEBUG=1
      (lldb) env DEBUG=1
      ```
      '
    end
    
    entry do
      name 'Unset environment variables for process before launching'
      notes '
      ```
      (lldb) settings remove target.env-vars DEBUG
      (lldb) set rem target.env-vars DEBUG
      ```
      '
    end
    
    entry do
      name 'Show the arguments that will be or were passed to the program when run'
      notes '
      ```
      (lldb) settings show target.run-args
      target.run-args (array of strings) = [0]: "1" [1]: "2" [2]: "3"
      ```
      '
    end
    
    entry do
      name 'Set environment variables for process and launch process in one command'
      notes '
      ```
      (lldb) process launch -v DEBUG=1
      ```
      '
    end
    
    entry do
      name 'Attach to a process with process ID `123`'
      notes '
      ```
      (lldb) process attach --pid 123  
      (lldb) attach -p 123
      ```
      '
    end
    
    entry do
      name 'Attach to a process named `a.out`'
      notes '
      ```
      (lldb) process attach --name a.out
      (lldb) pro at -n a.out
      ```
      '
    end
    
    entry do
      name 'Wait for a process named `a.out` to launch and attach'
      notes '
      ```
      (lldb) process attach --name a.out --waitfor
      (lldb) pro at -n a.out -w
      ```
      '
    end
    
    entry do
      name 'Attach to a remote gdb protocol server running on system `eorgadd`, port 8000.'
      notes '
      ```
      (lldb) gdb-remote eorgadd:8000
      ```
      '
    end
    
    entry do
      name 'Attach to a remote gdb protocol server running on the local system, port 8000'
      notes '
      ```
      (lldb) gdb-remote 8000
      ```
      '
    end
    
    entry do
      name 'Attach to a Darwin kernel in kdp mode on system `eorgadd`'
      notes '
      ```
      (lldb) kdp-remote eorgadd
      ```
      '
    end
    
    entry do
      name 'Do a source level single step in the currently selected thread'
      notes '
      ```
      (lldb) thread step-in
      (lldb) step
      (lldb) s
      ```
      '
    end
    
    entry do
      name 'Do a source level single step over in the currently selected thread'
      notes '
      ```
      (lldb) thread step-over
      (lldb) next
      (lldb) n
      ```
      '
    end
    
    entry do
      name 'Do an instruction level single step in the currently selected thread'
      notes '
      ```
      (lldb) thread step-inst
      (lldb) si
      ```
      '
    end
    
    entry do
      name 'Do an instruction level single step over in the currently selected thread'
      notes '
      ```
      (lldb) thread step-inst-over
      (lldb) ni
      ```
      '
    end
    
    entry do
      name 'Step out of the currently selected frame'
      notes '
      ```
      (lldb) thread step-out
      (lldb) finish
      ```
      '
    end
    
    entry do
      name 'Return immediately from the currently selected frame, with an optional return value'
      notes '
      ```
      (lldb) thread return <RETURN EXPRESSION>
      ```
      '
    end
    
    entry do
      name 'Backtrace and disassemble every time you stop'
      notes "
      ```
      (lldb) target stop-hook add
      Enter your stop hook command(s). Type 'DONE' to end.
      > bt
      > disassemble --pc
      > DONE
      Stop hook #1 added.
      ```
      "
    end
  end

  category do
    id 'Breakpoint Commands'
    
    entry do
      name 'Set a breakpoint at all functions named `main`'
      notes '
      ```
      (lldb) breakpoint set --name main
      (lldb) br s -n main
      (lldb) b main
      ```
      '
    end
    
    entry do
      name 'Set a breakpoint in file `test.c` at line `12`'
      notes '
      ```
      (lldb) breakpoint set --file test.c --line 12
      (lldb) br s -f test.c -l 12
      (lldb) b test.c:12
      ```
      '
    end
    
    entry do
      name 'Set a breakpoint at all C++ methods whose basename is `main`'
      notes '
      ```
      (lldb) breakpoint set --method main
      (lldb) br s -M main
      ```
      '
    end
    
    entry do
      name 'Set a breakpoint at an Objective-C method: `-[NSString stringWithFormat:]`'
      notes '
      ```
      (lldb) breakpoint set --name "-[NSString stringWithFormat:]"
      (lldb) b -[NSString stringWithFormat:]
      ```
      '
    end
    
    entry do
      name 'Set a breakpoint at all Objective-C methods whose selector is `count`'
      notes '
      ```
      (lldb) breakpoint set --selector count
      (lldb) br s -S count
      ```
      '
    end
    
    entry do
      name 'Set a breakpoint by regular expression on function name'
      notes '
      ```
      (lldb) breakpoint set --func-regex regular-expression
      (lldb) br s -r regular-expression
      ```
      '
    end
    
    entry do
      name 'Ensure that breakpoints by file and line work for `#included .c, .cpp or .m` files'
      notes '
      ```
      (lldb) settings set target.inline-breakpoint-strategy always
      (lldb) br s -f foo.c -l 12
      ```
      '
    end
    
    entry do
      name 'Set a breakpoint by regular expression on source file contents'
      notes '
      ```
      (lldb) breakpoint set --source-pattern regular-expression --file SourceFile
      (lldb) br s -p regular-expression -f file
      ```
      '
    end
    
    entry do
      name 'Set a conditional breakpoint'
      notes "
      ```
      (lldb) breakpoint set --name foo --condition '(int)strcmp(y,\"hello\") == 0'
      (lldb) br s -n foo -c '(int)strcmp(y,\"hello\") == 0'
      ```
      "
    end
    
    entry do
      name 'List all breakpoints'
      notes '
      ```
      (lldb) breakpoint list
      (lldb) br l
      ```
      '
    end
    
    entry do
      name 'Delete a breakpoint'
      notes '
      ```
      (lldb) breakpoint delete 1
      (lldb) br del 1
      ```
      '
    end
  end
  
  category do
    id 'Watchpoint Commands'
    
    entry do
      name 'Set a watchpoint on a variable when it is written to'
      notes '
      ```
      (lldb) watchpoint set variable global_var
      (lldb) wa s v global_var
      ```
      '
    end
    
    entry do
      name "Set a watchpoint on a memory location when it is written into"
      notes '
      The size of the region to watch for defaults to the pointer size if no `-x byte_size` is specified. This command takes raw input, evaluated as an expression returning an unsigned integer pointing to the start of the region, after the `--` option terminator
      
      ```
      (lldb) watchpoint set expression -- my_ptr
      (lldb) wa s e -- my_ptr
      ```
      '
    end
    
    entry do
      name 'Set a condition on a watchpoint'
      notes "
      ```
      (lldb) watch set var global
      (lldb) watchpoint modify -c '(global==5)'
      (lldb) c
      ...
      (lldb) bt
      * thread #1: tid = 0x1c03, 0x0000000100000ef5 a.out`modify + 21 at main.cpp:16, stop reason = watchpoint 1
      frame #0: 0x0000000100000ef5 a.out`modify + 21 at main.cpp:16
      frame #1: 0x0000000100000eac a.out`main + 108 at main.cpp:25
      frame #2: 0x00007fff8ac9c7e1 libdyld.dylib`start + 1
      (lldb) frame var global
      (int32_t) global = 5
      ```
      "
    end
    
    entry do
      name 'List all watchpoints'
      notes '
      ```
      (lldb) watchpoint list
      (lldb) watch l
      ```
      '
    end
    
    entry do
      name 'Delete a watchpoint'
      notes '
      ```
      (lldb) watchpoint delete 1
      (lldb) watch del 1
      ```
      '
    end
  end
  
  category do
    id 'Examining Variables'
    
    entry do
      name 'Show the arguments and local variables for the current frame'
      notes '
      ```
      (lldb) frame variable
      (lldb) fr v
      ```
      '
    end
    
    entry do
      name 'Show the local variables for the current frame'
      notes '
      ```
      (lldb) frame variable --no-args
      (lldb) fr v -a
      ```
      '
    end
    
    entry do
      name 'Show the contents of local variable `bar`'
      notes '
      ```
      (lldb) frame variable bar
      (lldb) fr v bar
      (lldb) p bar
      ```
      '
    end
    
    entry do
      name 'Show the contents of local variable `bar` formatted as hex'
      notes '
      ```
      (lldb) frame variable --format x bar
      (lldb) fr v -f x bar
      ```
      '
    end
    
    entry do
      name 'Show the contents of global variable `baz`'
      notes '
      ```
      (lldb) target variable baz
      (lldb) ta v baz
      ```
      '
    end
    
    entry do
      name 'Show the global/static variables defined in the current source file'
      notes '
      ```
      (lldb) target variable
      (lldb) ta v
      ```
      '
    end
    
    entry do
      name 'Display a the variable `argc` and `argv` every time you stop'
      notes '
      ```
      (lldb) target stop-hook add --one-liner "frame variable argc argv"
      (lldb) ta st a -o "fr v argc argv"
      (lldb) display argc
      (lldb) display argv
      ```
      '
    end
    
    entry do
      name 'Display a the variable `argc` and `argv` only when you stop in the function named `main`'
      notes '
      ```
      (lldb) target stop-hook add --name main --one-liner "frame variable argc argv"
      (lldb) ta st a -n main -o "fr v argc argv"
      ```
      '
    end
    
    entry do
      name 'Display the variable `*this` only when you stop in C class named `MyClass`'
      notes '
      ```
      (lldb) target stop-hook add --classname MyClass --one-liner "frame variable *this"
      (lldb) ta st a -c MyClass -o "fr v *this"
      ```
      '
    end
  end
  
  category do
    id 'Evaluating Expressions'
    
    entry do
      name 'Evaluating a generalized expression in the current frame'
      notes '
      ```
      (lldb) expr (int) printf ("Print nine: %d.", 4 + 5)
      ```
      or using the print alias:

      ```
      (lldb) print (int) printf ("Print nine: %d.", 4 + 5)
      ```
      '
    end
    
    entry do
      name 'Creating and assigning a value to a convenience variable'
      notes '
      In lldb you evaluate a variable declaration expression as you would write it in C:

      ```
      (lldb) expr unsigned int $foo = 5
      ```
      '
    end
    
    entry do
      name 'Printing the Objective-C `description` of an object'
      notes '
      ```
      (lldb) expr -o -- [SomeClass returnAnObject]
      ```
      or using the po alias:

      ```
      (lldb) po [SomeClass returnAnObject]
      ```
      '
    end
    
    entry do
      name 'Print the dynamic type of the result of an expression'
      notes '
      ```
      (lldb) expr -d 1 -- [SomeClass returnAnObject]
      (lldb) expr -d 1 -- someCPPObjectPtrOrReference
      ```
      or set dynamic type printing to be the default:

      ```
      (lldb) settings set target.prefer-dynamic run-target
      ```
      '
    end
    
    entry do
      name 'Calling a function so you can stop at a breakpoint in the function'
      notes '
      ```
      (lldb) expr -i 0 -- function_with_a_breakpoint()
      ```
      '
    end
    
    entry do
      name 'Calling a function that crashes, and stopping when the function crashes'
      notes '
      ```
      (lldb) expr -u 0 -- function_which_crashes()
      ```
      '
    end
  end
  
  category do
    id 'Examining Thread State'
    
    entry do
      name 'Show the stack backtrace for the current thread'
      notes '
      ```
      (lldb) thread backtrace
      (lldb) bt
      ```
      '
    end
    
    entry do
      name 'Show the stack backtraces for all threads'
      notes '
      ```
      (lldb) thread backtrace all
      (lldb) bt all
      ```
      '
    end
    
    entry do
      name 'Backtrace the first five frames of the current thread'
      notes '
      ```
      (lldb) thread backtrace -c 5
      (lldb) bt 5 (lldb-169 and later)
      (lldb) bt -c 5 (lldb-168 and earlier)
      ```
      '
    end
    
    entry do
      name 'Select a different stack frame by index for the current thread'
      notes '
      ```
      (lldb) frame select 12
      (lldb) fr s 12
      (lldb) f 12
      ```
      '
    end
    
    entry do
      name 'List information about the currently selected frame in the current thread'
      notes '
      ```
      (lldb) frame info
      ```
      '
    end
    
    entry do
      name 'Select the stack frame that called the current stack frame'
      notes '
      ```
      (lldb) up
      (lldb) frame select --relative=1
      ```
      '
    end
    
    entry do
      name 'Select the stack frame that is called by the current stack frame'
      notes '
      ```
      (lldb) down
      (lldb) frame select --relative=-1
      (lldb) fr s -r-1
      ```
      '
    end
    
    entry do
      name 'Select a different stack frame using a relative offset'
      notes '
      ```
      (lldb) frame select --relative 2
      (lldb) fr s -r2
      
      (lldb) frame select --relative -3
      (lldb) fr s -r-3
      ```
      '
    end
    
    entry do
      name 'Show the general purpose registers for the current thread'
      notes '
      ```
      (lldb) register read
      ```
      '
    end
    
    entry do
      name "Write a new decimal value `123` to the current thread register `rax`"
      notes '
      ```
      (lldb) register write rax 123
      ```
      '
    end
    
    entry do
      name 'Skip 8 bytes ahead of the current program counter (instruction pointer)'
      notes '
      Note that we use backticks to evaluate an expression and insert the scalar result in LLDB

      ```
      (lldb) register write pc `$pc+8`
      ```
      '
    end
    
    entry do
      name 'Show the general purpose registers for the current thread formatted as **signed decimal**'
      notes "
      LLDB tries to use the same format characters as `printf(3)` when possible. Type `help format` to see the full list of format specifiers
      
      ```
      (lldb) register read --format i
      (lldb) re r -f i
      ```
      
      LLDB now supports the GDB shorthand format syntax but there can't be a space after the command:

      ```
      (lldb) register read/d
      ```
      "
    end
    
    entry do
      name 'Show all registers in all register sets for the current thread'
      notes '
      ```
      (lldb) register read --all
      (lldb) re r -a
      ```
      '
    end
    
    entry do
      name 'Show the values for the registers named `rax`, `rsp` and `rbp` in the current thread'
      notes '
      ```
      (lldb) register read rax rsp rbp
      ```
      '
    end
    
    entry do
      name 'Show the values for the register named `rax` in the current thread formatted as **binary**'
      notes "
      ```
      (lldb) register read --format binary rax
      (lldb) re r -f b rax
      ```
      
      LLDB now supports the GDB shorthand format syntax but there can't be a space after the command:  

      ```
      (lldb) register read/t rax
      (lldb) p/t $rax
      ```
      "
    end
    
    entry do
      name 'Read memory from address `0xbffff3c0` and show `4 hex uint32_t` values'
      notes "
      ```
      (lldb) memory read --size 4 --format x --count 4 0xbffff3c0
      (lldb) me r -s4 -fx -c4 0xbffff3c0
      (lldb) x -s4 -fx -c4 0xbffff3c0
      ```
      
      LLDB now supports the GDB shorthand format syntax but there can't be a space after the command:

      ```
      (lldb) memory read/4xw 0xbffff3c0
      (lldb) x/4xw 0xbffff3c0
      (lldb) memory read --gdb-format 4xw 0xbffff3c0
      ```
      "
    end
    
    entry do
      name 'Read memory starting at the expression `argv[0]`'
      notes '
      ```
      (lldb) memory read `argv[0]`
      ```
      
      Note: any command can inline a scalar expression result (as long as the target is stopped) using backticks around any expression:

      ```
      (lldb) memory read --size `sizeof(int)` `argv[0]`
      ```
      '
    end
    
    entry do
      name 'Read 512 bytes of memory from address `0xbffff3c0` and save results to a local file as **text**'
      notes '
      ```
      (lldb) memory read --outfile /tmp/mem.txt --count 512 0xbffff3c0  
      (lldb) me r -o/tmp/mem.txt -c512 0xbffff3c0  
      (lldb) x/512bx -o/tmp/mem.txt 0xbffff3c0
      ```
      '
    end
    
    entry do
      name 'Save binary memory data starting at `0x1000` and ending at `0x2000` to a file'
      notes '
      ```
      (lldb) memory read --outfile /tmp/mem.bin --binary 0x1000 0x2000
      (lldb) me r -o /tmp/mem.bin -b 0x1000 0x2000
      ```
      '
    end
    
    entry do
      name 'Get information about a specific heap allocation (available on macOS only)'
      notes '
      ```
      (lldb) command script import lldb.macosx.heap
      (lldb) process launch --environment MallocStackLogging=1 -- [ARGS]
      (lldb) malloc_info --stack-history 0x10010d680
      ```
      '
    end
    
    entry do
      name 'Get information about a specific heap allocation and cast the result to any dynamic type that can be deduced (available on macOS only)'
      notes '
      ```
      (lldb) command script import lldb.macosx.heap
      (lldb) malloc_info --type 0x10010d680
      ```
      '
    end
    
    entry do
      name 'Find all heap blocks that contain a pointer specified by an expression `EXPR` (available on macOS only)'
      notes '
      ```
      (lldb) command script import lldb.macosx.heap
      (lldb) ptr_refs EXPR 
      ```
      '
    end
    
    entry do
      name 'Find all heap blocks that contain a C string anywhere in the block (available on macOS only)'
      notes '
      ```
      (lldb) command script import lldb.macosx.heap
      (lldb) cstr_refs CSTRING
      ```
      '
    end
    
    entry do
      name 'Disassemble the current function for the current frame'
      notes '
      ```
      (lldb) disassemble --frame
      (lldb) di -f
      ```
      '
    end
    
    entry do
      name 'Disassemble any functions named `main`'
      notes '
      ```
      (lldb) disassemble --name main
      (lldb) di -n main
      ```
      '
    end
    
    entry do
      name 'Disassemble an address range'
      notes '
      ```
      (lldb) disassemble --start-address 0x1eb8 --end-address 0x1ec3
      (lldb) di -s 0x1eb8 -e 0x1ec3
      ```
      '
    end
    
    entry do
      name 'Disassemble 20 instructions from a given address'
      notes '
      ```
      (lldb) disassemble --start-address 0x1eb8 --count 20
      (lldb) di -s 0x1eb8 -c 20
      ```
      '
    end
    
    entry do
      name 'Show mixed source and disassembly for the current function for the current frame'
      notes '
      ```
      (lldb) disassemble --frame --mixed
      (lldb) di -f -m
      ```
      '
    end
    
    entry do
      name 'Disassemble the current function for the current frame and show the opcode bytes'
      notes '
      ```
      (lldb) disassemble --frame --bytes
      (lldb) di -f -b
      ```
      '
    end
    
    entry do
      name 'Disassemble the current source line for the current frame'
      notes '
      ```
      (lldb) disassemble --line
      (lldb) di -l
      ```
      '
    end
  end
  
  category do
    id 'Executable & Shared Library Query Commands'
    
    entry do
      name 'List the main executable and all dependent shared libraries'
      notes '
      ```
      (lldb) image list
      ```
      '
    end
    
    entry do
      name 'Look up information for a raw address in the executable or any shared libraries'
      notes '
      ```
      (lldb) image lookup --address 0x1ec4
      (lldb) im loo -a 0x1ec4
      ```
      '
    end
    
    entry do
      name 'Look up functions matching a regular expression in a binary'
      notes '
      This one finds debug symbols:  

      ```
      (lldb) image lookup -r -n <FUNC_REGEX>
      ```
      
      This one finds non-debug symbols:  

      ```
      (lldb) image lookup -r -s <FUNC_REGEX>
      ```
      
      Provide a list of binaries as arguments to limit the search
      '
    end
    
    entry do
      name 'Find full source line information'
      notes '
      This one is a bit messy at present:

      ```
      (lldb) image lookup -v --address 0x1ec4
      ```
      
      and look for the `LineEntry` line, which will have the full source path and line range information
      '
    end
    
    entry do
      name 'Look up information for an address in `a.out` only'
      notes '
      ```
      (lldb) image lookup --address 0x1ec4 a.out
      (lldb) im loo -a 0x1ec4 a.out
      ```
      '
    end
    
    entry do
      name 'Look up information for for a type `Point` by name'
      notes '
      ```
      (lldb) image lookup --type Point
      (lldb) im loo -t Point
      ```
      '
    end
    
    entry do
      name 'Dump all sections from the main executable and any shared libraries'
      notes '
      ```
      (lldb) image dump sections
      ```
      '
    end
    
    entry do
      name 'Dump all sections in the `a.out` module'
      notes '
      ```
      (lldb) image dump sections a.out
      ```
      '
    end
    
    entry do
      name 'Dump all symbols from the main executable and any shared libraries'
      notes '
      ```
      (lldb) image dump symtab
      ```
      '
    end
    
    entry do
      name 'Dump all symbols in `a.out` and `liba.so`'
      notes '
      ```
      (lldb) image dump symtab a.out liba.so
      ```
      '
    end
  end
  
  category do
    id 'Miscellaneous'
    
    entry do
      name 'Echo text to the screen'
      notes '
      ```
      (lldb) script print "Here is some text"
      ```
      '
    end
    
    entry do
      name "Remap source file pathnames for the debug session"
      notes "
      If your source files are no longer located in the same location as when the program was built (maybe the program was built on a different computer) you need to tell the debugger how to find the sources at their local file path instead of the build system's file path

      ```
      (lldb) settings set target.source-map /buildbot/path /my/path
      ```
      "
    end
  end
  
  notes '* Based on the [GDB to LLDB command map](http://lldb.llvm.org/lldb-gdb.html) page on the [LLVM](http://llvm.org) website'
end
