cheatsheet do
  title 'HipChat'
  docset_file_name 'HipChat'
  keyword 'hipchat'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Keyboard Shortcuts'
    entry do
      command 'CMD+/'
      name    'Help'
    end
    entry do
      command 'CMD+F'
      name   'Search room history'
    end
    entry do
      command 'CMD+ALT+Arrow Down'
      name   'Next room or 1-1 chat'
    end
    entry do
      command 'CMD+ALT+Arrow Up'
      name   'Previous room or 1-1 chat'
    end
    entry do
      command 'CMD+<number>'
      name    'Go to room #'
      notes   "
               The Lobby or room at the top is `1`,
               next room is `2`, and so on.
              "
    end
    entry do
      command 'CMD+I'
      name   'Invite someone to a room'
    end
    entry do
      command 'CMD+SHIFT+N'
      name   'Create new room'
    end
    entry do
      command 'CMD+T'
      name   'Join new room or 1-1 chat'
    end
    entry do
      command 'CMD+SHIFT+T'
      name    'Reopen closed chats'
    end
    entry do
      command 'CMD+W'
      name   'Close current room or 1-1 chat'
    end
  end
  category do
    id 'Formatting'
    entry do
      command '/code code-block'
      name    'Message with syntax highlighting'
      notes   'Displays your message with code syntax highlighting.'
    end
    entry do
      command '/quote message'
      name    'Quote formatting'
      notes   'Use special message formatting when you quote someone.'
    end
    entry do
      command 's/wrong word/right word'
      name    'Fix typo'
      notes   'Fix your typos, if corrected within **one** minute.'
    end
    entry do
      command '/clear'
      name    'Clear history'
      notes   "Clear chat history in the current room or 1-1 chat. History comes back when you reopen the room or chat."
    end
    entry do
      command '/me message'
      name    'About yourself'
      notes   'Chat about yourself in the third person.'
    end
    entry do
      command '#color-hex'
      name   'Colors of hex-value'
      notes   "Show hexadecimal web colors right in HipChat. Example: `#ffffff` shows a white box next to `#ffffff`."
    end
  end
  category do
    id 'Status Update Commands'
    entry do
      command '/available message'
      name    'Status "available"'
      notes   "Set your status as available (green) and optionally include a message. Example: `/available Working from home`."
    end
    entry do
      command '/away message'
      name    'Status "away"'
      notes   "Set your status as away (yellow) and optionally include a message. Example: `/away Out to lunch`."
    end
    entry do
      command '/dnd message'
      name    'Status "Do Not Disturb"'
      notes   "Set your status as Do Not Disturb (red) and optionally include a message. Example: `/dnd Finishing proposal`."
    end
  end
  category do
    id 'Room Related Commands'
    entry do
      command '/join room-name'
      name    'Enter room'
      notes   "HipChat web app only: enter an existing HipChat room. Example: `/join IT Team`."
    end
    entry do
      command '/part'
      name    'Leave current room'
    end
    entry do
      command '/topic new-topic'
      name    'Change topic'
      notes   "Change the topic of the room you are currently in. Example: `/topic All things IT`."
    end
  end
  notes  "
         * There may be further /-commands depending on your [HipChat Integrations](https://www.hipchat.com/integrations).
         * Based on [Atlassian](https://www.atlassian.com/software/hipchat)'s
           [HipChat Documentation](https://confluence.atlassian.com/hipchat/keyboard-shortcuts-and-slash-commands-749385232.html),
         * Created end of January 2016 by [Steffen Clausjuergens](https://twitter.com/stclj).
         "
end
