cheatsheet do
  title 'Python Format Strings'
  docset_file_name 'python_format_strings'
  keyword 'pyfmt'

  introduction 'Python String Formatting Reference'
  category do
    id 'Field Width and Alignment'
    entry do
      command "'hey {:10}'.format('hello')"
      name 'Specify width (Aign left, fill with spaces)'
    end
    entry do
      command "'{:010}'.format(2)"
      name 'Fill with zeroes'
      notes 'Output: `0000000002`'
    end
    entry do
      command "'{:*^30}'.format('text')"
      name 'Specify width, align to center'
      notes 'Output: `*************text*************`'
    end
  end
  category do
    id 'Member and Element Access'
    entry do
      command "'{0}, {1}, {2}'.format(1, 2, 3)"
      name 'Access arguments by ordinal position'
      notes 'Output: `1, 2, 3`'
    end
    entry do
      command "'{}, {}, {}'.format(1, 2, 3)"
      name 'Implicit positional arguments (2.7 and above only)'
      notes 'Output: `1, 2, 3`'
    end
    entry do
      command "'{value1}, {value2}, {value2}'.format(value1=1, value2=2, value3=3)"
      name 'Access keyword arguments by name'
      notes 'Output: `1, 2, 2`'
    end
    entry do
      command "'{[1]}'.format(['first', 'second', 'third'])"
      name 'Access element by index'
      notes 'Output: `second`'
    end
    entry do
      command "'{.name}'.format(sys.stdin)"
      name 'Access element attribute'
      notes 'Output: `<stdin>`'
    end
    entry do
      command "'{[name]}'.format({'name': 'something'})"
      name 'Access element by key'
      notes 'Output: `something`'
    end
  end
  category do
    id 'Numerical Representation'
    entry do
      command "'{:x}'.format(100)"
      name 'Hexadecimal representation'
      notes 'Output: `64`'
    end
    entry do
      command "'{:X}'.format(3487)"
      name 'Hexadecimal representation (uppercase letters)'
      notes 'Output: `D9F`'
    end
    entry do
      command "'{:#x}'.format(100)"
      name 'Hexadecimal representation (including the `0x`)'
      notes 'Output: `0x64`'
    end
    entry do
      command "'{:b}'.format(100)"
      name 'Binary representation'
      notes 'Output: `1100100`'
    end
    entry do
      command "'{:c}'.format(100)"
      name 'Character representation'
      notes 'Output: `d`'
    end
    entry do
      command "'{:d}'.format(100)"
      name 'Decimal representation (default)'
      notes 'Output: `100`'
    end
    entry do
      command "'{:,}'.format(1000000)"
      name 'With thousands separator'
      notes 'Output: `1,000,000`'
    end
    entry do
      command "'{:o}'.format(100)"
      name 'Octal representation'
      notes 'Output: `144`'
    end
    entry do
      command "'{:n}'.format(100)"
      name 'Like `d`, but uses locale information for separators'
      notes 'Output: `100`'
    end
    entry do
      command "'{:e}'.format(0.0000000001)"
      name 'Exponent notation'
      notes 'Output: `1.000000e-10`'
    end
    entry do
      command "'{:E}'.format(0.0000000001)"
      name "Exponent notation (capital 'E')"
      notes 'Output: `1.000000E-10`'
    end
    entry do
      command "'{:f}'.format(3/14.0)"
      name 'Fixed point'
      notes 'Output: `0.214286`'
    end
    entry do
      command "'{:g}'.format(3/14.0)"
      name 'General format'
      notes 'Output: `0.214286`'
    end
    entry do
      command "'{:%}'.format(0.66)"
      name 'Percentage'
      notes 'Output: `66.000000%`'
    end
  end
  category do
    id 'Conversions'
    entry do
      command "'{!r}'.format('string')"
      name 'Calling `repr` on arguments'
      notes "Output: `'string'`"
    end
    entry do
      command "'{!s}'.format(1.53438987)"
      name 'Calling `str` on arguments'
      notes 'Output: `1.53438987`'
    end
  end
end
