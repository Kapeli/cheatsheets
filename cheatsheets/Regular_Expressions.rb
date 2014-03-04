cheatsheet do
  title 'Regular Expressions'
  docset_file_name 'Regular_Expressions'
  keyword 'regex'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Basic Syntax'
    entry do
      command '/.../'
      name 'Start and end regex delimiters'
    end
    entry do
      command '|'
      name 'Alternation'
    end
    entry do
      command '()'
      name 'Grouping'
    end
  end

  category do
    id 'Position Matching'    
    entry do
      command '^'
      name 'Start of string or start of line in multi-line mode'
    end    
    entry do
      command '\A'
      name 'Start of string'
    end    
    entry do
      command '$'
      name 'End of string or end of line in multi-line mode'
    end    
    entry do
      command '\Z'
      name 'End of string'
    end    
    entry do
      command '\b'
      name 'Word boundary'
    end    
    entry do
      command '\B'
      name 'Not word boundary'
    end
    entry do  
      command '\<'
      name 'Start of word'
    end    
    entry do
      command '\>'
      name 'End of word'
    end
  end

  category do
    id 'Character Classes'    
    entry do
      command '\s'
      name 'Whitespace'
    end    
    entry do
      command '\S'
      name 'Not whitespace'
    end    
    entry do
      command '\w'
      name 'Word'
    end    
    entry do
      command '\W'
      name 'Not word'
    end    
    entry do
      command '\d'
      name 'Digit'
    end    
    entry do
      command '\D'
      name 'Not digit'
    end    
    entry do
      command '\x'
      name 'Hexade­cimal digit'
    end    
    entry do
      command '\O'
      name 'Octal digit'
    end
  end

  category do
    id 'Special Characters'    
    entry do
      command '\n'
      name 'Newline'
    end    
    entry do
      command '\r'
      name 'Carriage return'
    end    
    entry do
      command '\t'
      name 'Tab'
    end    
    entry do
      command '\v'
      name 'Vertical tab'
    end    
    entry do
      command '\f'
      name 'Form feed'
    end    
    entry do
      command '\xxx'
      name 'Octal character xxx'
    end    
    entry do
      command '\xhh'
      name 'Hex character hh'
    end
  end

  category do
    id 'Groups and Ranges'    
    entry do
      command '.'
      name 'Any character except newline (\n)'
    end    
    entry do
      command '(a|b)'
      name 'a or b'
    end    
    entry do
      command '(...)'
      name 'Group'
    end    
    entry do
      command '(?:...)' 
      name 'Passive (non-c­apt­uring) group'
    end    
    entry do
      command '[abc]'
      name 'a, b or c'
    end    
    entry do
      command '[^abc]'
      name 'Not a, b or c'
    end    
    entry do
      command '[a-z]'
      name 'Letters from a to z'
    end    
    entry do
      command '[A-Z]'
      name 'Uppercase letters from A to Z'
    end    
    entry do
      command '[0-9]'
      name 'Digits from 0 to 9'
    end
    entry do
      notes 'Note: Ranges are inclusive.'
    end
  end

  category do
    id 'Quantifiers'    
    entry do
      command '*'
      name '0 or more'
    end    
    entry do
      command '+'
      name '1 or more'
    end    
    entry do
      command '?'
      name '0 or 1'
    end
    entry do
      command '{3}' 
      name 'Exactly 3'
    end
    entry do
      command '{3,}'
      name '3 or more'
    end    
    entry do
      command '{3,5}'
      name '3, 4 or 5'
    end
    entry do
      notes "Note: Quantifiers are greedy - they match as many times as possible. Add a `?` after the quantifier to make it ungreedy."
    end
  end

  category do
    id 'Escape Sequences'    
    entry do
      command '\\'
      name 'Escape following character'
      notes 'Used to escape any of the following metacharacters: `{}[]()^$.|*+?\\`.'
    end    
    entry do
      command '\Q'
      name 'Begin literal sequence'
    end    
    entry do
      command '\E'
      name 'End literal sequence'
    end
  end

  category do
    id 'String Replacement'    
    entry do
      command '$1'
      name '1st group'
    end    
    entry do
      command '$2'
      name '2nd group'
    end    
    entry do
      command '$n'
      name 'nth group'
    end    
    entry do
      command '$`'
      name 'Before matched string'
    end    
    entry do
      command '$\''
      name 'After matched string'
    end    
    entry do
      command '$+'
      name 'Last matched string'
    end    
    entry do
      command '$&'
      name 'Entire matched string'
    end
    entry do
      notes 'Note: Some regex implem­ent­ations use `\` instead of `$`.'
    end
  end

  category do
    id 'Assertions'    
    entry do
      command '?='
      name 'Lookahead assertion'
    end    
    entry do
      command '?!'
      name 'Negative lookahead'
    end    
    entry do
      command '?<=' 
      name 'Lookbehind assertion'
    end
    entry do
      command '?!=' 
      command '?<!'
      name 'Negative lookbehind'
    end    
    entry do
      command '?>'
      name 'Once-only subexp­ression'
    end    
    entry do
      command '?()' 
      name 'Condition if-then'
    end
    entry do
      command '?()|'
      name 'Condition if-then-else'
    end    
    entry do
      command '?#'
      name 'Comment'
    end
  end

  category do
    id 'POSIX'    
    entry do
      command '[:upper:]'
      name 'Uppercase letters'
    end    
    entry do
      command '[:lower:]'
      name 'Lowercase letters'
    end    
    entry do
      command '[:alpha:]'
      name 'All letters'
    end    
    entry do
      command '[:alnum:]'
      name 'Digits and letters'
    end    
    entry do
      command '[:digit:]'
      name 'Digits'
    end    
    entry do
      command '[:xdigit:]'
      name 'Hexade­cimal digits'
    end    
    entry do
      command '[:punct:]'
      name 'Punctu­ation'
    end    
    entry do
      command '[:blank:]'
      name 'Space and tab'
    end    
    entry do
      command '[:space:]'
      name 'Blank characters'
    end    
    entry do
      command '[:cntrl:]'
      name 'Control characters'
    end    
    entry do
      command '[:graph:]'
      name 'Printed characters'
    end    
    entry do
      command '[:print:]'
      name 'Printed characters and spaces'
    end    
    entry do
      command '[:word:]'
      name 'Digits, letters and underscore'
    end
  end

  category do
    id 'Pattern Modifiers'    
    entry do
      command 'g'
      name 'Global match'
    end    
    entry do
      command 'i'
      name 'Case-i­nse­nsitive'
    end    
    entry do
      command 'm'
      name 'Multi-line mode'
      notes 'Causes `^` and `$` to also match the start/end of lines.'
    end    
    entry do
      command 's'
      name 'Single-line mode.'
      notes 'Causes `.` to match all, including line breaks.'
    end    
    entry do
      command 'x'
      name 'Allow comments and whitespace in pattern'
    end    
    entry do
      command 'e'
      name 'Evaluate replac­ement'
    end    
    entry do
      command 'U'
      name 'Ungreedy mode'
    end
  end
end