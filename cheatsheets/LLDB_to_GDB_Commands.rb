cheatsheet do
	title 'LLDB to GDB Command Map'
	docset_file_name 'LLDB_to_GDB_Commands'
	keyword 'gdblldb'
	source_url 'http://cheat.kapeli.com'
	introduction 'Below is a table of GDB commands with the LLDB counterparts. The built in GDB-compatibility aliases in LLDB are also listed.  The full lldb command names are often long, but any unique short form can be used.  Instead of <b>"breakpoint set"</b>, <b>"br se"</b> is also acceptable.'

	category do
		id 'Execution Commands'

		entry do
			name 'Launch a process no arguments.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> run<br/>
			<b>(gdb)</b> r

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> process launch<br/>
			<b>(lldb)</b> run<br/>
			<b>(lldb)</b> r

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Launch a process with arguments <code>&lt;args&gt;</code>.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> run &lt;args&gt;<br/>
			<b>(gdb)</b> r &lt;args&gt;

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> process launch -- &lt;args&gt;<br/>
			<b>(lldb)</b> r &lt;args&gt;

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Launch a process for with arguments <b><code>a.out 1 2 3</code></b> without having to supply the args every time.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>%</b> gdb --args a.out 1 2 3<br/>
			<b>(gdb)</b> run<br/>
			...<br/>
			<b>(gdb)</b> run<br/>
			...<br/>

			</td>
			<td width="50%" valign="top">
			<b>%</b> lldb -- a.out 1 2 3<br/>
			<b>(lldb)</b> run<br/>
			...<br/>
			<b>(lldb)</b> run<br/>
			...<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Or:'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> set args 1 2 3<br/>
			<b>(gdb)</b> run<br/>
			...<br/>
			<b>(gdb)</b> run<br/>
			...<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> settings set target.run-args 1 2 3<br/>
			<b>(lldb)</b> run<br/>
			...<br/>
			<b>(lldb)</b> run<br/>
			...<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Launch a process with arguments in new terminal window (Mac OS X only).'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>		
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> process launch --tty -- &lt;args&gt;<br/>
			<b>(lldb)</b> pro la -t -- &lt;args&gt;<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set environment variables for process before launching.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>		
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> process launch --tty=/dev/ttys006 -- &lt;args&gt;<br/>
			<b>(lldb)</b> pro la -t/dev/ttys006 -- &lt;args&gt;<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set environment variables for process before launching.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> set env DEBUG 1<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> settings set target.env-vars DEBUG=1<br/>
			<b>(lldb)</b> set se target.env-vars DEBUG=1<br/>
			<b>(lldb)</b> env DEBUG=1<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Unset environment variables for process before launching.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> unset env DEBUG<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> settings remove target.env-vars DEBUG<br/>
			<b>(lldb)</b> set rem target.env-vars DEBUG<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show the arguments that will be or were passed to the program when run.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> show args<br/>
			Argument list to give program being debugged when it is started is "1 2 3".<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> settings show target.run-args<br/>
			target.run-args (array of strings) =<br/>
			[0]: "1"<br/>
			[1]: "2"<br/>
			[2]: "3"<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set environment variables for process and launch process in one command.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> process launch -v DEBUG=1<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Attach to a process with process ID 123.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> attach 123

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> process attach --pid 123<br/>
			<b>(lldb)</b> attach -p 123

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Attach to a process named "a.out".'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> attach a.out

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> process attach --name a.out<br/>
			<b>(lldb)</b> pro at -n a.out

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Wait for a process named "a.out" to launch and attach.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> attach -waitfor a.out

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> process attach --name a.out --waitfor<br/>
			<b>(lldb)</b> pro at -n a.out -w

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Attach to a remote gdb protocol server running on system "eorgadd", port 8000.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> target remote eorgadd:8000

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> gdb-remote eorgadd:8000

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Attach to a remote gdb protocol server running on the local system, port 8000.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> target remote localhost:8000

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> gdb-remote 8000

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Attach to a Darwin kernel in kdp mode on system "eorgadd".'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> kdp-reattach eorgadd

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> kdp-remote eorgadd

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Do a source level single step in the currently selected thread.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> step<br/>
			<b>(gdb)</b> s

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> thread step-in<br/>
			<b>(lldb)</b> step<br/>
			<b>(lldb)</b> s

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Do a source level single step over in the currently selected thread.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> next<br/>
			<b>(gdb)</b> n

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> thread step-over<br/>
			<b>(lldb)</b> next<br/>
			<b>(lldb)</b> n<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Do an instruction level single step in the currently selected thread.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> stepi<br/>
			<b>(gdb)</b> si

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> thread step-inst<br/>
			<b>(lldb)</b> si<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Do an instruction level single step over in the currently selected thread.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> nexti<br/>
			<b>(gdb)</b> ni

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> thread step-inst-over<br/>
			<b>(lldb)</b> ni

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Step out of the currently selected frame.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> finish<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> thread step-out<br/>
			<b>(lldb)</b> finish<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Return immediately from the currently selected frame, with an optional return value.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> return &lt;RETURN EXPRESSION&gt;<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> thread return &lt;RETURN EXPRESSION&gt;<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
	end
	category do
		id 'Breakpoint Commands'

		entry do
			name 'Backtrace and disassemble every time you stop.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> target stop-hook add<br/>
			Enter your stop hook command(s).  Type "DONE" to end.<br/>
			&gt; bt<br/>
			&gt; disassemble --pc<br/>
			&gt; DONE<br/>
			Stop hook #1 added.<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set a breakpoint at all functions named <b>main</b>.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> break main

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> breakpoint set --name main<br/>
			<b>(lldb)</b> br s -n main<br/>
			<b>(lldb)</b> b main

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set a breakpoint in file <b>test.c</b> at line <b>12</b>.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> break test.c:12

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> breakpoint set --file test.c --line 12<br/>
			<b>(lldb)</b> br s -f test.c -l 12<br/>
			<b>(lldb)</b> b test.c:12

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set a breakpoint at all C++ methods whose basename is <b>main</b>.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> break main<br/>
			<i>(Hope that there are no C funtions named <b>main</b>)</i>.

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> breakpoint set --method main<br/>
			<b>(lldb)</b> br s -M main<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set a breakpoint at and object C function: <b>-[NSString stringWithFormat:]</b>.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> break -[NSString stringWithFormat:]<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> breakpoint set --name "-[NSString stringWithFormat:]"<br/>
			<b>(lldb)</b> b -[NSString stringWithFormat:]<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set a breakpoint at all Objective C methods whose selector is <b>count</b>.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> break count<br/>
			<i>(Hope that there are no C or C++ funtions named <b>count</b>)</i>.

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> breakpoint set --selector count<br/>
			<b>(lldb)</b> br s -S count<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set a breakpoint by regular expression on function name.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> rbreak regular-expression<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> breakpoint set --func-regex regular-expression<br/>
			<b>(lldb)</b> br s -r regular-expression<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Ensure that breakpoints by file and line work for #included .c/.cpp/.m files.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> b foo.c:12<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> settings set target.inline-breakpoint-strategy always<br/>
			<b>(lldb)</b> br s -f foo.c -l 12<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set a breakpoint by regular expression on source file contents.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> shell grep -e -n pattern source-file<br/>
			<b>(gdb)</b> break source-file:CopyLineNumbers<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> breakpoint set --source-pattern regular-expression --file SourceFile<br/>
			<b>(lldb)</b> br s -p regular-expression -f file<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set a conditional breakpoint'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> break foo if strcmp(y,"hello") == 0<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> breakpoint set --name foo --condition "(int)strcmp(y,"hello") == 0"<br/>
			<b>(lldb)</b> br s -n foo -c "(int)strcmp(y,"hello") == 0"<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'List all breakpoints.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> info break<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> breakpoint list<br/>
			<b>(lldb)</b> br l<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
	end
	category do
		id 'Watchpoint Commands'

		entry do
			name 'Delete a breakpoint.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> delete 1<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> breakpoint delete 1<br/>
			<b>(lldb)</b> br del 1<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set a watchpoint on a variable when it is written to.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> watch global_var

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> watchpoint set variable global_var<br/>
			<b>(lldb)</b> wa s v global_var<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set a watchpoint on a memory location when it is written into. The size of the region to watch for defaults to the pointer size if no "-x byte_size" is specified.
			This command takes raw input, evaluated as an expression returning an unsigned integer pointing to the start of the region, after the "--" option terminator.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> watch -location g_char_ptr

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> watchpoint set expression -- my_ptr<br/>
			<b>(lldb)</b> wa s e -- my_ptr<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Set a condition on a watchpoint.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> watch set var global<br/>
			<b>(lldb)</b> watchpoint modify -c "(global==5)"<br/>
			<b>(lldb)</b> c<br/>
			...<br/>
			<b>(lldb)</b> bt<br/>
			* thread #1: tid = 0x1c03, 0x0000000100000ef5 a.out`modify + 21 at main.cpp:16, stop reason = watchpoint 1<br/>
			frame #0: 0x0000000100000ef5 a.out`modify + 21 at main.cpp:16<br/>
			frame #1: 0x0000000100000eac a.out`main + 108 at main.cpp:25<br/>
			frame #2: 0x00007fff8ac9c7e1 libdyld.dylib`start + 1<br/>
			<b>(lldb)</b> frame var global<br/>
			(int32_t) global = 5<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'List all watchpoints.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> info break<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> watchpoint list<br/>
			<b>(lldb)</b> watch l<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
	end
	category do
		id 'Examining Variables'

		entry do
			name 'Delete a watchpoint.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> delete 1<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> watchpoint delete 1<br/>
			<b>(lldb)</b> watch del 1<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show the arguments and local variables for the current frame.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> info args<br/>
			and<br/>
			<b>(gdb)</b> info locals<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> frame variable<br/>
			<b>(lldb)</b> fr v<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show the local variables for the current frame.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> info locals<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> frame variable --no-args<br/>
			<b>(lldb)</b> fr v -a<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show the contents of local variable "bar".'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> p bar<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> frame variable bar <br/>
			<b>(lldb)</b> fr v bar <br/>
			<b>(lldb)</b> p bar <br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show the contents of local variable "bar" formatted as hex.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> p/x bar<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> frame variable --format x bar <br/>
			<b>(lldb)</b> fr v -f x bar <br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show the contents of global variable "baz".'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> p baz<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> target variable baz <br/>
			<b>(lldb)</b> ta v baz <br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show the global/static variables defined in the current source file.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> target variable <br/>
			<b>(lldb)</b> ta v <br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Display a the variable "argc" and "argv" every time you stop.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> display argc<br/>
			<b>(gdb)</b> display argv<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> target stop-hook add --one-liner "frame variable argc argv"<br/>
			<b>(lldb)</b> ta st a -o "fr v argc argv"<br/>
			<b>(lldb)</b> display argc<br/>
			<b>(lldb)</b> display argv<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Display a the variable "argc" and "argv" only when you stop in the function named <b>main</b>.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> target stop-hook add --name main --one-liner "frame variable argc argv"<br/>
			<b>(lldb)</b> ta st a -n main -o "fr v argc argv"<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
	end
	category do
		id 'Evaluating expressions'

		entry do
			name 'Display the variable "*this" only when you stop in c class named <b>MyClass</b>.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> target stop-hook add --classname MyClass --one-liner "frame variable *this"<br/>
			<b>(lldb)</b> ta st a -c MyClass -o "fr v *this"<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Evaluating a generalized expression in the current frame.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> print (int) printf ("Print nine: %d.", 4 + 5)<br/>
			or if you don"t want to see void returns: <br/>
			<b>(gdb)</b> call (int) printf ("Print nine: %d.", 4 + 5)<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> expr (int) printf ("Print nine: %d.", 4 + 5)<br/>
			or using the print alias:<br/>
			<b>(lldb)</b> print (int) printf ("Print nine: %d.", 4 + 5)<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Creating and assigning a value to a convenience variable.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> set $foo = 5<br/>
			<b>(gdb)</b> set variable $foo = 5<br/>
			or using the print command <br/>
			<b>(gdb)</b> print $foo = 5<br/>
			or using the call command <br/>
			<b>(gdb)</b> call $foo = 5<br/>
			and if you want to specify the type of the variable:
			<b>(gdb)</b> set $foo = (unsigned int) 5<br/>

			</td>
			<td width="50%" valign="top">
			In lldb you evaluate a variable declaration expression as you would write it in C:<br/>
			<b>(lldb)</b> expr unsigned int $foo = 5<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Printing the ObjC "description" of an object.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> po [SomeClass returnAnObject]<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> expr -o -- [SomeClass returnAnObject]<br/>
			or using the po alias:<br/>
			<b>(lldb)</b> po [SomeClass returnAnObject]<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Print the dynamic type of the result of an expression.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> set print object 1<br/>
			<b>(gdb)</b> p someCPPObjectPtrOrReference<br/>
			only works for C++ objects.<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> expr -d 1 -- [SomeClass returnAnObject]<br/>
			<b>(lldb)</b> expr -d 1 -- someCPPObjectPtrOrReference<br/>
			or set dynamic type printing to be the default:
			<b>(lldb)</b> settings set target.prefer-dynamic run-target<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Calling a function so you can stop at a breakpoint in the function.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> set unwindonsignal 0<br/>
			<b>(gdb)</b> p function_with_a_breakpoint()<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> expr -i 0 -- function_with_a_breakpoint()<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
	end
	category do
		id 'Examining Thread State'

		entry do
			name 'Calling a function that crashes, and stopping when the function crashes.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> set unwindonsignal 0<br/>
			<b>(gdb)</b> p function_which_crashes()<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> expr -u 0 -- function_which_crashes()<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show the stack backtrace for the current thread.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> bt<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> thread backtrace<br/>
			<b>(lldb)</b> bt<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show the stack backtraces for all threads.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> thread apply all bt

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> thread backtrace all<br/>
			<b>(lldb)</b> bt all

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Backtrace the first five frames of the current thread.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> bt 5

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> thread backtrace -c 5<br/>
			<b>(lldb)</b> bt 5 (<i>lldb-169 and later</i>)<br/>
			<b>(lldb)</b> bt -c 5 (<i>lldb-168 and earlier</i>)

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Select a different stack frame by index for the current thread.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> frame 12

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> frame select 12<br/>
			<b>(lldb)</b> fr s 12<br/>
			<b>(lldb)</b> f 12<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'List information about the currently selected frame in the current thread.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> frame info<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Select the stack frame that called the current stack frame.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> up

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> up<br/>
			<b>(lldb)</b> frame select --relative=1<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Select the stack frame that is called by the current stack frame.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> down

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> down<br/>
			<b>(lldb)</b> frame select --relative=-1<br/>
			<b>(lldb)</b> fr s -r-1<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Select a different stack frame using a relative offset.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> up 2<br/>
			<b>(gdb)</b> down 3<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> frame select --relative 2<br/>
			<b>(lldb)</b> fr s -r2<br/>
			<br/>
			<b>(lldb)</b> frame select --relative -3<br/>
			<b>(lldb)</b> fr s -r-3<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show the general purpose registers for the current thread.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> info registers<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> register read<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Write a new decimal value "123" to the current thread register "rax".'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> p $rax = 123<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> register write rax 123<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Skip 8 bytes ahead of the current program counter (instruction pointer). Note that we use backticks to evaluate an expression and insert the scalar result in LLDB.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> jump *$pc+8<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> register write pc `$pc+8`<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show the general purpose registers for the current thread formatted as <b>signed decimal</b>. LLDB tries to use
			the same format characters as <b>printf(3)</b> when possible.  Type "help format" to see the full list of format specifiers.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> register read --format i<br/>
			<b>(lldb)</b> re r -f i<br/>
			<br/>
			<i>LLDB now supports the GDB shorthand format syntax but there can"t be space after the command:</i><br/>
			<b>(lldb)</b> register read/d<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show all registers in all register sets for the current thread.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> info all-registers<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> register read --all<br/>
			<b>(lldb)</b> re r -a<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show the values for the registers named "rax", "rsp" and "rbp" in the current thread.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> info all-registers rax rsp rbp<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> register read rax rsp rbp<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show the values for the register named "rax" in the current thread formatted as <b>binary</b>.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> p/t $rax<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> register read --format binary rax<br/>
			<b>(lldb)</b> re r -f b rax<br/>
			<br/>
			<i>LLDB now supports the GDB shorthand format syntax but there can"t be space after the command:</i><br/>
			<b>(lldb)</b> register read/t rax<br/>
			<b>(lldb)</b> p/t $rax<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Read memory from address 0xbffff3c0 and show 4 hex uint32_t values.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> x/4xw 0xbffff3c0<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> memory read --size 4 --format x --count 4 0xbffff3c0<br/>
			<b>(lldb)</b> me r -s4 -fx -c4 0xbffff3c0<br/>
			<b>(lldb)</b> x -s4 -fx -c4 0xbffff3c0<br/>
			<br/>
			<i>LLDB now supports the GDB shorthand format syntax but there can"t be space after the command:</i><br/>
			<b>(lldb)</b> memory read/4xw 0xbffff3c0<br/>
			<b>(lldb)</b> x/4xw 0xbffff3c0<br/>
			<b>(lldb)</b> memory read --gdb-format 4xw 0xbffff3c0<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Read memory starting at the expression "argv[0]".'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> x argv[0]<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> memory read `argv[0]`<br/>
			<i><b>NOTE:</b> any command can inline a scalar expression result (as long as the target is stopped) using backticks around any expression:</i><br/>
			<b>(lldb)</b> memory read --size `sizeof(int)` `argv[0]`<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Read 512 bytes of memory from address 0xbffff3c0 and save results to a local file as <b>text</b>.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> set logging on<br/>
			<b>(gdb)</b> set logging file /tmp/mem.txt<br/>
			<b>(gdb)</b> x/512bx 0xbffff3c0<br/>
			<b>(gdb)</b> set logging off<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> memory read --outfile /tmp/mem.txt --count 512 0xbffff3c0<br/>
			<b>(lldb)</b> me r -o/tmp/mem.txt -c512 0xbffff3c0<br/>
			<b>(lldb)</b> x/512bx -o/tmp/mem.txt 0xbffff3c0<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Save binary memory data starting at 0x1000 and ending at 0x2000 to a file.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> dump memory /tmp/mem.bin 0x1000 0x2000

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> memory read --outfile /tmp/mem.bin --binary  0x1000 0x2000<br/>
			<b>(lldb)</b> me r -o /tmp/mem.bin -b 0x1000 0x2000<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Get information about a specific heap allocation (available on Mac OS X only).'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> info malloc 0x10010d680

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> command script import lldb.macosx.heap<br/>
			<b>(lldb)</b> process launch --environment MallocStackLogging=1 -- [ARGS]<br/>   
			<b>(lldb)</b> malloc_info --stack-history 0x10010d680<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Get information about a specific heap allocation and cast the result to any dynamic type that can be deduced (available on Mac OS X only)'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> command script import lldb.macosx.heap<br/>
			<b>(lldb)</b> malloc_info --type 0x10010d680<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Find all heap blocks that contain a pointer specified by an expression EXPR (available on Mac OS X only).'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> command script import lldb.macosx.heap<br/>
			<b>(lldb)</b> ptr_refs EXPR <br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Find all heap blocks that contain a C string anywhere in the block (available on Mac OS X only).'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> command script import lldb.macosx.heap<br/>
			<b>(lldb)</b> cstr_refs CSTRING<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Disassemble the current function for the current frame.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> disassemble

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> disassemble --frame<br/>
			<b>(lldb)</b> di -f

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Disassemble any functions named <b>main</b>.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> disassemble main

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> disassemble --name main<br/>
			<b>(lldb)</b> di -n main

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Disassemble an address range.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> disassemble 0x1eb8 0x1ec3

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> disassemble --start-address  0x1eb8 --end-address 0x1ec3<br/>
			<b>(lldb)</b> di -s 0x1eb8 -e 0x1ec3<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Disassemble 20 instructions from a given address.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> x/20i 0x1eb8

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> disassemble --start-address  0x1eb8 --count 20<br/>
			<b>(lldb)</b> di -s 0x1eb8 -c 20<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Show mixed source and disassembly for the current function for the current frame.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> disassemble --frame --mixed<br/>
			<b>(lldb)</b> di -f -m

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Disassemble the current function for the current frame and show the opcode bytes.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> disassemble --frame --bytes<br/>
			<b>(lldb)</b> di -f -b

			</td>
			</tr>
			</table><br/>
			'
		end
	end
	category do
		id 'Executable and Shared Library Query Commands'

		entry do
			name 'Disassemble the current source line for the current frame.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> disassemble --line<br/>
			<b>(lldb)</b> di -l

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'List the main executable and all dependent shared libraries.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> info shared<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> image list<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Look up information for a raw address in the executable or any shared libraries.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> info symbol 0x1ec4<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> image lookup --address 0x1ec4<br/>
			<b>(lldb)</b> im loo -a 0x1ec4<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Look up functions matching a regular expression in a binary.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> info function &lt;FUNC_REGEX&gt;<br/>

			</td>
			<td width="50%" valign="top">
			This one finds debug symbols:<br/>
			<b>(lldb)</b> image lookup -r -n &lt;FUNC_REGEX&gt;<br/><br/>
			This one finds non-debug symbols:<br/>
			<b>(lldb)</b> image lookup -r -s &lt;FUNC_REGEX&gt;<br/><br/>
			Provide a list of binaries as arguments to limit the search.

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Find full souce line information.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> info line 0x1ec4<br/>

			</td>
			<td width="50%" valign="top">
			This one is a bit messy at present.  Do:<br/><br/>
			<b>(lldb)</b> image lookup -v --address 0x1ec4<br/><br/>
			and look for the LineEntry line, which will have the full source path and
			line range information.<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Look up information for an address in <b>a.out</b> only.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> image lookup --address 0x1ec4 a.out<br/>
			<b>(lldb)</b> im loo -a 0x1ec4 a.out<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Look up information for for a type <code>Point</code> by name.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> ptype Point<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> image lookup --type Point<br/>
			<b>(lldb)</b> im loo -t Point<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Dump all sections from the main executable and any shared libraries.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			<b>(gdb)</b> maintenance info sections<br/>

			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> image dump sections<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Dump all sections in the <b>a.out</b> module.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> image dump sections a.out<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
		entry do
			name 'Dump all symbols from the main executable and any shared libraries.'
			notes '
			<table cellspacing="0">
			<tr>
			<td width="50%" valign="top">
			n/a<br/>
			</td>
			<td width="50%" valign="top">
			<b>(lldb)</b> image dump symtab<br/>

			</td>
			</tr>
			</table><br/>
			'
		end
	end
end