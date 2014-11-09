cheatsheet do
	title 'screen'
	docset_file_name 'screen'
	keyword 'screen'
	source_url 'http://cheat.kapeli.com'

	category do
		id 'Escape key'
		entry do
			notes 'All screen commands are prefixed by an escape key, by default ```C-a``` (that\'s Control-a, sometimes written ```^a```). To send a literal ```C-a``` to the programs in screen, use ```C-a a```. This is useful when when working with screen within screen. For example ```C-a a n``` will move screen to a new window on the screen within screen.'
		end
	end

	category do
		id 'Getting in'

		entry do
			command 'screen -S <name>'
			name 'Start a new screen session with session name'
		end

		entry do
			command 'screen -ls'
			name 'List running sessions/screens'
		end

		entry do
			command 'screen -x'
			name 'Attach to a running session'
		end

		entry do
			command 'screen -r <name>'
			name 'Attach to a running session with name'
		end

		entry do
			command 'screen -dRR'
			name 'The "ultimate attach"'
			notes 'Attaches to a screen session. If the session is attached elsewhere, detaches that other display. If no session exists, creates one. If multiple sessions exist, uses the first one.'
		end
	end

	category do
		id 'Getting out'

		entry do
			command 'screen -d <name>'
			name 'Detach a running session'
		end

		entry do
			command 'C-a d'
			name 'Detach'
		end

		entry do
			command 'C-a D D'
			name 'Detach and logout (quick exit)'
		end

		entry do
			command '“C-a : quit”'
			name 'Exit screen'
			notes 'or exit all of the programs in screen'
		end

		entry do
			command 'C-a C-\\'
			name 'Force-exit screen'
			notes '(not recommended)'
		end
	end

	category do
		id 'Help'

		entry do
			command 'C-a ?'
			name 'See help'
			notes "Lists keybindings. The [man page](http://aperiodic.net/screen/man:start) is the complete reference, but it's very long."
		end
	end

	category do
		id 'Window Management'

		entry do
			command 'C-a c'
			name 'Create new window'
		end

		entry do
			command 'C-a C-a'
			name 'Change to last-visited active window'
			notes '(commonly used to flip-flop between two windows)'
		end

		entry do
			command 'C-a <number>'
			name 'Change to window by number'
			notes '(only for windows 0 to 9)'
		end

		entry do
			command 'C-a \' <number or title>'
			name 'Change to window by number or name'
		end

		entry do
			command 'C-a n or C-a <space>'
			name 'Change to next window in list'
		end

		entry do
			command 'C-a p or C-a <backspace>'
			name 'Change to previous window in list'
		end

		entry do
			command 'C-a "'
			name 'See window list'
			notes '(allows you to select a window to change to)'
		end

		entry do
			command 'C-a w'
			name 'Show window bar'
			notes '(if you don\'t have window bar)'
		end

		entry do
			command 'C-a k'
			name 'Kill current window'
			notes '(not recommended)'
		end

		entry do
			command 'C-a \\'
			name 'Kill all windows'
			notes '(not recommended)'
		end

		entry do
			command 'C-a A'
			name 'Rename current window'
		end
	end

	category do
		id 'Split screen'

		entry do
			command 'C-a S'
			name 'Split display horizontally'
		end

		entry do
			command 'C-a |'
			name 'Split display vertically'
			notes 'or `C-a V` (for the vanilla vertical screen patch)'
		end

		entry do
			command 'C-a tab'
			name 'Jump to next display region'
		end

		entry do
			command 'C-a X'
			name 'Remove current region'
		end

		entry do
			command 'C-a Q'
			name 'Remove all regions but the current one'
		end
	end

	category do
		id 'Scripting'

		entry do
			name 'Send a command to a named session'
			notes <<-END
			```
			screen -S <name> -X <command>
			```
			END
		end

		entry do
			name 'Create a new window and run ping example.com'
			notes <<-END
			```
			screen -S <name> -X screen ping example.com
			```
			END
		end

		entry do
			name 'Stuff characters into the input buffer using bash to expand a newline character (from here)'
			notes <<-END
			```
			screen -S <name> [-p <page>] -X stuff $'quit\\r'
			```
			END
		end

		entry do
			name 'A full example'
			notes <<-END
			```
			# run bash within screen

			screen -AmdS bash_shell bash

			# run top within that bash session

			screen -S bash_shell -p 0 -X stuff $'top\\r'

			# ... some time later

			# stuff 'q' to tell top to quit

			screen -S bash_shell -X stuff 'q'

			# stuff 'exit\\n' to exit bash session

			screen -S bash_shell -X stuff $'exit\\r'
			```
			END
		end
	end

	category do
		id 'Misc'

		entry do
			command 'C-a C-l'
			name 'Redraw window'
		end

		entry do
			command 'C-a ['
			name 'Enter copy mode'
			notes 'or `C-a <esc>` (also used for viewing scrollback buffer)'
		end

		entry do
			command 'C-a ]'
			name 'Paste'
		end

		entry do
			command 'C-a M'
			name 'Monitor window for activity'
		end

		entry do
			command 'C-a _'
			name 'Monitor window for silence'
		end

		entry do
			command 'C-a C-v'
			name 'Enter digraph (for producing non-ascii characters)'
		end

		entry do
			command 'C-a x'
			name 'Lock (password protect) display'
		end

		entry do
			command 'C-a :'
			name 'Enter screen command'
		end

		entry do
			command 'C-a H'
			name 'Enable logging in the screen session'
		end
	end
	notes '
		* Based on the Quick Reference at [aperiodic](http://aperiodic.net/screen/quick_reference)
		* Converted by [gendalus](https://github.com/gendalus)
	'
end