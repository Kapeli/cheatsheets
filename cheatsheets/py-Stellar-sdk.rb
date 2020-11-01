require 'yaml'
require 'fileutils'

cheatsheet do
  title 'py-Stellar-sdk'
  docset_file_name 'py-stellar-sdk==2.8.1'
  keyword 'stellar-sdk'
  source_url 'https://stellar-sdk.readthedocs.io/en/latest/'

  style <<-EOS
    td.command {
      text-align: right;
      vertical-align:middle;
    }

    td.description .name {
      display: none;
    }

    .single-icon td.description {
      width: 1%;
      text-align: center;
    }


    .example-single-command.category-layouts td.command,
    .example-single-command.category-layouts td.td_command:nth-child(1) {
      width: 12em;
    }

    .example-single-command.category-layouts td.description {
      /* override width for Layouts category */
      width: 13em;
    }

    /* bootstrap color for stacking example */
    .text-danger {
      color: #a94442;
    }
  EOS

  category do
      id 'Install'
      entry do
          command 'pipenv'
          name 'Pipenv'
          notes '
          ```terminal
          pipenv install stellar-sdk==2.8.1
          ```
          Install `py-stellar-sdk` using pipenv (recommended).'
      end
  end

  category do
    id 'Generate Keypair'

    entry do
      command ''
      name 'Prove Twitter'
      notes '
      ```terminal
      keybase prove twitter
      ```
      Prove you own a [Twitter](https://twitter.com) account.'
    end

    entry do
      command 'prove github'
      name 'Prove GitHub'
      notes '
      ```terminal
      keybase prove github
      ```
      Prove you own a [GitHub](https://github.com) account.'
    end

    entry do
      command 'prove reddit'
      name 'Prove Reddit'
      notes '
      ```terminal
      keybase prove reddit
      ```
      Prove you own a [Reddit](https://reddit.com) account.'
    end

    entry do
      command 'prove coinbase'
      name 'Prove Coinbase'
      notes '
      ```terminal
      keybase prove coinbase
      ```
      Prove you own a [Coinbase](https://coinbase.com) account.'
    end

    entry do
      command 'prove hackernews'
      name 'Prove Hacker News'
      notes '
      ```terminal
      keybase prove hackernews
      ```
      Prove you own a [YCombinator - Hacker News](https://news.ycombinator.com/) account.'
    end

    entry do
      command 'prove web you.com'
      name 'Prove website via HTTP'
      notes '
      ```terminal
      keybase prove web you.com
      ```
      Prove you own the domain/website you are claiming via HTTP.'
    end

    entry do
      command 'prove dns you.com'
      name 'Prove website via DNS'
      notes '
      ```terminal
      keybase prove dns you.com
      ```
      Prove you own the domain/website you are claiming via DNS.'
    end
  end


  notes <<-'END'
  * Alpha command list for [Keybase](https://keybase.io)'s command line tool, taken from Keybase's [documentation page](https://keybase.io/docs/command_line)
  * Last updated: 12/04/14
  END

end
