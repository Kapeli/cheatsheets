cheatsheet do
  title 'iOS Design Cheat Sheet'
  docset_file_name 'iOS_Design_Cheat_Sheet'
  keyword 'ios'
  source_url 'http://cheat.kapeli.com'
  
  introduction 'A quick access cheat sheet for iOS 7 screen element dimensions'  

  style '
    td.td_command code
    {
	  border: none;
      padding: 25px;
      box-shadow: none;
      background: none;
	  font-family: HelveticaNeue-Light, sans-serif;
      font-size: medium;
      font-weight: bold;
	  color: #666666;
    }
  '

# ~~~~~~~~~~~~ Table - Resolutions ~~~~~~~~~~~~
  category do
    id 'Resolutions'
    header 'Portrait'
    header 'Landscape'
    header 'Devices'

    entry do
   	  td_command '640 x 1136 px'
	  td_command '1136 x 640 px'
	  name 'iPhone 5'
	  notes 'iPhone 5, 5S, 5C'
    end

    entry do
   	  td_command '640 x 960 px'
	  td_command '960 x 640 px'
	  name 'iPhone 4/4S'
	  notes ''
    end

    entry do
   	  td_command '320 x 480 px'
	  td_command '480 x 320 px'
	  name 'iPhone & iPod Touch'
	  notes '1st, 2nd and 3rd Generation'
    end

    entry do
   	  td_command '1536 x 2048 px'
	  td_command '2048 x 1536 px'
	  name 'Retina iPad'
	  notes 'iPad 3, iPad 4, iPad Air'
    end

    entry do
   	  td_command '768 x 1024 px'
	  td_command '1024 x 768 px'
	  name 'iPad Mini'
	  notes ''
    end

    entry do
   	  td_command '1536 x 2048 px'
	  td_command '2048 x 1536 px'
	  name 'iPad Mini Retina'
	  notes ''
    end

    entry do
   	  td_command '768 x 1024 px'
	  td_command '1024 x 768 px'
	  name 'iPad'
	  notes '1st and 2nd Generation'
    end

  end

# ~~~~~~~~~~~~ Table - Displays ~~~~~~~~~~~~
  category do
    id 'Displays'
    header 'PPI'
    header 'Color Mode'
    header 'Color Temperature'
    header 'Devices'

    entry do
   	  td_command '326'
	  td_command '8bit RGB'
	  td_command  'Warm'
	  name 'iPhone 5'
	  notes 'iPhone 5, 5S, 5C'
    end

    entry do
   	  td_command '326'
	  td_command '8bit RGB'
	  td_command  'Cool'
	  name 'iPhone 4/4S'
	  notes ''
    end

    entry do
   	  td_command '163'
	  td_command '8bit RGB'
	  td_command  'Warm'
	  name 'iPhone & iPod Touch'
	  notes '1st, 2nd and 3rd Generation'
    end

    entry do
   	  td_command '264'
	  td_command '8bit RGB'
	  td_command  'Warm'
	  name 'Retina iPad'
	  notes 'iPad 3, iPad 4, iPad Air'
    end

    entry do
   	  td_command '163'
	  td_command '8bit RGB'
	  td_command  'Warm'
	  name 'iPad Mini'
	  notes ''
    end

    entry do
   	  td_command '326'
	  td_command '8bit RGB'
	  td_command  'Warm'
	  name 'iPad Mini Retina'
	  notes ''
    end

    entry do
   	  td_command '132'
	  td_command '8bit RGB'
	  td_command  'Warm'
	  name 'iPad'
	  notes '1st and 2nd Generation'
    end

  end

# ~~~~~~~~~~~~ Table - App Icons ~~~~~~~~~~~~
  category do
    id 'Dimensions'
    header 'App Icon'
    header 'AppStore Icon'
    header 'Spotlight Icon'
    header 'Settings Icon'
	header 'Device'

    entry do
   	  td_command '120 x 120 px'
	  td_command '1024 x 1024 px'
	  td_command '80 x 80 px'
	  td_command '58 x 58 px'
	  name 'iPhone 5'
	  notes 'iPhone 5, 5S, 5C'
    end

    entry do
   	  td_command '120 x 120 px'
	  td_command '1024 x 1024 px'
	  td_command '80 x 80 px'
	  td_command '58 x 58 px'
	  name 'iPhone 4/4S'
	  notes ''
    end

    entry do
   	  td_command '152 x 152 px'
	  td_command '1024 x 1024 px'
	  td_command '80 x 80 px'
	  td_command '58 x 58 px'
	  name 'Retina iPad'
	  notes 'iPad 3, 4, Air, Mini Retina'
    end

    entry do
   	  td_command '76 x 76 px'
	  td_command '512 x 512 px'
	  td_command '40 x 40 px'
	  td_command '29 x 29 px'
	  name 'iPad Mini'
	  notes ''
    end

    entry do
	  td_command '76 x 76 px'
	  td_command '512 x 512 px'
	  td_command '40 x 40 px'
	  td_command '29 x 29 px'
	  name 'iPad'
	  notes '1st and 2nd Generation'
    end

  end

# ~~~~~~~~~~~~ Table - Common Icons ~~~~~~~~~~~~
  category do
    id 'Commonly used design elements'
    header 'Height of Status Bar'
    header 'Height of Navigation Bar'
    header 'Height of Tab Bar'
    header 'Width of Tables'
	header 'Device'

    entry do
   	  td_command '40 px'
	  td_command '88 / 64 px'
	  td_command '98 px'
	  td_command '640 / 1136 px'
	  name 'iPhone 5'
	  notes 'iPhone 5, 5S, 5C'
    end

    entry do
   	  td_command '40 px'
	  td_command '88 / 64 px'
	  td_command '98 px'
	  td_command '640 / 960 px'
	  name 'iPhone 4/4S'
	  notes ''
    end


    entry do
   	  td_command '40 px'
	  td_command '88 px'
	  td_command '112 px'
	  td_command 'dynamic'
	  name 'Retina iPad'
	  notes 'iPad 3, 4, Air, Mini Retina'
    end

    entry do
   	  td_command '20 px'
	  td_command '44 px'
	  td_command '56 px'
	  td_command 'dynamic'
	  name 'iPad Mini'
	  notes ''
    end

    entry do
   	  td_command '20 px'
	  td_command '44 px'
	  td_command '56 px'
	  td_command 'dynamic'
	  name 'iPad'
	  notes '1st and 2nd Generation'
    end

  end


# ~~~~~~~~~~~~ Table - Common Icons ~~~~~~~~~~~~
  category do
    id 'Default Font Sizes'
 	header 'Default Font Size'
	header 'Default Font Weight'
	header 'Label Type'

    entry do
   	  td_command '34 px'
	  td_command 'Medium'
	  name 'Navigation Bar Title'
	end
	
    entry do
   	  td_command '34 px'
	  td_command 'Light'
	  name 'Regular Buttons'
	end
	
    entry do
   	  td_command '34 px'
	  td_command 'Light'
	  name 'Table Header'
	end
	
    entry do
   	  td_command '28 px'
	  td_command 'Regular'
	  name 'Table Label'
	end
	
    entry do
   	  td_command '20 px'
	  td_command 'Regular'
	  name 'Tab Bar Icon Labels'
	end

  end


# ~~~~~~~~~~~~ Footer ~~~~~~~~~~~~
  notes <<-'END'
  * Based on [iOS7 Cheat Sheet](http://ivomynttinen.com/blog/the-ios-7-design-cheat-sheet) by [Ivo Mynttinen](http://ivomynttinen.com)
  * Converted by [Deepu Mukundan](http://about.me/deepumukundan)
  END

end