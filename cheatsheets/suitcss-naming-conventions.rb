cheatsheet do
  title 'SUIT CSS Naming Conventions'
  docset_file_name 'suitcss-naming-conventions'
  keyword 'suitcss'

  introduction '*SUIT CSS naming conventions, from [the official repo](https://github.com/suitcss/suit/blob/master/doc/naming-conventions.md).'

  category do
    id 'Naming conventions'

    entry do
      name 'Utility Syntax'
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
      name 'Variable Syntax'
      notes '`--ComponentName[-descendant|--modifier][-onState]-(cssProperty|variableName)`'
    end
  end
end
