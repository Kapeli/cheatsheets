cheatsheet do
	title 'screen'
	docset_file_name 'screen'
	keyword 'screen'

	introduction '
		## Escape key

		All screen commands are prefixed by an escape key, by default ```C-a``` (that\'s Control-a, sometimes written ```^a```). To send a literal ```C-a``` to the programs in screen, use ```C-a a```. This is useful when when working with screen within screen. For example ```C-a a n``` will move screen to a new window on the screen within screen.
	'

	notes '
		- Based on the Quick Reference at [aperiodic](http://aperiodic.net/screen/quick_reference)
		- Converted by [gendalus](https://github.com/gendalus)
	'

	category do
		id 'Getting in'

		entry do
			command 'screen -S <name>'
			name 'start a new screen session with session name'
		end

		entry do
			command 'screen -ls'
			name 'list running sessions/screens'
		end

		entry do
			command 'screen -x'
			name 'attach to a running session'
		end

		entry do
			command 'screen -r <name>'
			name '… to session with name'
		end

		entry do
			command 'screen -dRR'
			name 'the “ultimate attach”'
			notes 'Attaches to a screen session. If the session is attached elsewhere, detaches that other display. If no session exists, creates one. If multiple sessions exist, uses the first one.'
		end
	end

	category do
		id 'Getting out'

		entry do
			command 'screen -d <name>'
			name 'detach a running session'
		end

		entry do
			command 'C-a d'
			name 'detach'
		end

		entry do
			command 'C-a D D'
			name 'detach and logout (quick exit)'
		end

		entry do
			command '“C-a : quit”'
			name 'exit screen'
			notes 'or exit all of the programs in screen'
		end

		entry do
			command 'C-a C-\\'
			name 'force-exit screen'
			notes '(not recommended)'
		end
	end

	category do
		id 'Help'

		entry do
			command 'C-a ?'
			name 'See help'
			notes "(lists keybindings)

			The [man page](http://aperiodic.net/screen/man:start) is the complete reference, but it's very long."
		end
	end

	category do
		id 'Window Management'

		entry do
			name 'close current window'
			notes 'Close all applications in the current window (including shell)'
		end

		entry do
			command 'C-a c'
			name 'create new window'
		end

		entry do
			command 'C-a C-a'
			notes 'change to last-visited active window'
			notes '(commonly used to flip-flop between two windows)'
		end

		entry do
			command 'C-a <number>'
			name 'change to window by number'
			notes '(only for windows 0 to 9)'
		end

		entry do
			command 'C-a \' <number or title>'
			name 'change to window by number or name'
		end

		entry do
			command 'C-a n or C-a <space>'
			name 'change to next window in list'
		end

		entry do
			command 'C-a p or C-a <backspace>'
			name 'change to previous window in list'
		end

		entry do
			command 'C-a "'
			name 'see window list'
			notes '(allows you to select a window to change to)'
		end

		entry do
			command 'C-a w'
			name 'show window bar'
			notes '(if you don\'t have window bar)'
		end

		entry do
			command 'C-a k'
			name 'kill current window'
			notes '(not recommended)'
		end

		entry do
			command 'C-a \\'
			name 'kill all windows'
			notes '(not recommended)'
		end

		entry do
			command 'C-a A'
			name 'rename current window'
		end
	end

	category do
		id 'Split screen'

		entry do
			command 'C-a S'
			name 'split display horizontally'
		end

		entry do
			command 'C-a |'
			name 'split display vertically'
			notes 'or C-a V (for the vanilla vertical screen patch)'
		end

		entry do
			command 'C-a tab'
			name 'jump to next display region'
		end

		entry do
			command 'C-a X'
			name 'remove current region'
		end

		entry do
			command 'C-a Q'
			name 'remove all regions but the current one'
		end
	end

	category do
		id 'Scripting'

		entry do
			command 'screen -S <name> -X <command>'
			name 'send a command to a named session'
		end

		entry do
			command 'screen -S <name> -X screen ping example.com'
			name 'create a new window and run ping example.com'
		end

		entry do
			name 'stuff characters into the input buffer using bash to expand a newline character (from here)'
			notes 'screen -S <name> [-p <page>] -X stuff $\'quit\\r\''
		end

		entry do
			name 'a full example'
			notes '
				\# run bash within screen

				screen -AmdS bash_shell bash

				\# run top within that bash session

				screen -S bash_shell -p 0 -X stuff $\'top\\r\'

				\# ... some time later

				\# stuff \'q\' to tell top to quit

				screen -S bash_shell -X stuff \'q\'

				\# stuff \'exit\\n\' to exit bash session

				screen -S bash_shell -X stuff $\'exit\r\'
			'
		end
	end

	category do
		id 'Misc'

		entry do
			command 'C-a C-l'
			name 'redraw window'
		end

		entry do
			command 'C-a ['
			name 'enter copy mode'
			notes 'or C-a <esc> (also used for viewing scrollback buffer)'
		end

		entry do
			command 'C-a ]'
			name 'paste'
		end

		entry do
			command 'C-a M'
			name 'monitor window for activity'
		end

		entry do
			command 'C-a _'
			name 'monitor window for silence'
		end

		entry do
			command 'C-a C-v'
			name 'enter digraph (for producing non-ASCII characters)'
		end

		entry do
			command 'C-a x'
			name 'lock (password protect) display'
		end

		entry do
			command 'C-a :'
			name 'enter screen command'
		end

		entry do
			command 'C-a H'
			name 'enable logging in the screen session'
		end
	end

end
