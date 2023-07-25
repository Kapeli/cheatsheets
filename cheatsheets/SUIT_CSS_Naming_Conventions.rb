cheatsheet do
  title 'SUIT CSS Naming Conventions'
  docset_file_name 'SUIT_CSS_Naming_Conventions'
  keyword 'suitcss'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Naming conventions'

    entry do
      name 'Utilities'
      notes '`u-[sm-|md-|lg-]<utilityName>`'
    end

    entry do
      name 'Components'
      notes '`[<namespace>-]<ComponentName>[-descendentName][--modifierName]`'
    end

    entry do
      name 'States'
      notes '`ComponentName.is-<stateOfComponent>`'
    end

    entry do
      name 'Variables'
      notes '`--ComponentName[-descendant|--modifier][-onState]-(cssProperty|variableName)`'
    end

    entry do
      name 'Theme Variables'
      notes '`--variableName`'
    end
  end
end
