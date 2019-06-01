cheatsheet do
  title 'Bash Test Operators'
  docset_file_name 'Bash_Test_Operators'
  keyword 'bashtests'
  source_url 'http://cheat.kapeli.com'

  introduction <<-'END'
    Everything that can be useful in test constructs (if statements) in a bash environment.

    This cheat sheet is based on the [Advanced Bash-Scripting Guide](http://tldp.org/LDP/abs/html/tests.html) by Mendel Cooper.
  END

  category do
    id 'Compound Comparison'

    entry do
      command '-a'
      name 'logical `and`'
      notes 'Similar to `&&`'
    end
    entry do
      command '-o'
      name 'logical `or`'
      notes 'Similar to `||`'
    end
  end

  category do
    id 'Integer Comparison'

    entry do
      command '-eq'
      name 'is equal to'
      notes '`if [ "$a" -eq "$b" ]`'
    end
    entry do
      command '-ne'
      name 'is not equal to'
      notes '`if [ "$a" -ne "$b" ]`'
    end
    entry do
      command '-gt'
      name 'is greater than'
      notes '`if [ "$a" -gt "$b" ]`'
    end
    entry do
      command '-ge'
      name 'is greater than or equal to'
      notes '`if [ "$a" -ge "$b" ]`'
    end
    entry do
      command '-lt'
      name 'is less than'
      notes '`if [ "$a" -lt "$b" ]`'
    end
    entry do
      command '-le'
      name 'is less than or equal to'
      notes '`if [ "$a" -le "$b" ]`'
    end
    entry do
      command '<'
      name 'is less than'
      notes <<-'END'
        (within double parentheses)

        `(("$a" < "$b"))`
      END
    end
    entry do
      command '<='
      name 'is less than or equal to'
      notes <<-'END'
        (within double parentheses)

        `(("$a" <= "$b"))`
      END
    end
    entry do
      command '>'
      name 'is greater than'
      notes <<-'END'
        (within double parentheses)

        `(("$a" > "$b"))`
      END
    end
    entry do
      command '>='
      name 'is greater than or equal to'
      notes <<-'END'
        (within double parentheses)

        `(("$a" >= "$b"))`
      END
    end
  end


  category do
    id 'String Comparison'

    entry do
      command '='
      command '=='
      name 'is equal to'
      notes <<-'END'
          The == comparison operator behaves differently within a double-brackets test than within single brackets.
          
          ```sh
          [[ $a == z* ]]   # True if $a starts with an "z" (pattern matching).
          [[ $a == "z*" ]] # True if $a is equal to z* (literal matching).

          [ $a == z* ]     # File globbing and word splitting take place.
          [ "$a" == "z*" ] # True if $a is equal to z* (literal matching).
          ```
      END
    end
    entry do
      command '!='
      name 'is not equal to'
      notes <<-'END'
          ```
          if [ "$a" != "$b" ]
          ```
          This operator uses pattern matching within a [[ ... ]] construct.
      END
    end
    entry do
      command '<'
      name 'is less than, in ASCII alphabetical order'
      notes <<-'END'
          Note that the `<` needs to be escaped within a [ ] construct.

          ```sh
          if [[ "$a" < "$b" ]]
          if [ "$a" \< "$b" ]
          ```
      END
    end
    entry do
      command '>'
      name 'is greater than, in ASCII alphabetical order.'
      notes <<-'END'
          Note that the `>` needs to be escaped within a [ ] construct.
  
          ```sh
          if [[ "$a" > "$b" ]]
          if [ "$a" \> "$b" ]
          ```
      END
    end
    entry do
      command '-z'
      name 'string is null'
      notes <<-'END'
          that is, has zero length      
    
          ```sh
          if [ -z "$s" ]
          ```
      END
    end
    entry do
      command '-n'
      name 'string is not null.'
      notes <<-'END'
          ```sh
          if [ -n "$s" ]
          ```
      END
    end
  end

  category do
    id 'File Test Operators'

    entry do
      command '-e'
      command '-a'
      name 'file exists'
      notes '`-a` is deprecated and its use is discouraged.'
    end
    entry do
      command '-f'
      name 'file is a regular file (not a directory or device file)'
    end
    entry do
      command '-d'
      name 'file is a directory'
    end
    entry do
      command '-h'
      command '-L'
      name 'file is a symbolic link'
    end
    entry do
      command '-b'
      name 'file is a block device'
    end
    entry do
      command '-c'
      name 'file is a character device'
    end
    entry do
      command '-p'
      name 'file is a pipe'
    end
    entry do
      command '-S'
      name 'file is a socket'
    end
    entry do
      command '-s'
      name 'file is not zero size'
    end
    entry do
      command '-t'
      name 'file (descriptor) is associated with a terminal device'
      notes 'This test option may be used to check whether the `stdin [ -t 0 ]` or `stdout [ -t 1 ]` in a given script is a terminal.'
    end
    entry do
      command '-r'
      name 'file has read permission (for the user running the test)'
    end
    entry do
      command '-w'
      name 'file has write permission (for the user running the test)'
    end
    entry do
      command '-x'
      name 'file has execute permission (for the user running the test)'
    end
    entry do
      command '-g'
      name 'set-group-id (sgid) flag set on file or directory'
    end
    entry do
      command '-u'
      name 'set-user-id (suid) flag set on file'
    end
    entry do
      command '-k'
      name 'sticky bit set'
    end
    entry do
      command '-O'
      name 'you are owner of file'
    end
    entry do
      command '-G'
      name 'group-id of file same as yours'
    end
    entry do
      command '-N'
      name 'file modified since it was last read'
    end
    entry do
      command '-nt'
      name 'file f1 is newer than f2'
      notes '`if [ "$f1" -nt "$f2" ]`'
    end
    entry do
      command '-ot'
      name 'file f1 is older than f2'
      notes '`if [ "$f1" -ot "$f2" ]`'
    end
    entry do
      command '-ef'
      name 'files f1 and f2 are hard links to the same file'
      notes '`if [ "$f1" -ef "$f2" ]`'
    end
    entry do
      command '!'
      name '"not" -- reverses the sense of the tests above (returns true if condition absent).'
    end
  end

  notes 'Based on the [Advanced Bash-Scripting Guide](http://tldp.org/LDP/abs/html/tests.html) by Mendel Cooper.'
end