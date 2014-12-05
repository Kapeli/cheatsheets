require 'yaml'
require 'fileutils'

class Icon
  attr_reader :name, :id, :unicode, :created, :categories, :aliases

  def initialize(options={})
    @name       = options['name']
    @id         = options['id']
    @unicode    = options['unicode']
    @created    = options['created']
    @categories = options['categories']
    @aliases    = options['aliases'] || []
  end
end

class Category
  attr_reader :name, :icons

  def initialize(name)
    @name = name

    @icons = []
  end

  def add(icon)
    @icons << icon
  end

  class << self
    def find(category_name)
      @categories[category_name]
    end

    def import(icons)
      @categories = {}

      icons.each do |icon|
        icon.categories.each do |category_name|
          if @categories[category_name].nil?
            @categories[category_name] = Category.new(category_name)
          end

          @categories[category_name].add icon
        end
      end

      @categories
    end
  end
end

# path to resources
RES_DIR = File.expand_path("../resources/Font_Awesome", File.dirname(__FILE__))

# checkout dir of Font-Awesome official repository
FA_SRC_DIR = File.join(RES_DIR, "Font-Awesome")

# path to store assets
ASSETS_DIR = File.join(RES_DIR, "assets")

config = YAML.load_file File.join(FA_SRC_DIR, "_config.yml")
icons = (YAML.load_file File.join(FA_SRC_DIR, config['icon_meta']))['icons']
          .map { |icon| Icon.new(icon) }

fontawesome = config['fontawesome']

Category.import(icons)

# Copy Assets to assets/
FileUtils.cp File.join(FA_SRC_DIR, 'css', 'font-awesome.css'), File.join(ASSETS_DIR, 'css/')
FileUtils.cp File.join(FA_SRC_DIR, 'fonts', 'fontawesome-webfont.woff'), File.join(ASSETS_DIR, 'fonts/')

