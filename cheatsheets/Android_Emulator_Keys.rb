cheatsheet do
  title 'Android Emulator Key Bindings'
  docset_file_name 'Android_Emulator_Keys'
  keyword 'android emulator'

  introduction 'The mappings between the emulator keys and the keys of your keyboard from the [Android Emulator](http://developer.android.com/tools/help/emulator.html) docs.'

  category do 
    id 'Device Button Key Mappings'

    entry do
      command 'HOME'
      name 'Home'
    end

    entry do
      command 'F2'
      command 'Page Up'
      name 'Menu (left softkey)'
    end

    entry do
      command 'Shift-F2'
      command 'Page Down'
      name 'Star (right softkey)'
    end

    entry do
      command 'ESC'
      name 'Back'
    end

    entry do
      command 'F3'
      name 'Call/dial button'
    end

    entry do
      command 'F4'
      name 'Hangup/end call button'
    end

    entry do
      command 'F5'
      name 'Search'
    end

    entry do
      command 'F7'
      name 'Power button'
    end

    entry do
      command 'KEYPAD_PLUS'
      command 'Ctrl-F5'
      name 'Audio Volume Up button'
    end

    entry do
      command 'KEYPAD_MINUS'
      command 'Ctrl-F6'
      name 'Audio Volume Down button'
    end

    entry do
      command 'Ctrl-KEYPAD_5'
      command 'Ctrl-F3'
      name 'Camera button'
    end
  end

  category do 
    id 'Emulator Control Key Mappings'

    entry do
      command 'KEYPAD_7'
      command 'Ctrl-F11'
      name 'Switch to previous layout orientation'
    end
    
    entry do
      command 'KEYPAD_9'
      command 'Ctrl-F12'
      name 'Switch to next layout orientation'
    end

    entry do
      command 'F8'
      name 'Toggle cell networking on/off'
    end

    entry do
      command 'F9'
      name 'Toggle code profiling (only with --trace startup option)'
    end

    entry do
      command 'Alt-Enter'
      name 'Toggle fullscreen mode'
    end

    entry do
      command 'F6'
      name 'Toggle trackball mode'
    end

    entry do
      command 'Delete'
      name 'Enter trackball mode temporarily (while key is pressed)'
    end

    entry do
      command 'KEYPAD_MULTIPLY'
      name 'Onion alpha increase'
    end

    entry do
      command 'KEYPAD_DIVIDE'
      name 'Onion alpha decrease'
    end
  end

  category do 
    id 'DPad Key Mappings'
    entry do
      command 'KEYPAD_4'
      name 'DPad left'
    end

    entry do
      command 'KEYPAD_8'
      name 'DPad up'
    end

    entry do
      command 'KEYPAD_6'
      name 'DPad right'
    end

    entry do
      command 'KEYPAD_2'
      name 'DPad down'
    end

    entry do
      command 'KEYPAD_5'
      name 'DPad center click'
    end
  end

end
