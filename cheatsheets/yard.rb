cheatsheet do
  title 'Yard'
  docset_file_name 'yard'
  keyword 'yard'

  category do
    id 'Templates'

    entry do
      command 'modules'
      notes <<-'MD'
        ```ruby
          # Namespace for classes and modules that handle serving documentation over HTTP
          # @since 0.6.0
        ```
      MD
    end

    entry do
      command 'classes'
      notes <<-'MD'
        ```ruby
          # Abstract base class for CLI utilities. Provides some helper methods for
          # the option parser
          #
          # @author Full Name
          # @abstract
          # @since 0.6.0
          # @attr [Types] attribute_name a full description of the attribute
          # @attr_reader [Types] name description of a readonly attribute
          # @attr_writer [Types] name description of writeonly attribute
          # @deprecated Describe the reason or provide alt. references here
        ```
      MD
    end

    entry do
      command 'methods'
      notes <<-'MD'
        ```ruby
          # An alias to {Parser::SourceParser}'s parsing method
          #
          # @author Donovan Bray
          #
          # @see http://example.com Description of URL
          # @see SomeOtherClass#method
          #
          # @deprecated Use {#my_new_method} instead of this method because
          #   it uses a library that is no longer supported in Ruby 1.9.
          #   The new method accepts the same parameters.
          #
          # @abstract
          # @private
          #
          # @param [Hash] opts the options to create a message with.
          # @option opts [String] :subject The subject
          # @option opts [String] :from ('nobody') From address
          # @option opts [String] :to Recipient email
          # @option opts [String] :body ('') The email's body
          #
          # @param (see User#initialize)
          # @param [OptionParser] opts the option parser object
          # @param [Array<String>] args the arguments passed from input. This
          #   array will be modified.
          # @param [Array<String, Symbol>] list the list of strings and symbols.
          #
          # The options parsed out of the commandline.
          # Default options are:
          #   :format => :dot
          #
          # @example Reverse a string
          #   "mystring.reverse" #=> "gnirtsym"
          #
          # @example Parse a glob of files
          #   YARD.parse('lib/**/*.rb')
          #
          # @raise [ExceptionClass] description
          #
          # @return [optional, types, ...] description
          # @return [true] always returns true
          # @return [void]
          # @return [String, nil] the contents of our object or nil
          #   if the object has not been filled with data.
          #
          # We don't care about the "type" here:
          # @return the object
          #
          # @return [String, #read] a string or object that responds to #read
          # @return description here with no types
        ```
      MD
    end

    entry do
      command 'anywhere'
      notes <<-'MD'
        ```ruby
          # @todo Add support for Jabberwocky service
          #   There is an open source Jabberwocky library available
          #   at http://somesite.com that can be integrated easily
          #   into the project.
        ```
      MD
    end

    entry do
      command 'blocks'
      notes <<-'MD'
        ```ruby
          # for block {|a, b, c| ... }
          # @yield [a, b, c] Description of block
          #
          # @yieldparam [optional, types, ...] argname description
          # @yieldreturn [optional, types, ...] description
        ```
      MD
    end
  end

  category do
    id 'Tags'

    entry do
      command '@abstract'
      notes <<-'MD'
        ```ruby
          # @abstract Subclass and override {#run} to implement
          #   a custom Threadable class.
          class Runnable
            def run; raise NotImplementedError end
          end
        ```
      MD
    end

    entry do
      command '@api'
      notes <<-'MD'
        ```ruby
          class Post
            # @api private
            def reset_table!; table.flush end
          end
        ```
      MD
    end

    entry do
      command '@author'
      notes <<-'MD'
        ```ruby
          # @author Foo Bar <foo@bar.com>
          class MyClass; end
        ```
      MD
    end

    entry do
      command '@deprecated'
      notes <<-'MD'
        ```ruby
          # @deprecated Use {#bar} instead.
          def foo; end

          class Thread
            # @deprecated Exiting a thread in this way is not reliable and
            #   can cause a program crash.
            def kill; end
          end
        ```
      MD
    end

    entry do
      command '@example'
      notes <<-'MD'
        ```ruby
          # @example Reverse a String
          #   "mystring".reverse #=> "gnirtsym"
          def reverse; end
        ```
      MD
    end

    entry do
      command '@note'
      notes <<-'MD'
        ```ruby
          # @note This method should only be used in outer space.
          def eject; end
        ```
      MD
    end

    entry do
      command '@option'
      notes <<-'MD'
        ```ruby
          # @param [Hash] opts the options to create a message with.
          # @option opts [String] :subject The subject
          # @option opts [String] :from ('nobody') From address
          # @option opts [String] :to Recipient email
          # @option opts [String] :body ('') The email's body
          def send_email(opts = {}) end
        ```
      MD
    end

    entry do
      command '@overload'
      notes <<-'MD'
        ```ruby
          # @overload set(key, value)
          #   Sets a value on key
          #   @param key [Symbol] describe key param
          #   @param value [Object] describe value param
          # @overload set(value)
          #   Sets a value on the default key +:foo+
          #   @param value [Object] describe value param
          def set(*args) end
        ```
      MD
    end

    entry do
      command '@param'
      notes <<-'MD'
        ```ruby
          # @param url [String] the URL of the page to download
          # @param directory [String] the name of the directory to save to
          def load_page(url, directory: 'pages') end
        ```
      MD
    end

    entry do
      command '@private'
      notes <<-'MD'
        ```ruby
          # @private
          class InteralImplementation; end
        ```
      MD
    end

    entry do
      command '@raise'
      notes <<-'MD'
        ```ruby
          # @raise [AccountBalanceError] if the account does not have
          #   sufficient funds to perform the transaction
          def withdraw(amount) end
        ```
      MD
    end

    entry do
      command '@return'
      notes <<-'MD'
        ```ruby
          # @return [Fixnum] the size of the file
          def size; @file.size end

          # @return [String] if a single object was returned
          #   from the database.
          # @return [Array<String>] if multiple objects were
          #   returned.
          def find(query) end
        ```
      MD
    end

    entry do
      command '@see'
      notes <<-'MD'
        ```ruby
          # Synchronizes system time using NTP.
          # @see http://ntp.org/documentation.html NTP Documentation
          # @see NTPHelperMethods
          class NTPUpdater; end
        ```
      MD
    end

    entry do
      command '@since'
      notes <<-'MD'
        ```ruby
          # @since 1.2.4
          def clear_routes; end
        ```
      MD
    end

    entry do
      command '@todo'
      notes <<-'MD'
        ```ruby
          # @todo Add support for Jabberwocky service.
          #   There is an open source Jabberwocky library available
          #   at http://jbrwcky.org that can be easily integrated.
          class Wonderlander; end
        ```
      MD
    end

    entry do
      command '@version'
      notes <<-'MD'
        ```ruby
          # The public REST API for http://jbrwcky.org
          # @version 2.0
          class JabberwockyAPI; end
        ```
      MD
    end

    entry do
      command '@yeld'
      notes <<-'MD'
        ```ruby
          # For a block {|a,b,c| ... }
          # @yield [a, b, c] Gives 3 random numbers to the block
          def provide3values(&block) yield(42, 42, 42) end
        ```
      MD
    end

    entry do
      command '@yieldparam'
      notes <<-'MD'
        ```ruby
          # @yieldparam [String] name the name that is yielded
          def with_name(name) yield(name) end
        ```
      MD
    end

    entry do
      command '@yieldreturn'
      notes <<-'MD'
        ```ruby
          # @yieldreturn [Fixnum] the number to add 5 to.
          def add5_block(&block) 5 + yield end
        ```
      MD
    end
  end

  notes <<-'END'
    * Based on:
      + [Yard cheatsheet](https://gist.github.com/chetan/1827484)
      + [Tag overview](http://www.rubydoc.info/gems/yard/file/docs/Tags.md)
  END
end
