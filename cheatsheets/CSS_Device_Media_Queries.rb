cheatsheet do
  title 'CSS Device Media Queries'
  docset_file_name 'CSS_Device_Media_Queries'
  keyword 'media'
  source_url 'http://cheat.kapeli.com'
    
    category do
    id 'Normal Phones'

    entry do
      notes '
      ```css
      @media only screen 
        and (min-device-width: 320px) 
        and (max-device-width: 480px)
      ```'
      name 'Portrait and landscape phones'
    end

    entry do
      notes '
      ```css
      @media only screen 
        and (min-width: 321px)
      ```'
      name 'Landscape phones'
    end

    entry do
      notes '
      ```css
      @media only screen 
        and (max-width: 320px)
      ```'
      name 'Portrait phones'
    end
  end


  category do
  	id 'iPhone4 and iPhone4s'

  	entry do
      notes '
      ```css
      @media only screen 
        and (min-device-width: 320px) 
        and (max-device-width: 480px) 
        and (-webkit-min-device-pixel-ratio: 2)
    ```'
      name 'Portrait and landscape iPhone4 and iPhone4s'
	end

	entry do
  		notes '
  		```css 
      @media only screen  
        and (min-device-width: 320px) 
        and (max-device-width: 480px) 
        and (-webkit-min-device-pixel-ratio: 2) 
        and (orientation: portrait)
	   ```'
		name 'Portrait iPhone4 and iPhone4s'
	end

	entry do
  		notes '
  		```css 
      @media only screen  
        and (min-device-width: 320px) 
        and (max-device-width: 480px) 
        and (-webkit-min-device-pixel-ratio: 2) 
        and (orientation: landscape)
	   ```'
		name 'Landscape iPhone4 and iPhone4s'
	end
  end

      
      category do
  	id 'iPhone5 and iPhone5s'

  	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 320px) 
        and (max-device-width: 568px) 
        and (-webkit-min-device-pixel-ratio: 2)
	   ```'
		name 'Portrait and landscape iPhone5 and iPhone5s'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 320px) 
        and (max-device-width: 568px) 
        and (-webkit-min-device-pixel-ratio: 2) 
        and (orientation: portrait)
	   ```'
		name 'Portrait iPhone5 and iPhone5s'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 320px) 
        and (max-device-width: 568px) 
        and (-webkit-min-device-pixel-ratio: 2) 
        and (orientation: landscape)
	   ```'
		name 'Landscape iPhone5 and iPhone5s'
	end
end

category do
  	id 'iPhone6 and iPhone6s'

  	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 375px) 
        and (max-device-width: 667px) 
        and (-webkit-min-device-pixel-ratio: 2)
	   ```'
		name 'Portrait and landscape iPhone6 and iPhone6s'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 375px) 
        and (max-device-width: 667px) 
        and (-webkit-min-device-pixel-ratio: 2) 
        and (orientation: portrait)
	   ```'
		name 'Portrait iPhone6 and iPhone6s'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 375px) 
        and (max-device-width: 667px) 
        and (-webkit-min-device-pixel-ratio: 2) 
        and (orientation: landscape)
	   ```'
		name 'Landscape iPhone6 and iPhone6s'
	end
end
      
      
      category do
  	id 'iPhone6 Plus and iPhone6s Plus'

  	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 414px) 
        and (max-device-width: 736px) 
        and (-webkit-min-device-pixel-ratio: 3)
	   ```'
		name 'Portrait and landscape iPhone6 Plus and iPhone6s Plus'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 414px) 
        and (max-device-width: 736px) 
        and (-webkit-min-device-pixel-ratio: 3) 
        and (orientation: portrait)
	   ```'
		name 'Portrait iPhone6 Plus and iPhone6s Plus'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 414px) 
        and (max-device-width: 736px) 
        and (-webkit-min-device-pixel-ratio: 3) 
        and (orientation: landscape)
	   ```'
		name 'Landscape iPhone6 Plus and iPhone6s Plus'
	end
end
      
      category do
  	id 'Samsung Galaxy S3'

  	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 320px) 
        and (max-device-width: 640px) 
        and (-webkit-min-device-pixel-ratio: 2)
	   ```'
		name 'Portrait and Landscape Samsung Galaxy S3'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 320px) 
        and (max-device-width: 640px) 
        and (-webkit-min-device-pixel-ratio: 2) 
        and (orientation: portrait)
	   ```'
		name 'Portrait Samsung Galaxy S3'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 320px) 
        and (max-device-width: 640px) 
        and (-webkit-min-device-pixel-ratio: 2) 
        and (orientation: landscape)
	   ```'
		name 'Landscape Samsung Galaxy S3'
	end