cheatsheet do
  title 'Keybase.io'
  docset_file_name 'Keybase'
  keyword 'keybase'
  resources ASSETS_DIR
  source_url 'http://cheat.kapeli.com'
  introduction "*`Alpha`* command list for [Keybase](https://keybase.io)'s command line tool.<br/>
  <h2>Contact</h2>
  [![Twitter: @esttorhe](http://img.shields.io/badge/Twitter%20-%40esttorhe-blue.svg?style=flat)](https://twitter.com/esttorhe)"

  style <<-EOS
    @import 'assets/css/font-awesome.css';

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
      id 'Getting going'
      entry do
          command 'version'
          name 'Version'
          notes '
          ```terminal
          keybase version
          ```
          Prints the version number'
      end

      entry do
          command 'help'
          name 'Help'
          notes '
          ```terminal
          keybase help
          ```
          Gets the help.'
      end

      entry do
        command 'signup'
        name 'Sign up'
        notes '
        ```terminal
        keybase signup
        ```
        If you\'ve never used Keybase.'
      end

      entry do
        command 'login'
        name 'Login'
        notes '
        ```terminal
        keybase login
        ```
        If you already have an account.'
      end
  end

  category do
    id 'Proving user\'s accounts'

    entry do
      command 'prove twitter'
      name 'Prove Twitter'
      notes '
      ```terminal
      keybase prove twitter
      ```
      <i class=\'fa fa-twitter fa-2x fa-fw\'></i> Proves you own a [Twitter](https://twitter.com) account.'
    end

    entry do
      command 'prove github'
      name 'Prove GitHub'
      notes '
      ```terminal
      keybase prove github
      ```
      <i class=\'fa fa-github fa-2x fa-fw\'></i> Proves you own a [Github](https://github.com) account.'
    end

    entry do
      command 'prove reddit'
      name 'Prove Reddit'
      notes '
      ```terminal
      keybase prove reddit
      ```
      <i class=\'fa fa-reddit fa-2x fa-fw\'></i> Proves you own a [Reddit](https://reddit.com) account.'
    end

    entry do
      command 'prove coinbase'
      name 'Prove Coinbase'
      notes '
      ```terminal
      keybase prove coinbase
      ```
      Proves you own a [Coinbase](https://coinbase.com) account.'
    end

    entry do
      command 'prove hackernews'
      name 'Prove HackerNews'
      notes '
      ```terminal
      keybase prove hackernews
      ```
      <i class=\'fa fa-hacker-news fa-2x fa-fw\'></i> Proves you own a [YCombinator - HackerNews](https://news.ycombinator.com/) account.'
    end

    entry do
      command 'prove web you.com'
      name 'Prove your website'
      notes '
      ```terminal
      keybase prove web you.com
      ```
      <i class=\'fa fa-globe fa-2x fa-fw\'></i> Proves you own the domain/website you are claiming.'
    end

    entry do
      command 'prove dns you.com'
      name 'Prove your website'
      notes '
      ```terminal
      keybase prove dns you.com
      ```
      <i class=\'fa fa-download fa-2x fa-fw\'></i> Another way to prove you own the domain/website you are claiming.'
    end
  end

  category do
    id 'Pushing / revoking your key'

    entry do
      command 'push'
      name 'Push'
      notes'
      ```terminal
      keybase push
      ```
      Push your public key to [Keybase](https://keybase.io).'
    end

    entry do
      command 'revoke'
      name 'Revoke'
      notes'
      ```terminal
      keybase revoke
      ```
      Remove/replace your public key.'
    end
  end

  category do
    id 'Id\'ing and tracking'

    entry do
      command 'search'
      name 'Search'
      notes '
      ```terminal
      keybase search <user>
      ```
      Find users like `<user>`.'
    end

    entry do
      command 'id'
      name 'Identify'
      notes '
      ```terminal
      keybase id <user>
      ```
      Look <user> up, verify identity.'
    end

    entry do
      command 'track'
      name 'Track'
      notes '
      ```terminal
      keybase track <user>
      ```
      Same as id, but track publicly.'
    end

    entry do
      command 'track --track-local'
      name 'Track Local Only'
      notes '
      ```terminal
      keybase track <user> --track-local
      ```
      Track, but not on server.'
    end
  end

  category do
    id 'Bitcoin'

    entry do
      command 'btc'
      name 'Bitcoin'
      notes '
      ```terminal
      keybase btc <bitcoin>
      ```
      <i class=\'fa fa-bitcoin fa-2x fa-fw\'></i> Sign and set the [Bitcoin](https://bitcoin.org/en/) address on your profile'
    end
  end

  category do
    id 'Encrypting'

    entry do
      command 'encrypt -m'
      name 'Encrypt message'
      notes '
      ```terminal
      keybase encrypt <user> -m <message>
      ```
      Encrypts the message'
    end

    entry do
      command 'encrypt -s -m'
      name 'Encrypt message and signs it.'
      notes '
      ```terminal
      keybase encrypt <user> -s -m <message>
      ```
      Encrypts the message and also signs it.'
    end

    entry do
      command 'encrypt <file.txt>'
      name 'Encrypt a file'
      notes '
      ```terminal
      keybase encrypt <user> <file.txt>
      ```
      Encrypts the file <file.txt> -> <file.asc>'
    end

    entry do
      command 'encrypt <file.txt> -o'
      name 'Encrypt a file'
      notes '
      ```terminal
      keybase encrypt <user> <file.txt> -o <output.asc>
      ```
      Encrypts the file <file.txt> to the provided <output.asc>'
    end

    entry do
      command 'echo'
      name 'Echo'
      notes '
      ```terminal
      echo \'secret\' | keybase encrypt <user>
      ```
      Stream'
    end
  end

  category do
    id 'Decrypting'

    entry do
      command 'decrypt <file.txt.asc>'
      name 'Decrypts a file'
      notes '
      ```terminal
      keybase decrypt <file.txt.asc>
      ```
      Decrypts <file.txt.asc> to `stdout`'
    end

    entry do
      command 'decrypt -o'
      name 'Decrypts with output'
      notes '
      ```terminal
      keybase decrypt <file.txt.asc> -o <output.txt>
      ```
      Decrypts <file.txt.asc> to provided <output.txt>'
    end

    entry do
      command 'decrypt'
      name 'Decrypts a stream'
      notes '
      ```terminal
      cat <file.txt.asc> | keybase decrypt
      ```
      Decrypts a stream'
    end
  end

  category do
    id 'Signing'

    entry do
      command 'sign -m'
      name 'Sign message'
      notes '
      ```terminal
      keybase sign -m <message>
      ```
      Signs a message.'
    end

    entry do
      command 'sign --clearsign -m'
      name 'Sign message'
      notes '
      ```terminal
      keybase sign --clearsign -m <message>
      ```
      Sign, but don\'t encode contents.'
    end

    entry do
      command 'sign <file.txt> --detach-sign'
      name 'Generate signature only'
      notes '
      ```terminal
      keybase sign <file.txt> --detach-sign
      ```
      Generate <file.txt.asc>, just a signature.'
    end

    entry do
      command 'echo'
      name 'Stream'
      notes '
      ```terminal
      echo <message> | keybase sign
      ```
      Stream.'
    end
  end

  category do
    id 'Verifying'

    entry do
      command 'verify <file.txt.asc>'
      name 'Verify file.'
      notes '
      ```console
      keybase verify <file.txt.asc>
      ```
      Verify a self-signed file.'
    end

    entry do
      command 'verify <file.txt.asc> <file.txt>'
      name 'Verify file.'
      notes '
      ```console
      keybase verify <file.txt.asc> <file.txt>
      ```
      Verify a file + detatched signature.'
    end

    entry do
      command 'verify'
      name 'Verify file.'
      notes '
      ```console
      cat <file.txt.asc> | keybase verify
      ```
      Stream a self-signed file.'
    end
  end

  notes <<-'END'
  * Command list taken from [Keybase](https://keybase.io/docs/command_line)'s documentation page.
  </br>*Last updated: 12/04/14*
  END

end
