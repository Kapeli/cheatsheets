cheatsheet do
  title 'Capybara'
  docset_file_name 'Capybara'
  keyword 'capybara'
  source_url 'http://cheat.kapeli.com'

  
  category do
      id 'Navigation'
      entry do
          command 'visit \'/blog\' '
          command 'visit blogs_path'
          name '**Visit a path**'
          notes 'Navigates to a particular path. Pass a string or uses one of Rails path helpers.'
      end
      entry do
          command 'click_on \'Sign in\''
          command 'click_on \'Submit\''
          name '**Click On**'
          notes 'Clicks an anchor tag, button, or input with type submit. Pass a string containing the anchor text.'
      end
  end

  category do
      id 'Page Interation and Scoping'
      entry do
          command 'page.has_css?(\'nav[data-role=\"primary-navigation\"] li\',text: \'FAQ\')'
          name '**Has CSS?**'
          notes 'Returns a boolean value reporting whether a specific selector is present on this page.'
      end
      entry do
          command 'within(\'footer\'){expect(page).to have_content(\'Copyright\')}'
          name '**Within**'
          notes 'Will scope interaction to within a particular selector. Useful if you\'re looking for content in a particular area.'
      end
      entry do
          command 'page.has_content?(\'Sign in\')'
          name '**Has Content?**'
          notes 'Returns a boolean value reporting whether specific content is present on the page.'
      end
      entry do
          command 'page.find(\'.todos li:first-child\')'
          name '**Find**'
          notes 'Returns a single Capybara::Node::Element instance from the page.'
      end
      entry do
          command 'page.all(\'.todos li:nth-of_type(odd)\')'
          name '**All**'
          notes 'Returns an array of Capybara::Node::Element instance from the page.'
      end
  end
  
  category do
      id 'Page Assertions'
      entry do
          command 'expect(page).to have_css(\'header\')'
          command 'expect(page).to have_css(\'table#records + .pagination a[rel="next"\')'
          name '**Have CSS**'
          notes 'Asserts that a certain selector is present on the page.'
      end
      entry do
          command 'expect(page).to have_content(\'What are you looking for?\')'
          name '**Have Content**'
          notes 'Asserts that certain text is present on the page.'
      end
  end
  category do
      id 'Node Interations'
      entry do
          command 'find(\'article a.title\').click'
          name '**Click**'
          notes 'Triggers a click on a Capybara::Element. Works with Javascript drivers.'
      end
      entry do
          command 'find(\'input[name="post[title]"]\').trigger(\'focus\')'
          name '**Trigger**'
          notes 'Allows triggering of custom events. Works with Javascript drivers.'
      end
      entry do
          command 'find(\'.navigation\').visible?'
          name '**Visible?**'
          notes 'Returns a boolean value reporting if the Capybara::Element is visible.'
      end
  end
  category do
      id 'Form Interations'
      entry do
          command 'fill_in \'Title\', with: \'I love Rails!\' '
          command 'fill_in \'post[title]\', with: \'I love Rails!\' '
          name '**Fill In**'
          notes 'Fills in fields for you. Pass the label text or the name of the input.'
      end
      entry do
          command 'check \'I accept the terms of the site\' '
          command 'check \'I am thirteen years of age or older\' '
          name '**Check**'
          notes 'Checks a checkbox. Pass the label text.'
      end
      entry do
          command 'uncheck \'Admin access?\' '
          name '**Uncheck**'
          notes 'Unchecks a checkbox. Pass the label text.'
      end
      entry do
          command 'select \'Moderate\', from: \'Political Party\'  '
          command 'select \'MA\', from: \'State\'  '
          name '**Select**'
          notes 'Selects an option from a select tag.'
      end
      entry do
          command 'click_button \'Create My Account\'  '
          command 'click_button \'Save Record\'  '
          name '**Click Button**'
          notes 'Will press a button or input[type=\'submit\']'
      end
  end
  category do
      id 'Debugging'
      entry do
          command 'save_and_open_page'
          notes 'Will save the current page (typically to Rails.root/tmp) and attemps to open the HTML in the default web browser.'
      end
  end
  notes <<-'END'
  * Based on [capybara cheat sheet by thoughtbot](https://learn.thoughtbot.com/test-driven-rails-resources/capybara.pdf)
  END
  
end
