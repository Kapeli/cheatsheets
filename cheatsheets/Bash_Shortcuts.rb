cheatsheet do
  title 'Bash Shortcuts'
  docset_file_name 'Bash_Shortcuts'
  keyword 'bashshortcuts'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Command Editing Shortcuts'

    entry do
      command 'CTRL+A'
      command 'CTRL+E'
      name 'Go to the start/end of the command line'
    end
    entry do
      command 'CTRL+U'
      command 'CTRL+K'
      name 'Delete from cursor to the start/end of the command line'
    end
    entry do
      command 'CTRL+W'
      command 'ALT+D'
      name 'Delete from cursor to start/end of word (whole word if at the boundary)'
    end
    entry do
      command 'CTRL+Y'
      name 'Paste word or text that was cut using one of the deletion shortcuts (such as the one above) after the cursor'
    end
    entry do
      command 'CTRL+XX'
      name 'Move between start of command line and current cursor position (and back again)'
    end
    entry do
      command 'ALT+B'
      command 'ALT+F'
      name 'Move backward/forward one word (or go to start of word the cursor is currently on)'
    end
    entry do
      command 'ALT+C'
      name 'Capitalize to end of word starting at cursor (whole word if cursor is at the beginning of word)'
    end
    entry do
      command 'ALT+U'
      name 'Make uppercase from cursor to end of word'
    end
    entry do
      command 'ALT+L'
      name 'Make lowercase from cursor to end of word'
    end
    entry do
      command 'ALT+T'
      name 'Swap current word with previous'
    end
    entry do
      command 'CTRL+F'
      command 'CTRL+B'
      name 'Move forward/backward one character'
    end
    entry do
      command 'CTRL+D'
      command 'CTRL+H'
      name 'Delete character after/before under cursor'
    end
    entry do
      command 'CTRL+T'
      name 'Swap character under cursor with the previous one'
    end
  end
  category do
    id 'Command Recall Shortcuts'

    entry do
      command 'CTRL+R'
      name 'Search the history backwards'
    end
    entry do
      command 'CTRL+G'
      name 'Escape from history searching mode'
    end
    entry do
      command 'CTRL+P'
      name 'Previous command in history (i.e., walk back through the command history)'
    end
    entry do
      command 'CTRL+N'
      name 'Next command in history (i.e., walk forward through the command history)'
    end
    entry do
      command 'ALT+.'
      name 'Use the last word of the previous command'
    end
  end

  category do
    id 'Command Control Shortcuts'

    entry do
      command 'CTRL+L'
      name 'Clear the screen'
    end
    entry do
      command 'CTRL+S'
      name 'Stops the output to the screen (for long running verbose command)'
    end
    entry do
      command 'CTRL+Q'
      name 'Allow output to the screen (if previously stopped using command above)'
    end
    entry do
      command 'CTRL+C'
      name 'Terminate the command'
    end
    entry do
      command 'CTRL+Z'
      name 'Suspend/stop the command'
    end
  end

  category do
    id 'Bash History Shortcuts'
    entry do
      command '!<event><word><modifier>'
      name 'Command History Expansion'

      notes <<~'NOTE'
        Bash keeps a history of commands any part of which can be referred to and
        extracted into the current command line with a _history expansion_ which
        starts with `!` _event_ _word_ _modifier_, where the _word_ and _modifier_
        parts are optional.

        Multiple history expansions can occur within the same line, which is
        terminated with a newline.
      NOTE
    end
    entry do
      command '<event>'
      name 'An _event_ designator'
      notes <<~'NOTE'
        An _event_ designator is a reference to a command line entry in the
        history list, and can be relative (`-n`) or absolute (`n`).
      NOTE
    end
    entry do
      command '<word>'
      name 'A _word_ designator selects one or more words from the referred command line.'
      notes <<~'TEXT'
        Word  designators  are  used to select desired words from the event.  A
        `:` separates the event specification from the word designator.  It may be
        omitted if the word designator begins with a `^`, `$`, `*`, `-`, or `%`.
        Words are numbered from the beginning of the line, with the first word
        being denoted by 0 (zero).  Words are inserted into the current line
        separated by single spaces.

        If a word designator is given without an event designator, the previous
        command is used as the event.
      TEXT
    end
    entry do
      command '<modifier>'
      name 'A _modifier_ performs some action on the referred comnand and words.'
      notes <<~'TEXT'
        After the optional word designator, there may appear a sequence
        of one or more of the following modifiers, each preceded by a
        `:`.

        Unless overridden by a modifier, the default action is to perform a
        substituion into the current command line.
      TEXT
    end
  end

  category do
    id 'Bash History Event Designators'

    entry do
      command '!n'
      name 'Run command _n_; see the output of the `history` command'
    end
    entry do
      command '!-n'
      name 'Refer to the most recent command - _n_'
    end
    entry do
      command '!!'
      name 'Refer to the most recent command; equivalent to `!-1`'
    end
    entry do
      command '!string'
      name 'Refer to the most recent command starting with _string_ preceding the current position in the history list'
    end
    entry do
      command '!?string[?]'
      name 'Refer to the most recent command containing _string_. ' +
           'The trailing `?` may be omitted if the next character is a newline.'
    end
    entry do
      command '^string1^string2^'
      name 'Quick substitution.  Using the previous command, replace _string1_ with _string2_.  ' +
           'Equivalent to `!!:s/string1/string2/` _(see *Bash History Modifiers*)_'
    end
    entry do
      command '!#'
      name 'Refers to the current command line typed thus far.'
    end
  end

  category do
    id 'Bash History Word Designators'

    entry do
      command '0 (zero)'
      name 'The zeroth word.  For the shell, this is the command word'
    end
    entry do
      command 'n'
      name 'The _n_th word.'
    end
    entry do
      command '^'
      name 'The first argument (e.g., word 1)'
    end
    entry do
      command '$'
      name 'The last word.  This is usually the last argument, but can be the command itself if there are no arguments.'
    end
    entry do
      command '%'
      name 'The word matched by the most recent `?string?` search.'
    end
    entry do
      command 'x-y'
      name 'A range of words; `-y` means `0-y`'
    end
    entry do
      command '*'
      name 'All the words except the zeroeth (command).  This is equivalent to `1-$`.'
      notes 'Expands to the empty string if there was just one word in the event.'
    end
    entry do
      command 'x*'
      name 'All words starting with and following the _x_th word.'
    end
    entry do
      command 'x-'
      name 'All words starting with and following the _x_th word, except the last word.'
    end

  end

  category do
    id 'Bash History Modifiers'

    entry do
      command 'h'
      name 'Remove a trailing filename component, leaving only the head.'
    end
    entry do
      command 't'
      name 'Remove all leading filename components, leaving the tail.'
    end
    entry do
      command 'r'
      name 'Remove the filename _extension_ _(trailing suffix of the form `.xxx`)_, leaving the basename.'
    end
    entry do
      command 'e'
      name 'Remove all but the filename extension.'
    end
    entry do
      command 'p'
      name 'Print the currently composed command, but do not execute it.'
    end
    entry do
      command 'q'
      name 'Quote the substituted words, avoiding further substitutions.'
    end
    entry do
      command 'x'
      name 'Quote the subsituted words, but break into words at blanks and newlines.'
    end
    entry do
      command 's/old/new/'
      name 'Subsitute _new_ for the first occurrence of _old_ in the event line.'
      notes <<~NOTE
        Any delimiter can be used in place of `/`.  The final delimiter is
        optional if it is the last character of the event line.  The delimiter
        may be quoted in _old_ and _new_ with a single backslash (`\\`).  If `&`
        appears in _new_, it is replaced by _old_.  A single backslash will
        quote the `&`.  If _old_ is empty, it is set to the last _old_
        substituted, or, if no previous history substitutions took place, the
        last string in a `!?string[?]` search.
      NOTE
    end
    entry do
      command '&'
      name 'Repeat the previous subsitution'
    end
    entry do
      command 'g'
      name 'Cause changes to be applied over the entire event line.'
      notes <<~NOTE
        This is used in conjunction with `:s` (e.g. `:gs/old/new/`)
        or `:&`. If used with `:s`, any delimiter can be used in
        place of `/`, and the final delimiter is optional if it is
        the last character of the event line.  An `a` may be used as
        a synonym for `g`.
      NOTE
    end
    entry do
      command 'G'
      name 'Apply the following `s` modifier once to each word in the event line.'
    end
  end

  category do
    id 'Bash History Expansion Examples'

    entry do
      command '!blah'
      name 'Run the most recent command that starts with `blah`'
    end
    entry do
      command '!blah:p'
      name 'Print the command that `!blah` would run (also adds it as the latest command in the command history'
    end
    entry do
      command '!$'
      name 'The last word of the previous command (same as `ALT+.`)'
    end
    entry do
      command '!^'
      name 'The first word from the most recent command'
    end
    entry do
      command '!*'
      name 'All the arguments from the previous command _(but not the command itself)_.'
    end
    entry do
      command '^old^new^'
      name 'Replace `old` with `new` from the previous command and run it.  This is equivalent to `!!:s/old/new/`'
    end
    entry do
      command '!$:p'
      name 'Print the word that `!$` would substitute'
    end
    entry do
      command '!?blah'
      name 'Run the most recent command that contains the word `blah`'
    end
    entry do
      command '!?blah?:p'
      name 'Print the most recent command that contains the word `blah`'
    end
    entry do
      command '!*'
      name 'The previous command except for the first word (e.g., if you type `find some_file.txt /`, then `!*` would give you `some_file.txt /`)'
    end
    entry do
      command '!*:p'
      name 'Print what `!*` would substitute'
    end
    entry do
      command '!<N>'
      name 'Run the command line N (see `history` output)'
    end
  end

  category do
    id 'Bash Parameter Substitution'
    entry do
      command '${param:-word}'
      command '${param-word}'
      name 'Use default values'
      notes <<~'NOTE'
        If _param_ is unset or null (`:-`), the expanion of _word_ is
        substituted, otherwise the value of _param_ is used.

        Using `-` _(omitting the colon `:`)_ results in testing only
        for a parameter that is unset.  This also applies to the forms
        below using `:=`, `:?`, and `:+`.
      NOTE
    end
    entry do
      command '${param:=word}'
      command '${param=word}'
      name 'Assign default values'
      notes <<~'NOTE'
        If _param_ is unset or null, the expansion of _word_ is assigned to
        _param_ and then substituted.  Positional and special parameters
        may not be assigned to this way.
      NOTE
    end
    entry do
      command '${param:?word}'
      command '${param?word}'
      name 'Display Error if Null or Unset'
      notes <<~'NOTE'
        If _param_ is null or unset, the expansion of _word_ (or a
        message to that effect if _word_ is not present) is written
        to the standard error and the shell, if it is not interactive,
        exits.  Otherwise, the value of _param_ is substituted.
      NOTE
    end
    entry do
      command '${param:+word}'
      command '${param+word}'
      name 'Use Alternate Value'
      notes <<~'NOTE'
        If _param_ is null or unset, nothing is substituted, otherwise the
        expansion of _word_ is substituted.
      NOTE
    end
    entry do
      command '${param:offset}'
      command '${param:offset:length}'
      name 'Substring Expansion'
      notes <<~'NOTE'
        Expands to up to `length` characters of the value of _param_ starting at
        the character specified by `offset`.  If _param_ is `@`,  an  indexed
        array subscripted by `@` or `*`, or an associative array name, the
        results differ as described below.  If `length` is omitted, expands to the
        substring of the value of _param_ starting at the character specified
        by `offset` and extending to the end of the value.  `length` and `offset`
        are arithmetic expressions.

        If `offset` evaluates to a negative number, the value is used as an
        offset in characters from the end of the value of _param_.  If `length`
        evaluates to a negative number,  it is interpreted as an offset in
        characters from the end of the value of _param_ _(instead of a number
        of characters)_, and the expansion is the characters between `offset` and
        that result.  Note that a negative `offset` must be separated from the
        colon by at least one space to avoid being confused with the `:-`
        expansion.

        If _param_ is `@`, the result is `length` positional _param_s beginning
        at `offset.`  A negative `offset` is taken relative to one greater than the
        greatest positional _param_, so an `offset` of -1 evaluates to the last
        positional _param_.  It is an expansion error if `length` evaluates to a
        number less than zero.

        If  _param_  is an indexed array name subscripted by `@` or `*`, the
        result is the `length` members of the array beginning with
        `${param[offset]}`.  A negative `offset` is taken relative to one
        greater than the maximum index of the specified array.  It is an
        expansion error if `length` evaluates to a number less than zero.

        Substring expansion applied to an associative array produces undefined
        results.

        Substring indexing is zero-based unless the positional _param_s are
        used, in which case the indexing starts at 1 by default.  If `offset` is
        0, and the positional _param_s are used, `$0` is prefixed to the list.
      NOTE
    end
    entry do
      command '${!prefix*}'
      command '${!prefix@}'
      name 'Names matching prefix.'
      notes <<~'NOTE'
        Expands to the names of variables whose names begin with
        `prefix`, separated by the first character of the `IFS` special
        variable.  When `@` is used and the expansion appears within
        double quotes, each variable name expands to a separate word.
      NOTE
    end
    entry do
      command '${!name[@]}'
      command '${!name[*]}'
      name 'List of array keys.'
      notes <<~'NOTE'
        If `name` is an array variable, expands to the list of array
        indices (keys) assigned in `name.`  If `name` is not an array,
        expands to 0 if `name` is set and null otherwise.  When `@` is
        used and the expansion appears within double quotes, each
        key expands to a separate word.
      NOTE
    end
    entry do
      command '${#param}'
      name 'Parameter length.'
      notes <<~'NOTE'
        The length in characters of the value of _param_ is substituted.  If
        parameter is `*` or `@`, the value substituted is the number of
        positional parameters.  If _param_ is an array name subscripted by `*`
        or `@`, the value substituted is the number of elements in the array.
        If _param_ is an indexed array name subscripted by a negative number,
        that number is interpreted as relative to one greater than the maximum
        index of _param_, so negative indices count back from the end of the
        array, and an index of -1 references the last element.
     NOTE
    end
    entry do
      command '${param#word}'
      command '${param##word}'
      name 'Remove matching prefix pattern.'
      notes <<~'NOTE'
        The _word_ is expanded to produce a pattern just as in _pathname
        expansion_.  If the pattern matches the beginning of the value
        of _param_, then the result of the expansion is the
        expanded value of _param_ with the shortest matching pattern
        (the `#` case) or the longest matching pattern (the `##`
        case) deleted.  If _param_ is `@` or `*`, the pattern removal
        operation is applied to each positional _param_ in turn, and
        the expansion is the resultant list.  If _param_ is an array
        variable subscripted with `@` or `*`, the pattern removal
        operation is applied to each member of the array in turn, and
        the expansion is the resultant list.
      NOTE
    end
    entry do
      command '${param%word}'
      command '${param%%word}'
      name 'Remove matching suffix pattern.'
      notes <<~'NOTE'
        The _word_ is expanded to produce a pattern just as in _pathname
        expansion_.  If the pattern matches a trailing portion of the expanded
        value of _param_, then the result is the expanded value of _param_ with
        the shortest matching pattern (the `%` case) or the longest matching
        pattern (the `%%` case) deleted.  If _param_ is `@` or `*`, the pattern
        removal operation is applied to each positional _param_ in turn, and the
        expansion is the resultant list.  If _param_ is an array variable
        subscripted with `@` or `*`, the pattern removal operation is applied to
        each member of the array in turn, and the expansion is the resultant
        list.
      NOTE
    end
    entry do
      command '${param/pattern/string}'
      name 'Pattern substitution.'
      notes <<~'NOTE'
        The _pattern_ is expanded to produce a pattern just as in _pathname
        expansion_.  _param_ is expanded and the longest match of _pattern_
        against its value is replaced  with _string_.

        If _pattern_ begins with `/`, all matches of _pattern_ are replaced with
        _string_.  Normally only the first match is replaced.

        If _pattern_ begins with `#`, it must match at the beginning of the
        expanded value of _param_.

        If _pattern_ begins with %, it must match at the end of the expanded
        value of _param_.

        If _string_ is null, matches of _pattern_  are deleted and the `/`
        following _pattern_ may be omitted.

        If the `nocasematch` shell option is enabled, the match is performed
        without regard to the case of alphabetic characters.

        If _param_ is `@` or `*`, the substitution operation is applied to each
        positional _param_ in turn, and the expansion is the resultant list.

        If parameter is an array variable subscripted with `@` or `*`, the
        substitution operation is applied to each member of the array in turn,
        and the expansion is the resultant list.
      NOTE
    end
    entry do
      command '${param^pattern}'
      command '${param^^pattern}'
      command '${param,pattern}'
      command '${param,,pattern}'
      name 'Case modification.'
      notes <<~'NOTE'
        This expansion modifies the case of alphabetic characters in _param_.
        The _pattern_ is expanded to produce a pattern just as in _pathname
        expansion_.  Each character in the expanded value of _param_ is tested
        against _pattern_, and, if it matches the _pattern_, its case is converted.
        The _pattern_ should not attempt to match more than one character.

        The `^` operator converts lowercase letters matching _pattern_ to uppercase;
        the `,` operator converts matching uppercase letters to lowercase.

        The `^^` and `,,` expansions convert each matched character in the expanded value;
        the `^` and `,` expansions match and convert only the first character in the
        expanded value.

        If _pattern_ is  omitted, it is treated like a `?`, which matches every character.

        If _param_ is `@` or `*`, the case modification operation is applied to each
        positional _param_ in turn, and the expansion is the resultant list.

        If _param_ is an array variable subscripted with `@` or `*`, the case
        modification operation is applied to each member of the array in turn,
        and the expansion is the resultant list.
      NOTE
    end
    entry do
      command '${param@operator}'
      name 'Parameter transformation.'
      notes <<~'NOTE'
        The expansion is either a transformation of the value of
        _param_ or information about _param_ itself, depending
        on the value of operator.  Each operator is a single letter:

        `Q` - The expansion is a string that is the value of _param_ quoted in a format that can be reused as input.

        `E` - The expansion is a string that is the value of _param_ with backslash escape sequences expanded as with the `$'...'` quoting mechansim.

        `P` - The expansion is a string that is the result of expanding the value of _param_ as if it were a prompt string.

        `A` - The expansion is a string in the form of an assignment statement or declare command that, if evaluated, will recreate _param_ with its attributes and value.

        `a` - The expansion is a string consisting of flag values representing _param_'s attributes.

        If _param_ is `@` or `*`, the operation is applied to each positional _param_ in turn, and the expansion is the
        resultant list.  If _param_ is an array variable  subscripted with `@` or `*`, the case modification operation
        is applied to each member of the array in turn, and the expansion is the resultant list.

        The result of the expansion is subject to word splitting and pathname expansion.
      NOTE
    end
  end

  category do
    id 'Bash Prompt Variables'

    entry do
      command 'PS0'
      name 'Displayed _after_ reading a command, but before executing it.'
    end
    entry do
      command 'PS1'
      name 'The command line prompt: it is displayed _before_ reading a command'
      notes '`PS1` may be assigned to change the command line prompt.'
    end
    entry do
      command 'PS2'
      name 'Displayed when more input is needed to comlete a command (e.g. incomplete `if`, `for`, `while`, etc.)'
    end
    entry do
      command 'PS3'
      name 'The `select` command prompt.'
    end
    entry do
      command 'PS4'
      name 'Execution trace prompt: displayed before each command in a trace.'
      notes 'The first character of PS4 is replicated to indicate levels of indirection.  The default is `+ `.'
    end
  end

  category do
    id 'Bash Prompt Escape Characters'

    entry do
      command '\a'
      name 'an ASCII bell character (033)'
    end
    entry do
      command '\d'
      name 'the date in "Weekday Month Date" format (e.g., "Tue May 26")'
    end
    entry do
      command '\D{format}'
      name '_strftime_-formatted date/time'
      notes <<~'NOTE'
        The format is passed to _strftime(3)_ and the result is
        inserted into the prompt string; an empty format results
        in a locale-specific time representation.  The braces are
        required'
      NOTE
    end
    entry do
      command '\e'
      name 'an ASCII escape character (033)'
    end
    entry do
      command '\h'
      name 'the hostname up to the first `.`'
    end
    entry do
      command '\H'
      name 'the hostname'
    end
    entry do
      command '\j'
      name 'the number of jobs currently managed by the shell'
    end
    entry do
      command '\l'
      name "the basename of the shell's terminal device name"
    end
    entry do
      command '\n'
      name 'newline'
    end
    entry do
      command '\r'
      name 'carriage return'
    end
    entry do
      command '\s'
      name 'the name of the shell, the basename of `$0` _(the portion following the final slash)_'
    end
    entry do
      command '\t'
      name 'the current time in 24-hour HH:MM:SS format'
    end
    entry do
      command '\T'
      name 'the current time in 12-hour HH:MM:SS format'
    end
    entry do
      command '\@'
      name 'the current time in 12-hour am/pm format'
    end
    entry do
      command '\A'
      name 'the current time in 24-hour HH:MM format'
    end
    entry do
      command '\u'
      name 'the username of the current user'
    end
    entry do
      command '\v'
      name 'the version of bash (e.g., 2.00)'
    end
    entry do
      command '\V'
      name 'the release of bash, version + patch level (e.g., 2.00.0)'
    end
    entry do
      command '\w'
      name 'the current working directory'
      notes <<~'NOTE'
        with `$HOME` abbreviated with a tilde (uses the value of the `PROMPT_DIRTRIM` variable)'
      NOTE
    end
    entry do
      command '\W'
      name 'the basename of the current working directory, with `$HOME` abbreviated with a tilde'
    end
    entry do
      command '\!'
      name 'the history number of this command'
    end
    entry do
      command '\#'
      name 'the command number of this command'
    end
    entry do
      command '\$'
      name 'if the effective UID is 0, a `#`, otherwise a `$`'
    end
    entry do
      command '\nnn'
      name 'the character corresponding to the octal number nnn'
    end
    entry do
      command '\\'
      name 'a backslash'
    end
    entry do
      command '\['
      name 'begin a sequence of non-printing characters'
      notes 'Often used to embed a terminal control sequence into the prompt (eg: ANSI color sequences)'
    end
    entry do
      command '\]'
      name 'a sequence of non-printing characters'
    end
  end

end
