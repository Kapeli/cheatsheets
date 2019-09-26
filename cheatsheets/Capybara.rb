cheatsheet do
  title 'Capybara'
  docset_file_name 'Capybara'
  keyword 'capybara'
  source_url 'http://cheat.kapeli.com'


  category do
      id 'Navigation'
      entry do
          name 'Visit a path'
          notes '
          ```ruby
          visit \'/blog\'
          ```
          Navigates to a particular path. Pass a string or uses one of Rails path helpers.'
      end
      entry do
          name 'Click on'
          notes '
          ```ruby
          click_on \'Sign in\'
          ```
          Clicks an anchor tag, button, or input with type submit. Pass a string containing the anchor text.'
      end
  end

  category do
      id 'Page Interaction and Scoping'
      entry do
          name 'Has CSS?'
          notes '
          ```ruby
          page.has_css?(\'nav[data-role=\"primary-navigation\"] li\',text: \'FAQ\')
          ```
          Returns a boolean value reporting whether a specific selector is present on this page.'
      end
      entry do
          name 'Within'
          notes '
          ```ruby
          within(\'footer\'){expect(page).to have_content(\'Copyright\')}
          ```
          Will scope interaction to within a particular selector. Useful if you\'re looking for content in a particular area.'
      end
      entry do
          name 'Has content?'
          notes '
          ```ruby
          page.has_content?(\'Sign in\')
          ```
          Returns a boolean value reporting whether specific content is present on the page.'
      end
      entry do
          name 'Find'
          notes '
          ```ruby
          page.find(\'.todos li:first-child\')
          ```
          Returns a single Capybara::Node::Element instance from the page.'
      end
      entry do
          name 'All'
          notes '
          ```ruby
          page.all(\'.todos li:nth-of_type(odd)\')
          ```
          Returns an array of Capybara::Node::Element instance from the page.'
      end
  end

  category do
      id 'Page Assertions'
      entry do
          name 'Have CSS'
          notes '
          ```ruby
          expect(page).to have_css(\'header\')
          expect(page).to have_css(\'table#records + .pagination a[rel="next"\')
          ```
          Asserts that a certain selector is present on the page.'
      end
      entry do
          name 'Have content'
          notes '
          ```ruby
          expect(page).to have_content(\'What are you looking for?\')
          ```
          Asserts that certain text is present on the page.'
      end
      entry do
          name 'Current URL path comparison'
          notes '
          ```ruby
          expect(page).to have_current_path(prefix_path)
          ```
          '
      end
  end
  category do
      id 'Node Interactions'
      entry do
          name 'Click'
          notes '
          ```ruby
          find(\'article a.title\').click
          ```
          Triggers a click on a Capybara::Element. Works with JavaScript drivers.'
      end
      entry do
          name 'Trigger'
          notes '
          ```ruby
          find(\'input[name="post[title]"]\').trigger(\'focus\')
          ```
          Allows triggering of custom events. Works with JavaScript drivers.'
      end
      entry do
          name 'Visible?'
          notes '
          ```ruby
          find(\'.navigation\').visible?
          ```
          Returns a boolean value reporting if the Capybara::Element is visible.'
      end
  end
  category do
      id 'Form Interactions'
      entry do
          name 'Fill in'
          notes '
          ```ruby
          fill_in \'Title\', with: \'I love Rails!\'
          fill_in \'post[title]\', with: \'I love Rails!\'
          ```
          Fills in fields for you. Pass the label text or the name of the input.'
      end
      entry do
          name 'Choose'
          notes '
          ```ruby
          choose \'Male\'
          ```
          Chooses a radio button. Pass the label text.'
      end
      entry do
          name 'Check'
          notes '
          ```ruby
          check \'I accept the terms of the site\'
          ```
          Checks a checkbox. Pass the label text.'
      end
      entry do
          name 'Uncheck'
          notes '
          ```ruby
          uncheck \'Admin access?\'
          ```
          Unchecks a checkbox. Pass the label text.'
      end
      entry do
          name 'Select'
          notes '
          ```ruby
          select \'MA\', from: \'State\'
          ```
          Selects an option from a select tag.'
      end
      entry do
          name 'Attach file'
          notes '
          ```ruby
          attach_file \'Image\', \'path/to/image.jpg\'
          ```
          Attaches a file.'
      end
      entry do
          name 'Click button'
          notes '
          ```ruby
          click_button \'Create My Account\'
          ```
          Will press a button or `input[type=\'submit\']`'
      end
  end
  category do
      id 'Debugging'
      entry do
          name 'Save and open page'
          notes '
          ```ruby
          save_and_open_page
          ```
          Will save the current page (typically to `Rails.root/tmp`) and attemps to open the HTML in the default web browser.'
      end
      entry do
          name 'Save and open screenshot'
          notes '
          ```ruby
          save_and_open_screenshot
          ```
          Save a screenshot of the current page and open in the default image viewer.'
      end
  end
  category do
      id 'Waiting...'
      entry do
          name "Capybara automatically waits for asynchronous operations to complete.
          When you try to find an element that isn't on the page, it waits and retries until it is there, or a timeout duration elapses.
          The wait time is defined at ```Capybara.default_max_wait_time```."
          notes 'Thanks to [this gist](https://gist.github.com/zhengjia/428105#gistcomment-1413436) and [this presentation](https://speakerdeck.com/timmoore/embracing-capybara)'
      end
      entry do
          name 'Methods that wait'
          notes '
          - ```find(selector)```, ```find_field```, ```find_link```
          - ```within(selector)(scoping)```
          - ```has_selector?```, ```has_no_selector?``` & assertions
          - form & link actions
            - ```click_link```, ```click_button```
            - ```fill_in```
            - ```check/uncheck```, ```select```, ```choose```
          '
      end
      entry do
          name "Methods that don't wait"
          notes '
          - ```visit```
          - ```current_path```
          - ```all(selector)```
          - ```first(selector)```
          - ```execute_script```
          - simple accessors: ```text```, ```value```, ```title```, etc.
          '
      end
  end
  notes <<-'END'
  * Based on a [cheat sheet](https://learn.thoughtbot.com/test-driven-rails-resources/capybara.pdf) by [thoughtbot](http://thoughtbot.com/).
  END

end
