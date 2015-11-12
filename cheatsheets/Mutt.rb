cheatsheet do
  title 'Mutt MUA Basics'               # Will be displayed by Dash in the docset list
  docset_file_name 'mutt'    # Used for the filename of the docset

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
      name ''
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
      name ''
      notes <<-'END'
In addition to who sent the message and the subject, a short summary of the disposition of each message is printed beside the message number. Zero or more of the following characters may appear, which mean:

<DL>
<DT><B>D</B><DD><P>message is deleted (is marked for deletion)</P>
<DT><B>d</B><DD><P>message have attachments marked for deletion</P>
<DT><B>K</B><DD><P>contains a PGP public key</P>
<DT><B>N</B><DD><P>message is new</P>
<DT><B>O</B><DD><P>message is old</P>
<DT><B>P</B><DD><P>message is PGP encrypted</P>
<DT><B>r</B><DD><P>message has been replied to</P>
<DT><B>S</B><DD><P>message is PGP signed, and the signature is successfully verified</P>
<DT><B>s</B><DD><P>message is PGP signed</P>
<DT><B>!</B><DD><P>message is flagged</P>
<DT><B>*</B><DD><P>message is tagged</P>
</DL>

Furthermore, the following flags reflect who the message is addressed to. They can be customized with the <code>$to_chars</code> variable.

<DL>
<DT><B>+</B><DD><P>message is to you and you only</P>
<DT><B>T</B><DD><P>message is to you, but is also to or cc'ed to others</P>
<DT><B>C</B><DD><P>message is cc'ed to you</P>
<DT><B>F</B><DD><P>message is from you</P>
<DT><B>L</B><DD><P>message is sent to a subscribed mailing list</P>

      END
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
      notes <<-END
The main two ways to bring up messages in mutt is by limiting and searching. Limiting hides all messages that do not match a pattern, while regular searching jumps to matching messages in the index.

Note that all searches can be considered to be <a href="http://www.boost.org/doc/libs/1_50_0/libs/regex/doc/html/boost_regex/syntax/basic_extended.html">POSIX Extended Regular Expressions</a>, with extra patterns as shown below. As usual, if you want to search for a literal piece of text that's covered by
one of these patterns or a ERE reserved character, it must be escaped by a `\\` (backslash).

Also, note that searches containing spaces must be enclosed in single or double quotation marks.
      END
    end

    entry do
      command 'l'
      name 'Limit display to subsequently entered pattern'
      notes 'Run the command again, with `All` or `~A` as the pattern to return to the full display'
    end

    entry do
      command '/'
      name 'Search visible display'
    end


    entry do
      name 'Search pattern syntax'
      notes <<-'END'
```
Many of Mutt's commands allow you to specify a pattern to match (limit, tag-pattern, delete-pattern, etc.). There are several ways to select messages:

 ~A              all messages
 ~b EXPR         messages which contain EXPR in the message body
 ~B EXPR         messages which contain EXPR in the whole message
 ~c USER         messages carbon-copied to USER
 ~C EXPR         message is either to: or cc: EXPR
 ~D              deleted messages
 ~d [MIN]-[MAX]  messages with ``date-sent'' in a Date range
 ~E              expired messages
 ~e EXPR         message which contains EXPR in the ``Sender'' field
 ~F              flagged messages
 ~f USER         messages originating from USER (can be an alias)
 ~g              PGP signed messages
 ~G              PGP encrypted messages
 ~h EXPR         messages which contain EXPR in the message header
 ~k              message contains PGP key material
 ~i ID           message which match ID in the ``Message-ID'' field
 ~L EXPR         message is either originated or received by EXPR
 ~l              message is addressed to a known mailing list
 ~m [MIN]-[MAX]  message in the range MIN to MAX *)
 ~n [MIN]-[MAX]  messages with a score in the range MIN to MAX *)
 ~N              new messages
 ~O              old messages
 ~p              message is addressed to you (consults $alternates)
 ~P              message is from you (consults $alternates)
 ~Q              messages which have been replied to
 ~R              read messages
 ~r [MIN]-[MAX]  messages with ``date-received'' in a Date range
 ~S              superseded messages
 ~s SUBJECT      messages having SUBJECT in the ``Subject'' field.
 ~T              tagged messages
 ~t USER         messages addressed to USER
 ~U              unread messages
 ~v              message is part of a collapsed thread.
 ~x EXPR         messages which contain EXPR in the `References' field
 ~y EXPR         messages which contain EXPR in the `X-Label' field
 ~z [MIN]-[MAX]  messages with a size in the range MIN to MAX *)
 ~=              duplicated messages (see $duplicate_threads)
```
      END
    end

  end


  category do
    id 'Aliases'

    entry do
      name ''
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
