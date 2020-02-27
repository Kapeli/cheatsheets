cheatsheet do
  title 'SMTP Status Codes'
  docset_file_name 'SMTP_Status_Codes'
  keyword 'smtp'
  source_url 'http://cheat.kapeli.com'

  category do
    id '1xx Informational'
    entry do
      name '101 The server is unable to connect'
    end

    entry do
      name '111 Connection refused or inability to open an SMTP stream'
    end
  end

  category do
    id '2xx Success'

    entry do
      name '200 System status message or help reply'
    end

    entry do
      name '214 A response to the HELP command'
    end

    entry do
      name '220 The server is ready'
    end

    entry do
      name '221 The server is closing its transmission channel'
    end

    entry do
      name '250 Requested mail action okay completed'
    end

    entry do
      name '251 User not local will forward'
    end

    entry do
      name '252 Cannot verify the user, but it will try to deliver the message anyway'
    end
  end

  category do
    id '3xx Redirection'
    entry do
      name '354 Start mail input'
    end
  end

  category do
    id '4xx Persistent transient failure'

    entry do
      name '420 Timeout connection problem'
    end

    entry do
      name '421 Service is unavailable due to a connection problem'
    end

    entry do
      name '422 The recipient’s mailbox has exceeded its storage limit'
    end

    entry do
      name '431 Not enough space on the disk'
    end

    entry do
      name '432 Recipient’s incoming mail queue has been stopped'
    end

    entry do
      name '441 The recipient’s server is not responding'
    end

    entry do
      name '442 The connection was dropped during the transmission'
    end

    entry do
      name '446 The maximum hop count was exceeded for the message'
    end

    entry do
      name '447 Message timed out because of issues concerning the incoming server'
    end

    entry do
      name '449 Routing error'
    end

    entry do
      name '450 User’s mailbox is unavailable'
    end

    entry do
      name '451 Aborted – Local error in processing'
    end

    entry do
      name '452 Too many emails sent or too many recipients'
    end

    entry do
      name '471 An error of your mail server'
    end
  end

  category do
    id '5xx Permanent errors'

    entry do
      name '500 Syntax error'
    end

    entry do
      name '501 Syntax error in parameters or arguments'
    end

    entry do
      name '503 Bad sequence of commands, or requires authentication'
    end

    entry do
      name '504 Command parameter is not implemented'
    end

    entry do
      name '510 Bad email address'
    end

    entry do
      name '511 Bad email address'
    end

    entry do
      name '512 Host server for the recipient’s domain name cannot be found in DNS'
    end

    entry do
      name '513 Address type is incorrect'
    end

    entry do
      name '523 Size of your mail exceeds the server limits'
    end

    entry do
      name '530 Authentication problem'
    end

    entry do
      name '541 The recipient address rejected your message'
    end

    entry do
      name '550 Non-existent email address'
    end

    entry do
      name '551 User not local or invalid address – relay denied'
    end

    entry do
      name '552 Exceeded storage allocation'
    end

    entry do
      name '553 Mailbox name invalid'
    end

    entry do
      name '554 Transaction has failed'
    end
  end

  notes <<-'END'
    * Based on [List of SMTP server return codes](https://en.wikipedia.org/wiki/List_of_SMTP_server_return_codes) on Wikipedia.
  END
end
