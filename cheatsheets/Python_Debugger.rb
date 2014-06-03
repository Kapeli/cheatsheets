cheatsheet do
    title 'Python Debugger'
    docset_file_name 'Python_Debugger'
    keyword 'pdb'
    source_url 'http://cheat.kapeli.com'

    category do
        id 'Getting Started'

        entry do
            name 'Start pdb inside a python script'
            command 'import pdb;pdb.set_trace() '
        end

        entry do
            name 'Start pdb from the command line'
            command 'python -m pdb <file.py>'
        end

    end

    category do
        id 'Stepping'

        entry do
            name 'Step over'
            command 'n(ext)'
        end

        entry do
            name 'Step into'
            command 's(tep)'
        end

        entry do
            name 'Continue until the current function returns'
            command 'r(eturn)'
        end

        entry do
            name 'Continue until the next breakpoint is encountered'
            command 'c(ontinue)'
        end

        entry do
            name 'Up one level in the stack trace'
            command 'u(p)'
        end
        
        entry do
            name 'Down one level in the stack trace'
            command 'd(own)'
        end
        
        entry do
            name 'Show help'
            command 'h(elp)'
            command 'h(elp) command'            
        end        

        entry do
            name 'Quit debugger'
            command 'q(uit)'
        end
        
    end

    category do
        id 'Breakpoints'

        entry do
            name 'Show all breakpoints'
            command 'b(reak)'
        end

        entry do
            name 'Set a breakpoint at a specific line'
            command 'b(reak) line_number'
        end

        entry do
            name 'Set a breakpoint at a specific line, if condition is met'
            command 'b(reak) line_number, condition'
        end

        entry do
            name 'Set a breakpoint in a file at a specific line'
            command 'b(reak) file:line_number'
        end

        entry do
            name 'Set a breakpoint at the first line of a function'
            command 'b(reak) func'
        end
    
        entry do
            name 'Disable breakpoint number'
            command 'disable number'
        end
        
        entry do
            name 'Enable breakpoint number'
            command 'enable number'
        end        
        
        entry do
            name 'Remove breakpoint number'
            command 'clear number'
        end

    end

    category do
        id 'Printing'

        entry do
            name 'Print the value of expr'
            command 'p(rint) expr'
            command 'pp expr'
        end

        entry do
            name 'Print current position and stack trace'
            command 'w(here)'
        end

        entry do
            name 'Print 11 lines of code around the current line'
            command 'l(ist)'
            command 'l(ist) start, end'
        end

        entry do
            name 'Print the arguments of the current function'
            command 'a(rgs)'
        end

    end

end