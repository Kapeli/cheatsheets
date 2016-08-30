cheatsheet do

  title 'Rails i18n'
  docset_file_name 'Rails_i18n'
  keyword 'rails'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Intro'

    entry do
      name 'Basic'

      notes <<-END
        ***Ruby file***

        ```ruby
        t('my.messages.hello')

        # same as 'my.messages.hello'
        t(:hello, scope: 'my.messages')
        t(:hello, scope: [:my, :messages])

        t('my.messages.hello', default: "Hello")
        ```

        ***en.yml***

        ```yaml
        en:
          my:
            messages:
              hello: "Hello"
        ```
      END
    end

    entry do
      name 'Interpolation'
      notes <<-END
        ```ruby
        t('hello', name: "John")
        ```

        ```yaml
        hello: "Hello %{name}"
        ```
      END
    end

    entry do
      name 'Lazy lookup'
      notes <<-END
        ```ruby
        # from the view: books/index
        t '.title'
        ```

        ```yaml
        en:
          books:
            index:
              title: "Títle"
        ```
      END
    end

    entry do
      name 'Plural'
      notes <<-END
        ```ruby
        t(:inbox, count: 1)  #=> 'one message'
        t(:inbox, count: 2)  #=> '2 messages'
        ```

        ```yaml
        inbox:
          one: 'one message',
          other: '%{count} messages'
        ```
      END
    end
  end

  category do
    id 'Localizing'
    entry do
      name 'Time'
      notes <<-END
        ```ruby
        l(Time.now)
        l(Time.now, format: :short)
        ```

        ```yaml
        en:
          time:
            formats:
              default: "%a, %d %b %Y %H:%M:%S %z"
              long: "%B %d, %Y %H:%M"
              short: "%d %b %H:%M"
        ```
      END
    end

    entry do
      name 'Date'
      notes <<-END
        ```ruby
        l(Date.today)
        ```

        ```yaml
        en:
          date:
            formats:
              default: "%Y-%m-%d" # 2015-06-25
              long: "%B %d, %Y"   # June 25, 2015
              short: "%b %d"      # Jun 25
        ```
      END
    end
  end

  category do
    id 'ActiveRecord'
    entry do
      name 'Model names'
      notes <<-END
        ```ruby
        User.model_name.human            #=> "User"
        Child.model_name.human(count: 2) #=> "Children"

        Person.model_name.singular       #=> "Person"
        Person.model_name.plural         #=> "People"
        ```

        ```yaml
        en:
          activerecord:
            models:
              user: "User"
              child:
                one: "Child"
                other: "Children"
        ```
      END
    end

    entry do
      name 'Attributes'
      notes <<-END
        ```ruby
        User.human_attribute_for :name   #=> "Name"
        ```

        ```yaml
        en:
          activerecord:
            attributes:
              user:
                # activerecord.attributes.<model>.<field>
                name: "Name"
                email: "Email"
        ```
      END
    end

    entry do
      name 'Error messages'
      notes <<-END
        ```ruby
        error_messages_for(...)
        ```

        ```yaml
        activerecord:
          errors:
            models:
              venue:
                attributes:
                  name:
                    blank: "Please enter a name
        ```

        ***Possible scopes (in order):***

        ```
        activerecord.errors.models.[model_name].attributes.[attribute_name].[error]
        activerecord.errors.models.[model_name].[error]
        activerecord.errors.messages.[error]
        errors.attributes.[attribute_name].[error]
        errors.messages.[error]
        ```

        ***Where `[error]` can be:***

        ```ruby
        validates
        confirmation - :confirmation
        acceptance   - :accepted
        presence     - :blank
        length       - :too_short (%{count})
        length       - :too_long (%{count})
        length       - :wrong_length (%{count})
        uniqueness   - :taken
        format       - :invalid
        numericality - :not_a_number
        ```
      END
    end

    entry do
      name 'Form labels'
      notes <<-END
        ```ruby
        form_for @post do
          f.label :body
        ```

        ```yaml
        helpers:
          # helpers.label.<model>.<field>
          label:
            post:
              body: "Your body text"
        ```
      END
    end

    entry do
      name 'Submit buttons'
      notes <<-END
        ```ruby
        form_for @post do
          f.submit
        ```

        ```yaml
        helpers:
          submit:
            # helpers.submit.<action>
            create: "Create a %{model}"
            update: "Confirm changes to %{model}"

            # helpers.submit.<model>.<action>
            article:
              create: "Publish article"
              update: "Update article"
        ```
      END
    end
  end

  category do
    id 'Numbers'

    entry do
      notes <<-END
        ```ruby
        number_to_delimited(2000)             #=> "2,000"
        number_to_currency(12.3)              #=> "$12.30"
        number_to_percentage(0.3)             #=> "30%"
        number_to_rounded(3.14, precision: 0) #=> "3"
        number_to_human(12_000)               #=> "12 Thousand"
        number_to_human_size(12345)           #=> "12.3 kb"
        ```
      END
    end

    entry do
      name 'Delimited'
      notes <<-END
        ```ruby
        number_to_delimited(n)
        ```

        ```yaml
        number:
          format:
            separator: '.'
            delimiter: ','
            precision: 3
            significant: false
            strip_insignificant_zeroes: false
        ```
      END
    end

    entry do
      name 'Currencies'
      notes <<-END
        ```ruby
        number_to_currency(n)
        ```

        ```yaml
        number:
          currency:
            format:
              format: "%u%n" # %u = unit, %n = number
              unit: "$"
              separator: '.'
              delimiter: ','
              precision: 3
              # (see number.format)
        ```
      END
    end

    entry do
      name 'Percentage'
      notes <<-END
        ```ruby
        number_to_percentage(n)
        ```

        ```yaml
        number:
          percentage:
            format:
              format: "%n%"
              # (see number.format)
        ```
      END
    end
  end

  category do
    id 'Programmatic access'

    entry do
      notes <<-END
        ```ruby
        I18n.backend.store_translations :en, ok: "Ok"
        I18n.locale = :en
        I18n.default_locale = :en

        I18n.available_locales

        I18n.translate :ok   # aka, I18n.t
        I18n.localize date   # aka, I18n.l
        ```
      END
    end
  end

  notes <<-END
    Ported from the cheatsheet: http://ricostacruz.com/cheatsheets/rails-i18n.html

    ***References***

    * http://guides.rubyonrails.org/i18n.html
    * http://rails-i18n.org/wiki
    * https://github.com/svenfuchs/i18n
    * https://github.com/svenfuchs/rails-i18n/blob/master/rails/locale/en.yml
  END
end