end
      
       category do
  	id 'Samsung Galaxy S4'

  	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 320px) 
        and (max-device-width: 640px) 
        and (-webkit-min-device-pixel-ratio: 3)
	   ```'
		name 'Portrait and Landscape Samsung Galaxy S4'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 320px) 
        and (max-device-width: 640px) 
        and (-webkit-min-device-pixel-ratio: 3) 
        and (orientation: portrait)
	   ```'
		name 'Portrait Samsung Galaxy S4'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 320px) 
        and (max-device-width: 640px) 
        and (-webkit-min-device-pixel-ratio: 3) 
        and (orientation: landscape)
	   ```'
		name 'Landscape Samsung Galaxy S4'
	end
end

      
          category do
  	id 'Samsung Galaxy S5'

  	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 360px) 
        and (max-device-width: 640px) 
        and (-webkit-min-device-pixel-ratio: 3)
	   ```'
		name 'Portrait and Landscape Samsung Galaxy S5'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 360px) 
        and (max-device-width: 640px) 
        and (-webkit-min-device-pixel-ratio: 3) 
        and (orientation: portrait)
	   ```'
		name 'Portrait Samsung Galaxy S5'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 360px) 
        and (max-device-width: 640px) 
        and (-webkit-min-device-pixel-ratio: 3) 
        and (orientation: landscape)
	   ```'
		name 'Landscape Samsung Galaxy S5'
	end
end

      category do
          id 'HTC One'

  	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 360px) 
        and (max-device-width: 640px) 
        and (-webkit-min-device-pixel-ratio: 3)
	   ```'
          name 'Portrait and Landscape HTC One'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 360px) 
        and (max-device-width: 640px) 
        and (-webkit-min-device-pixel-ratio: 3) 
        and (orientation: portrait)
	   ```'
		name 'Portrait HTC One'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 360px) 
        and (max-device-width: 640px) 
        and (-webkit-min-device-pixel-ratio: 3) 
        and (orientation: landscape)
	   ```'
        name 'Landscape HTC One'
	end
end
      
      
    category do
        id 'iPad mini 1 iPad 1 iPad 2'

  	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 768px) 
        and (max-device-width: 1024px) 
        and (-webkit-min-device-pixel-ratio: 1)
	   ```'
          name 'Portrait and Landscape iPad mini 1 iPad 1 iPad 2'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 768px) 
        and (max-device-width: 1024px) 
        and (-webkit-min-device-pixel-ratio: 1) 
        and (orientation: portrait)
	   ```'
		name 'Portrait iPad mini 1 iPad 1 iPad 2'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 768px) 
        and (max-device-width: 1024px) 
        and (-webkit-min-device-pixel-ratio: 1) 
        and (orientation: landscape)
	   ```'
        name 'Landscape iPad mini 1 iPad 1 iPad 2'
	end
end      
      
      category do
          id 'iPad mini 2 iPad mini 3 iPad mini 4 iPad 3 iPad 4 iPad Air iPad Air2'

  	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 768px) 
        and (max-device-width: 1024px) 
        and (-webkit-min-device-pixel-ratio: 2)
	   ```'
          name 'Portrait and Landscape iPad mini 2 iPad mini 3 iPad mini 4 iPad 3 iPad 4 iPad Air iPad Air2'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 768px) 
        and (max-device-width: 1024px) 
        and (-webkit-min-device-pixel-ratio: 2) 
        and (orientation: portrait)
	   ```'
		name 'Portrait iPad mini 2 iPad mini 3 iPad mini 4 iPad 3 iPad 4 iPad Air iPad Air2'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 768px) 
        and (max-device-width: 1024px) 
        and (-webkit-min-device-pixel-ratio: 2) 
        and (orientation: landscape)
	   ```'
        name 'Landscape iPad mini 2 iPad mini 3 iPad mini 4 iPad 3 iPad 4 iPad Air iPad Air2'
	end
end
      
      category do
        id 'iPad Pro'

  	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 1024px) 
        and (max-device-width: 1366px) 
        and (-webkit-min-device-pixel-ratio: 2)
	   ```'
          name 'Portrait and Landscape iPad Pro'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 1024px) 
        and (max-device-width: 1366px) 
        and (-webkit-min-device-pixel-ratio: 2) 
        and (orientation: portrait)
	   ```'
		name 'Portrait iPad Pro'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 1024px) 
        and (max-device-width: 1366px) 
        and (-webkit-min-device-pixel-ratio: 2) 
        and (orientation: landscape)
	   ```'
        name 'Landscape iPad Pro'
	end
