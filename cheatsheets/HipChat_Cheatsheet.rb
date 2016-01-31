cheatsheet do
  title 'HipChat Cheatsheet'
  docset_file_name 'HipChat_Cheatsheet'
  keyword 'hipchat'
  # resources 'resources_dir'
  introduction 'HipChat (for Mac) keyboard shortcuts and slash (/) commands'
  category do
    id 'Keyboard Shortcuts'
    entry do
      command 'CMD + /'
      name    'Help'
      notes   'Open help menu'
    end
    entry do
      command 'CMD + F'
      name    'Search'
      notes   'Search the room history'
    end
    entry do
      command 'CMD + Option + DOWN'
      name    'Next room'
      notes   'Next room or 1-1 chat'
    end
    entry do
      command 'CMD + Option + UP'
      name    'Previous room'
      notes   'Previous room or 1-1 chat'
    end
    entry do
      command 'CMD + <number>'
      name    'Go to room #'
      notes   "
               The Lobby or room at the top is `1`,
               next room is `2`, and so on.
              "
    end
    entry do
      command 'CMD + I'
      name    'Invite'
      notes   'Invite someone to a room'
    end
    entry do
      command 'CMD + Shift + N'
      name    'Create room'
      notes   'Create a new room'
    end
    entry do
      command 'CMD + T'
      name    'Join new room'
      notes   'Join a new room or 1-1 chat'
    end
    entry do
      command 'CMD + Shift + T'
      name    'Reopen'
      name    'Reopen closed chats'
    end
    entry do
      command 'CMD + W'
      name    'Close room'
      notes   'Close the current room or 1-1 chat'
    end
  end
  category do
    id 'Formatting'
    entry do
      command '/code code-block'
      name    'message with syntax highlighting'
      notes   'Display the message with code syntax highlighting.'
    end
    entry do
      command '/quote message'
      name    'Quote formatting'
      notes   'Use special message formatting when you quote someone.'
    end
    entry do
      command 's/wrong word/right word'
      name    'Fix typo'
      notes   'Fix your typos, if corrected within **one** minute'
    end
    entry do
      command '/clear'
      name    'Clear history'
      notes   "
              Clear chat history in the current room or 1-1 chat.<br />
              (History comes back when you reopen the room or chat.)
              "
    end
    entry do
      command '/me message'
      name    'About yourself'
      notes   'Chat about yourself in the third person.'
    end
    entry do
      command '#color-hex'
      notes   'colors of hex-value'
      notes   "
              Show hexadecimal web colors right in HipChat.<br />
              Example `#ffffff` shows a white box next to #ffffff
              "
    end
  end
  category do
    id 'Status update /-commands'
    entry do
      command '/available message'
      name    'Status "available"'
      notes   "
              Set your status as available (green) and optionally includes a message<br />
              Example `/available Working from home`
              "
    end
    entry do
      command '/away message'
      name    'Status "away"'
      notes   "Set your status as away (yellow) and optionally includes a message<br />
               Example: `/away Out to lunch`
               "
    end
    entry do
      command '/dnd message'
      name    'Status "Do Not Disturb"'
      notes   "Set your status as Do Not Disturb (red) and optionally includes a message<br />
              Example: `/dnd Finishing proposal`
              "
    end
  end
  category do
    id 'Room related /-commands'
    entry do
      command '/join room-name'
      name    'Enter room'
      notes   "
              (HipChat web app only)
              Enter an existing HipChat room<br />
              Example `/join IT Team`
              "
    end
    entry do
      command '/part'
      name    'Leave room'
      notes   'Leave the room you are currently in'
    end
    entry do
      command '/topic new-topic'
      name    'Change topic'
      notes   "
              Change the topic of the room you are currently in<br />
              Example: `/topic All things IT`
              "
    end
  end
  notes  "
         * There may be further /-commands depending on you [HipChat Integrations](https://www.hipchat.com/integrations).
         * Based on [Atlassian](https://www.atlassian.com/software/hipchat)'s
           [HipChat Documentation](https://confluence.atlassian.com/hipchat/keyboard-shortcuts-and-slash-commands-749385232.html),
         * Created end of January 2016 by [Steffen Clausjuergens](https://twitter.com/stclj).
         "
end
