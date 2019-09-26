cheatsheet do
	title 'Mutt'
	docset_file_name 'Mutt'
    keyword 'mutt'
    source_url 'http://cheat.kapeli.com'

	introduction <<-'END'
Mutt is a highly configurable, terminal-based MUA (mail user agent) for those with
a lot of email. A MUA is a program like Outlook or Thunderbird that only handles
mailboxes, without actually sending or receiving messages on its own (instead, it
relies on third party programs, known as MTAs (mail transfer agents) to handle
the network communication.

This cheatsheet is a guide to the most commonly used commands to get you up and running.
For a more exhaustive guide, check out the [Mutt manual](http://www.mutt.org/doc/manual/manual-2.html).

Unless otherwise specified, all commands apply to the currently highlighted message.
	END


	category do
		id 'Sending & Replying To Mail'

		entry do
			command 'm'
			name 'Compose new message'
		end

		entry do
			command 'r'
			name 'Reply to sender only'
		end

		entry do
			command 'g'
			name 'Reply to all ("group")'
		end

		entry do
			command 'f'
			name 'Forward message'
		end

		entry do
			command 'b'
			name 'Bounce message'
			notes 'Bouncing sends a copy of the message to an alternate address as if they were the original addressee. Not all mail servers will allow this to work.'
		end
	end

	category do
		id 'Composing Messages'

		entry do
			notes <<-'END'
Once you enter a compose command and fill out the to, subject, etc. fields, you will be brought into your regular system text editor to compose your message. Once you are done, save
the file and exit the editor. You will then be brought to another screen giving you a chance to add attachments or perform other operations on your message. Note that your message will
appear on-screen as if it were an attachment on its own - this is normal.

The following commands only work in this pre-sending screen:
			END
		end

		entry do
			name 'Attach file'
			command 'a'
		end

		entry do
			name 'Attach message'
			command 'A'
			notes 'This will allow you to forward a message as an attachment. After this command, you will be brought back to the index to select a message.'
		end

		entry do
			name 'Edit subject field'
			command 's'
		end

		entry do
			name 'Edit to: field'
			command 't'
		end

		entry do
			name 'PGP commands'
			command 'p'
		end

		entry do
			name 'Postpone message'
			command 'P'
			notes 'This will save the message into a postponed (think: drafts) area for later work. You will be prompted if you want to recall a postponed message when you attempt composing a new message.'
		end

		entry do
			name 'Check spelling'
			command 'i'
			notes 'This will invoke ispell, if available on your system.'
		end

		entry do
			name 'Attach PGP key'
			command 'ESC + k'
		end

		entry do
			name 'Abort'
			command 'q'
		end

		entry do
			name 'Detach file'
			command 'D'
		end

		entry do
			name 'Send message'
			command 'y'
		end
	end



	category do
		id 'Status Flags'

		entry do
			notes 'In addition to who sent the message and the subject, a short summary of the disposition of each message is printed beside the message number. Zero or more of the following characters may appear.'
		end

		entry do
			name '`D`'
			notes 'Message is deleted (marked for deletion). Actual removal will happen when the mailbox is synced, or mutt is exited.'
		end

		entry do
			name '`d`'
			notes 'Message has attachments marked for deletion. Like message deletion, the files are not actually removed until sync or exist.'
		end

		entry do
			name '`K`'
			notes 'Message contains a PGP public key.'
		end

		entry do
			name '`N`'
			notes 'Message is new (unread).'
		end

		entry do
			name '`O`'
			notes 'Message is old.'
		end

		entry do
			name '`P`'
			notes 'Message is PGP encrypted.'
		end

		entry do
			name '`r`'
			notes 'Message has been replied to.'
		end

		entry do
			name '`S`'
			notes 'Message is PGP signed, AND the signature has been verified.'
		end

		entry do
			name '`s`'
			notes 'Message is PGP signed, but without verification. Verification problems will be visible when you open the message.'
		end

		entry do
			name '`!`'
			notes 'Message is flagged (equivalent to starred in Gmail or red flagged in Outlook).'
		end

		entry do
			name '`*`'
			notes 'Message is tagged (selected for a multiple-message operation).'
		end

		entry do
			name '`+`'
			notes 'Message is addressed to you, and only you.'
		end

		entry do
			name '`T`'
			notes 'Message is addressed to you, but also others (either in the `to` or `cc` lines).'
		end

		entry do
			name '`C`'
			notes 'Message is CC\'ed to you (your address is in the `cc` line).'
		end

		entry do
			name '`F`'
			notes 'Message is from you.'
		end

		entry do
			name '`L`'
			notes 'Message is from a mailing list you\'re subscribed to.'
		end
	end


	category do
		id 'Handling Messages'

		entry do
			command 't'
			name 'Tag message'
			notes 'Think of tagging as doing a multi-select for a later action, such as a move or delete.'
		end

		entry do
			command 'T'
			name 'Tag all messages matching a search pattern'
		end

		entry do
			command 'd'
			name 'Delete message'
			notes 'This will mark the message as deleted, but not immediately purge it from the index. This gives you a chance to undelete the message if you change your mind.'
		end

		entry do
			command 'D'
			name 'Delete messages matching a pattern'
			notes  'This will mark the messages as deleted, but not immediately purge them from the index. This gives you a chance to undelete the message if you
							change your mind. **THIS IS POTENTIALLY DANGEROUS** - It is recomended you do a limit (`L`) search to see what your search syntax will target,
							tag them, then delete them (`T`, enter, `;`, `d`). This command does those operations in a single step, and is not recommended unless you are
							very comfortable with the search syntax.'
		end

		entry do
			command 'u'
			name 'Undelete message'
			notes 'Normally the selection bar will skip deleted messages. To undelete a message, place the selection bar "above" the message to undelete.
						Be aware that once a message has been removed from the index (either manually, or by exiting mutt with a message marked for deletion),
						the message is permanently gone.'
		end

		entry do
			command ';'
			name 'Apply next command to tagged messages'
			notes 'This requires that you have tagged messages using the `T` or `t` commands. After keying `;`, use another valid message handling command to apply that command to all tagged messages.'
		end

		entry do
			command '$'
			name 'Synchronize pending actions'
			notes 'If messages are pending deletion, this will immediately and irreversibly purge them.'
		end
	end

	category do
		id 'Searching Messages'
		entry do
			name 'Search and limit'
			notes 'The main two ways to bring up specific messages in mutt is by limiting and searching. Limiting hides all messages that *do not* match a pattern, while regular searching jumps to matching messages in the index.'
		end

		entry do
			command 'l'
			name 'Limit display to subsequently entered pattern'
			notes 'Run the command again, with `All` or `~A` as the pattern to return to the full display.'
		end

		entry do
			command '/'
			name 'Search visible display'
		end
	end

	category do
		id 'Search Pattern Syntax'

		entry do
			notes <<-'END'
When entering a search or limit command, the following syntax can be used.

Note that all searches can be considered to be <a href="http://www.boost.org/doc/libs/1_50_0/libs/regex/doc/html/boost_regex/syntax/basic_extended.html">POSIX Extended Regular Expressions</a>, with extra patterns as shown below. As usual, if you want to search for a literal piece of text that's covered by one of these patterns or a ERE reserved character, it must be escaped by a `\` (backslash).

Also, note that searches containing spaces must be enclosed in single or double quotation marks.
			END
		end

		entry do
			name 'All messages'
			command '~A'
			command	'All'
			notes 'Searching for all messages is the fastest way to clear the results of a previous limit (`L`) search.'
		end

		entry do
			name 'Search in body'
			command '~b `<expression>`'
		end

		entry do
			name 'Search in entire message'
			command '~B `<expression>`'
			notes 'Searches the subject, addresses, body, and unencoded attachments.'
		end

		entry do
			name 'Search for messages CC\'ed to a specific user name'
			command '~c `<expression>`'
			notes 'Specifically a name, not an email address. If you want to use a full search expression, use ~C (capitalized) instead. Aliases can be used here.'
		end

		entry do
			name 'Search for messages to or cc\'ed to the following search expression'
			command '~C `<expression>`'
		end

		entry do
			name 'Search for deleted messages'
			command '~D'
		end

		entry do
			name 'Search for messages sent within a specific date range.'
			command '~d `<date range>`'
			notes 'Follow this expression with a date range delimited by minuses. Example: `~d 2017/01/01-2017/02/01`.'
		end

		entry do
			name 'Search for expired messages'
			command '~E'
		end

		entry do
			name 'Search for messages with an expression in the `sender` field'
			command '~e `<expression>`'
		end

		entry do
			name 'Search for flagged messages'
			command '~F'
		end

		entry do
			name 'Search for messages from a specific user'
			command '~f `<username>`'
			notes 'The user name can be an alias.'
		end

		entry do
			name 'Search for PGP signed messages'
			command '~g'
		end

		entry do
			name 'Search for PGP encrypted messages'
			command '~G'
		end

		entry do
			name 'Search message headers'
			command '~h `<expression>`'
		end

		entry do
			name 'Search for messages which contain PGP keys'
			command '~k'
		end

		entry do
			name 'Search for specific message IDs'
			command '~i `<id>`'
			notes 'This references the contents of the `Message-ID` header.'
		end

		entry do
			name 'Search for messages originated OR recieved by an expression'
			command '~L `<expression>`'
		end

		entry do
			name 'Search for all messages addressed to a mailing list'
			command '~l'
		end

		entry do
			name 'Search for messages in the message number range given'
			command '~m `<range>`'
			notes 'This command targets the message number as shown in the index. Give the number as a range delimited by a dash, example: `~m 1-5`.'
		end

		entry do
			name 'Search for messages with a score in the range given'
			command '~n `<score range>`'
			notes 'Give the score as a number range delimited by a dash, example: `~n 1.0-5.0`.'
		end

		entry do
			name 'Search for new messages (messages which arrived in the most recent sync)'
			command '~N'
		end

		entry do
			name 'Search for old messages'
			command '~O'
		end

		entry do
			name 'Search for messages addressed to you'
			command '~p'
		end

		entry do
			name 'Search for messages from yourself'
			command '~P'
		end

		entry do
			name 'Search for messages you have replied to'
			command '~Q'
		end

		entry do
			name 'Search for read messages'
			command '~R'
		end

		entry do
			name 'Search for messages with a recieved date in the given range'
			command '~r `<date range>`'
			notes 'Give the date as a range delimited by a dash. Example: `~r 2017/01/01-2017/02/01`.'
		end

		entry do
			name 'Search for superseded messages'
			command '~S'
		end

		entry do
			name 'Search for messages with a subject matching the given expression'
			command '~s `<expression>`'
		end

		entry do
			name 'Search for tagged messages'
			command '~T'
		end

		entry do
			name 'Search for messages addressed to a specific user'
			command '~t `<username>`'
			notes 'Aliases will work here.'
		end

		entry do
			name 'Search for unread messages'
			command '~U'
		end

		entry do
			name 'Search for messages that are part of a collapsed thread'
			command '~v'
		end

		entry do
			name 'Search for messages with the `References` field containing the given expression'
			command '~x `<expression>`'
		end

		entry do
			name 'Search for messages with the `X-Label` header containing the given expression'
			command '~y `<expression>`'
		end

		entry do
			name 'Search for messages with a size in the given range'
			command '~z `<byte range>`'
			notes 'Give the range as a number of bytes, delimited by a dash. Example: `102400-409600`.'
		end

		entry do
			name 'Search for duplicate messages'
			command '~='
		end
	end


	category do
		id 'Aliases'

		entry do
			notes <<-'END'
Aliases allow you to save short names for later use in searches, To/CC lines,
etc. For example, you could alias `Tom Fubar <tom.fubar@example.com>` to
`TFubar`, and then later, if you want to send a message to Tom, you could
just enter `TFubar` and his full name/address will be expanded transparently
by mutt.
			END
		end

		entry do
			name 'Add alias'
			command 'a'
			notes <<-'END'
Adds an alias for the sender of the highlighted message. After this command,
 you will receive 3 prompts. The first, `Alias As:` prompts for the name
you want to use later to recall this person.  Using our Tom example, this
would be `tfubar`. Second, you'll be prompted for an `Address`. This will be
pre-filled with the address of the selected sender, but you can set it as
whatever you wish. Finally, you'll be prompted for a `Personal name:`- this
is the "real" name of the person.
			END
		end
	end


end
