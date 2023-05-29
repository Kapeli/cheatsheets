cheatsheet do
  title 'SUIT CSS Naming Conventions'
  docset_file_name 'suitcss-naming-conventions'
  keyword 'suitcss'

  introduction <<-'END'
      *SUIT CSS naming conventions, from [the official repo](https://github.com/suitcss/suit/blob/master/doc/naming-conventions.md).*

      SUIT CSS relies on *structured class names* and *meaningful hyphens* (i.e., not using hyphens merely to separate words). This helps to work around the current limits of applying CSS to the DOM (i.e., the lack of style encapsulation), and to better communicate the relationships between classes.
    END

  category do
    id 'Utilities'

    entry do
      name 'Utility Syntax'
      notes '`u-[sm-|md-|lg-]<utilityName>`'
    end
  end

  category do
    id 'Components'

    entry do
      name 'Component Syntax'
      notes '`[<namespace>-]<ComponentName>[-descendentName][--modifierName]`'
    end

    entry do
      name 'namespace (optional)'
      notes <<-'END'
        Example:
        ```css
          .twt-Buttons { /* ... */ }
          .twt-Tabs { /* ... */ }
        ```
      END
    end

    entry do
      name 'ComponentName'
      notes <<-'END'
        Example:
        ```css
          .MyComponent { /* ... */ }
        ```
        ```html
          <article class="MyComponent">
            ...
          </article>
        ```
      END
    end

    entry do 
      name 'ComponentName--modifierName'
      notes <<-'END'
        Example:
        ```css
          /* Core button */
          .Button { /* … */ }
          /* Default button style */
          .Button--default { /* … */ }
        ```

        ```html
          <button class="Button Button--default" type="button">…</button>
        ```
      END
    end

    entry do
      name 'ComponentName-descendentName'
      notes <<-'END'
        Example:
        ```html
          <article class="Tweet">
            <header class="Tweet-header">
              <img class="Tweet-avatar" src="{{src}}" alt="{{alt}}">
              …
            </header>
            <div class="Tweet-bodyText">
              …
            </div>
          </article>
        ```
      END
    end

    entry do
      name 'ComponentName.is-stateOfComponent'
      notes <<-'END'
        Example:
        ```css
          .Tweet { /* … */ }
          .Tweet.is-expanded { /* … */ }
        ```

        ```html
          <article class="Tweet is-expanded">
            …
          </article>
        ```
      END
    end
  end

  category do
    id 'Variables'

    entry do
      name 'Variable Syntax'
      notes '`--ComponentName[-descendant|--modifier][-onState]-(cssProperty|variableName)`'
    end

    entry do
      name 'Theme Variables'
      notes <<-'END'
        Non-component variables must be written in camel case. For shared use, they should be authored in a `theme.css` file.

        Example:
        ```css
          :root {
            --fontSize: 16px;
            --fontFamily: sans-serif;
            --lineHeight: 1.4;
          }
        ```
      END
    end
  end
end