end    
      
      
      
       category do
          id 'Sumsang Galaxy Tab 10.1'

  	entry do
  		notes '
  		```css 
      @media (min-device-width: 800px) 
        and (max-device-width: 1280px) 
	   ```'
          name 'Portrait and Landscape Sumsang Galaxy Tab 10.1'
	end

	entry do
  		notes '
  		```css 
      @media (min-device-width: 800px) 
        and (max-device-width: 1280px) 
        and (orientation: portrait)
	   ```'
		name 'Portrait Sumsang Galaxy Tab 10.1'
	end

	entry do
  		notes '
  		```css 
      @media (min-device-width: 800px) 
        and (max-device-width: 1280px) 
        and (orientation: landscape)
	   ```'
        name 'Landscape Sumsang Galaxy Tab 10.1'
	end
end  
      
      
    category do
        id 'Asus Nexus 7'

  	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 601px) 
        and (max-device-width: 906px) 
        and (-webkit-min-device-pixel-ratio: 1.331) 
        and (-webkit-max-device-pixel-ratio: 1.332)
	   ```'
          name 'Portrait and Landscape Asus Nexus 7'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 601px) 
        and (max-device-width: 906px) 
        and (-webkit-min-device-pixel-ratio: 1.331) 
        and (-webkit-max-device-pixel-ratio: 1.332) 
        and (orientation: portrait)
	   ```'
		name 'Portrait Asus Nexus 7'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 601px) 
        and (max-device-width: 906px) 
        and (-webkit-min-device-pixel-ratio: 1.331) 
        and (-webkit-max-device-pixel-ratio: 1.332) 
        and (orientation: landscape)
	   ```'
        name 'Landscape Asus Nexus 7'
	end
end
      
      category do
          id 'Kindle Fire HD 7"'

  	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 800px) 
        and (max-device-width: 1280px) 
        and (-webkit-min-device-pixel-ratio: 1.5) 
	   ```'
          name 'Portrait and Landscape Kindle Fire HD 7"'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 800px) 
        and (max-device-width: 1280px) 
        and (-webkit-min-device-pixel-ratio: 1.5) 
        and and (orientation: portrait)
	   ```'
		name 'Portrait Kindle Fire HD 7"'
	end

	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 800px) 
        and (max-device-width: 1280px) 
        and (-webkit-min-device-pixel-ratio: 1.5)  
        and (orientation: landscape)
	   ```'
        name 'Landscape Kindle Fire HD 7"'
	end
end

category do
          id 'Kindle Fire HD 8.9"'

  	entry do
  		notes '
  		```css 
      @media only screen 
        and (min-device-width: 1200px) 
        and (max-device-width: 1600px) 
        and (-webkit-min-device-pixel-ratio: 1.5) 
	   ```'
        name 'Portrait and Landscape Kindle Fire HD 8.9"'
	end

	entry do
  		notes '
  		```css 
      @media only screen  
        and (min-device-width: 1200px) 
        and (max-device-width: 1600px) 
        and (-webkit-min-device-pixel-ratio: 1.5) 
        and and (orientation: portrait)
	   ```'
        name 'Portrait Kindle Fire HD 8.9"'
	end

	entry do
  		notes '
  		```css 
      @media only screen  
        and (min-device-width: 1200px) 
        and (max-device-width: 1600px) 
        and (-webkit-min-device-pixel-ratio: 1.5)  
        and (orientation: landscape)
	   ```'
        name 'Landscape Kindle Fire HD 8.9"'
	end
end       
    
      
category do
      id 'Desktops and laptops'

  	entry do
  		notes '
  		```css 
      @media only screen  
        and (min-device-width: 1200px) 
        and (max-device-width: 1600px) 
        and (-webkit-min-device-pixel-ratio: 1) 
    ```'
        name 'Non-Retina Screens'
	end

  	entry do
  		notes '
  		```css  
      @media only screen 
        and (min-device-width: 1200px) 
        and (max-device-width: 1600px) 
        and (-webkit-min-device-pixel-ratio: 2) 
        and (min-resolution: 192dpi) 
    ```'
          name 'Retina Screens'
	end  
    entry do
      notes '
      ```css
      @media only screen 
        and (min-width: 1224px)
    ```'
      name 'Desktops and laptops'
    end
    
     entry do
      notes '
      ```css
      @media only screen 
        and (min-width: 1824px)
    ```'
      name 'Large screens'
    end
    
    
end      
      
category do
      id 'Apple Watch'

  	entry do
  		notes '
  		```css 
      @media (max-device-width: 42mm) 
        and (min-device-width: 38mm) 
    ```'
        name 'Apple Watch'
	end  
end
      
  category do
      id 'Moto 360 Watch'

  	entry do
  		notes '
  		```css 
      @media (max-device-width: 218px) 
        and (min-device-width: 281px) 
    ```'
          name 'Moto 360 Watch'
	end      
  end   
      

  
  notes "* Based on a blog post from [css-tricks.com](http://css-tricks.com/snippets/css/media-queries-for-standard-devices/)
* Converted by [@joelash](https://twitter.com/joelash)"

end
