cheatsheet do
    title 'Python Exceptions'
    docset_file_name 'Python_Exceptions'
    keyword 'pyexc'
    source_url 'http://cheat.kapeli.com'

    category do
        id 'Built-in Exceptions'

		entry do
			command 'AssertionError'
			name 'Raised when `assert` statement fails.'
		end

		entry do
			command 'AttributeError'
			name 'Raised when attribute assignment or reference fails.'
		end

		entry do
			command 'EOFError'
			name 'Raised when the `input()` functions hits end-of-file condition.'
		end

		entry do
			command 'FloatingPointError'
			name 'Raised when a floating point operation fails.'
		end

		entry do
			command 'GeneratorExit'
			name 'Raise when a generator\'s `close()` method is called.'
		end

		entry do
			command 'ImportError'
			name 'Raised when the imported module is not found.'
		end

		entry do
			command 'IndexError'
			name 'Raised when index of a sequence is out of range.'
		end

		entry do
			command 'KeyError'
			name 'Raised when a key is not found in a dictionary.'
		end

		entry do
			command 'KeyboardInterrupt'
			name 'Raised when the user hits interrupt key (Ctrl+c or delete).'
		end

		entry do
			command 'MemoryError'
			name 'Raised when an operation runs out of memory.'
		end

		entry do
			command 'NameError'
			name 'Raised when a variable is not found in local or global scope.'
		end

		entry do
			command 'NotImplementedError'
			name 'Raised by abstract methods.'
		end

		entry do
			command 'OSError'
			name 'Raised when system operation causes system related error.'
		end

		entry do
			command 'OverflowError'
			name 'Raised when result of an arithmetic operation is too large to be represented.'
		end

		entry do
			command 'ReferenceError'
			name 'Raised when a weak reference proxy is used to access a garbage collected referent.'
		end

		entry do
			command 'RuntimeError'
			name 'Raised when an error does not fall under any other category.'
		end

		entry do
			command 'StopIteration'
			name 'Raised by `next()` function to indicate that there is no further item to be returned by iterator.'
		end

		entry do
			command 'SyntaxError'
			name 'Raised by parser when syntax error is encountered.'
		end

		entry do
			command 'IndentationError'
			name 'Raised when there is incorrect indentation.'
		end

		entry do
			command 'TabError'
			name 'Raised when indentation consists of inconsistent tabs and spaces.'
		end

		entry do
			command 'SystemError'
			name 'Raised when interpreter detects internal error.'
		end

		entry do
			command 'SystemExit'
			name 'Raised by `sys.exit()` function.'
		end

		entry do
			command 'TypeError'
			name 'Raised when a function or operation is applied to an object of incorrect type.'
		end

		entry do
			command 'UnboundLocalError'
			name 'Raised when a reference is made to a local variable in a function or method, but no value has been bound to that variable.'
		end

		entry do
			command 'UnicodeError'
			name 'Raised when a Unicode-related encoding or decoding error occurs.'
		end

		entry do
			command 'UnicodeEncodeError'
			name 'Raised when a Unicode-related error occurs during encoding.'
		end

		entry do
			command 'UnicodeDecodeError'
			name 'Raised when a Unicode-related error occurs during decoding.'
		end

		entry do
			command 'UnicodeTranslateError'
			name 'Raised when a Unicode-related error occurs during translating.'
		end

		entry do
			command 'ValueError'
			name 'Raised when a function gets argument of correct type but improper value.'
		end

		entry do
			command 'ZeroDivisionError'
			name 'Raised when second operand of division or modulo operation is zero.'
		end

    end

  notes <<-'END'
    * Based on the cheat sheet from [Programiz](https://www.programiz.com/python-programming/exceptions).
    * Converted and extended by [tomy0000000](https://github.com/tomy0000000).
  END
end
