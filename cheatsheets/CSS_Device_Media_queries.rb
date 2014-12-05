cheatsheet do
  title 'CSS Device Media Queries'
  docset_file_name 'CSS_Device_Media_queries'
  keyword '@media'

  # A cheat sheet must consist of categories
  category do
    id 'Smartphones'

    entry do
      command '@media only screen and (min-device-width: 320px) and (max-device-width: 480px)'
      name 'portrait and landscape'
    end

    entry do
      command '@media only screen and (min-width: 321px)'
      name 'landscape'
    end

    entry do
      command '@media only screen and (max-width: 320px)'
      name 'portrait'
    end

    entry do
      command '@media only screen and (-webkit-min-device-pixel-ratio: 1.5), ' +
              'only screen (min-device-pixel-ratio: 1.5)'
      name 'iPhone 4'
    end
  end

  category do
    id 'iPads (Tablets)'

    entry do
      command '@media only screen and (min-device-width: 768px) and (max-device-width: 1024px)'
      name 'portrait and landscape'
    end

    entry do
      command '@media only screen and (min-device-width: 768px) and (max-device-width: 1024px) and (orientation: landscape)'
      name 'landscape'
    end

    entry do
      command '@media only screen and (min-device-width: 768px) and (max-device-width: 1024px) and (orientation: portrait)'
      name 'portrait'
    end
  end

  category do
    id 'Other'

    entry do
      command '@media only screen and (min-width: 1224px)'
      name 'desktops and laptops'
    end

    entry do
      command '@media only screen and (min-width: 1824px)'
      name 'large screens'
    end
  end

  notes "* Based on blog post from [css-tricks.com](http://css-tricks.com/snippets/css/media-queries-for-standard-devices/)
* Converted by [@joelash](https://twitter.com/joelash)"

end
