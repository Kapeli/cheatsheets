cheatsheet do
  title 'SilverStripe Templates'
  docset_file_name 'SilverStripe_Templates'
  keyword 'SS SilverStripe'
  source_url 'http://cheat.kapeli.com'
  
  style '
    td.td_command code
    {
      padding: 0px; 
      box-shadow: none;
      border: none;
      background: none;
    }
  '

  category do
    id 'Template elements'
   
    entry do
      name 'Variables'
      notes <<-'END'
        ```ruby
        $Property
        $Property(param)
        $Property.SubProperty
        ```
      END
    end
    entry do
      name 'Escaping'
      notes <<-'END'
        ```ruby
        $Foopx // returns "" (as it looks for a Foopx value)
        {$Foo}px  // returns "3px" (CORRECT)
        $$Foo // returns ""
        ${$Foo} // returns "$3"
        $Foo // returns "3"
        \$Foo // returns "$Foo"

        ```
      END
    end

    entry do
      name 'Includes'
      notes <<-'END'
        ```ruby
        sample="<% include SideBar %>"
        ```
        'The include tag can be particularly helpful for nested functionality. In this example, the include only happens if a variable is true'
        
        ```ruby
        sample="<% if $CurrentMember %>
                  <% include MembersOnlyInclude %>
                <% end_if %>"
        ```

      END
    end
  end
  category do
    id 'Images'
    entry do 
      name 'Images in Templates'
      notes <<-'END'
        ```ruby
        $Image.SetWidth(80) // returns a image 80px wide, ratio kept the same
        $Image.SetHeight(80) // returns a image 80px tall, ratio kept the same
        $Image.SetSize(80,80) // returns a 80x80px padded image
        $Image.SetRatioSize(80,80) // Returns an image scaled proportional, with its greatest diameter scaled to 80px
        $Image.CroppedImage(80,80) // Returns an 80x80 image cropped from the center.
        $Image.PaddedImage(80, 80) // Returns an 80x80 image. Unused space is padded white. No crop. No stretching
        $Image.Width // returns width of image
        $Image.Height // returns height of image
        $Image.Orientation // returns Orientation
        $Image.Filename // returns filename
        $Image.URL // returns filename
        ```
      END
    end
    entry do 
      name 'Images in the Page PHP'
      notes <<-'END'
        ```ruby
      // manipulation functions
      $image->resize(width,height); // Basic resize, just skews the image
      $image->resizeRatio(width,height) // Resizes an image with max width and height
      $image->paddedResize(width,height) // Adds padding after resizing to width or height.
      $image->croppedImage(width,height) // Crops the image from the centre, to given values.
      $image->resizeByHeight(height) // Maximum height the image resizes to, keeps proportion
      $image->resizeByWidth(width) // Maximum width the image resizes to, keeps proportion 
      $image->greyscale(r,g,b) // alters image channels ===
       
      // values
      $image->getHeight() // Returns the height of the image.
      $image->getWidth() // Returns the width of the image
      $image->getOrienation() // Returns a class constant: ORIENTATION_SQUARE or ORIENTATION_PORTRAIT or ORIENTATION_LANDSCAPE
        ```
      END
    end
  end
  category do
    id 'Loops'
   
    entry do
      name 'Children Loop'
      notes <<-'END'
        ```ruby
        sample = "<% loop $Children %>...<% end_loop %>"
        ```
        Will loop over all children of the current page context. Helpful to create page-specific subnavigations. Most likely, you'll want to use <% loop $Menu %> for your main menus, since its independent of the page context.
      END
    end
    entry do
      name 'Children Loop of page-by-url'
      notes <<-'END'
        ```ruby
        sample="<% loop $ChildrenOf(<my-page-url>) %>...<% end_loop %>"
        ```
        Will loop over all children of the current page context. Helpful to create page-specific subnavigations. Most likely, you'll want to use <% loop $Menu %> for your main menus, since its independent of the page context.

        ```ruby
        sample="<% loop $allChildren %>...<% end_loop %>"
        ```
      END
    end
    entry do
      name 'Children Loop all children even if ShowInMenus is false'
      notes <<-'END'
        ```ruby
        sample="<% loop $allChildren %>...<% end_loop %>"
        ```
        Will loop over all children of the current page context. Helpful to create page-specific subnavigations. Most likely, you'll want to use <% loop $Menu %> for your main menus, since its independent of the page context.


      END
    end
  end


  category do
    id 'Access pages, levels, specific pages'
    entry do
      name 'Access level'
      notes <<-'END'
        ```ruby
        sample = "<% with $Level(1) %>
                      $Title
                  <% end_with %>"
        ```
        Will return a page in the current path, at the level specified by the numbers.
        It is based on the current page context, looking back through its parent pages.      
      END
    end
    entry do
      name 'Access specific page'
      notes <<-'END'
        ```ruby
        sample = "<% with $Page(my-page) %>...<% end_with %>"
        ```
        "Page" will return a single page from the site tree, looking it up by URL. You can use it in the <% loop %> format. 
        Can't be called using $Page(my-page).Title.      
      END
    end
  end

  category do
    id 'Links and Linking Modes'
    entry do
      name 'link is $LinkingMode'
      notes <<-'END'
        You are neither on this page nor in this section.      
      END
    end
    entry do
      name 'current is $LinkingMode'
      notes <<-'END'
        You are currently on this page.      
      END
    end
    entry do
      name 'section is $LinkingMode'
      notes <<-'END'
        The current page is a child of this menu item, so the current "section".      
      END
    end
    entry do
      name '$LinkOrCurrent'
      notes <<-'END'
        Determines if the item is the current page. Returns "link" or "current" strings.      
      END
    end
    entry do
      name '$LinkOrCurrent'
      notes <<-'END'
        Determines if the item is in the current section, so in the path towards the current page. Useful for menus which you only want to show a second level menu when you are on that page or a child of it. Returns "link" or "section" strings.
      END
    end
    entry do
      name '$InSection(page-url)'
      notes <<-'END'
        This if block will pass if we're currently on the page-url page or one of its children.
      END
    end
  end 
end