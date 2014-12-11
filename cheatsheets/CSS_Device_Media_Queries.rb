cheatsheet do
  title 'CSS Device Media Queries'
  docset_file_name 'CSS_Device_Media_Queries'
  keyword 'media'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Phones'

    entry do
      notes '
      ```css
      @media only screen and (min-device-width: 320px) and (max-device-width: 480px)
      ```'
      name 'Portrait and landscape phones'
    end

    entry do
      notes '
      ```css
      @media only screen and (min-width: 321px)
      ```'
      name 'Landscape phones'
    end

    entry do
      notes '
      ```css
      @media only screen and (max-width: 320px)
      ```'
      name 'Portrait phones'
    end

    entry do
      notes '
      ```css
      @media only screen and (-webkit-min-device-pixel-ratio: 1.5), ' +
              'only screen (min-device-pixel-ratio: 1.5)
      ```'
      name 'iPhone 4'
    end
  end

  category do
    id 'iPads (Tablets)'

    entry do
      notes '
      ```css
      @media only screen and (min-device-width: 768px) and (max-device-width: 1024px)
      ```'
      name 'Portrait and landscape tablets'
    end

    entry do
      notes '
      ```css
      @media only screen and (min-device-width: 768px) and (max-device-width: 1024px) and (orientation: landscape)
      ```'
      name 'Landscape tablets'
    end

    entry do
      notes '
      ```css
      @media only screen and (min-device-width: 768px) and (max-device-width: 1024px) and (orientation: portrait)
      ```'
      name 'Portrait tablets'
    end
  end

  category do
    id 'Other'

    entry do
      notes '
      ```css
      @media only screen and (min-width: 1224px)
      ```'
      name 'Desktops and laptops'
    end

    entry do
      notes '
      ```css
      @media only screen and (min-width: 1824px)
      ```'
      name 'Large screens'
    end
  end

  notes "* Based on a blog post from [css-tricks.com](http://css-tricks.com/snippets/css/media-queries-for-standard-devices/)
* Converted by [@joelash](https://twitter.com/joelash)"

end
