cheatsheet do
  title 'Jasmine-jQuery'
  docset_file_name 'jasmine-jquery'
  keyword 'jasmine-jquery'

  introduction <<-END
A cheatsheet for the jasmine-jquery plugin (https://github.com/velesin/jasmine-jquery)
END

  category do
    id 'jQuery Matchers'

    entry do
      name 'toBeChecked()'
      notes <<-END
only for tags that have checked attribute

```
expect($('<input type="checkbox" checked="checked"/>')).toBeChecked()
```
END
    end

    entry do
      name 'toBeDisabled()'
      notes <<-END
```
expect('<input type="submit" disabled="disabled"/>').toBeDisabled()
```
END
    end

    entry do
      name 'toBeEmpty()'
      notes <<-END
      Checks for child DOM elements or text.
END
    end

    entry do
      name 'toBeFocused()'
      notes <<-END
```
expect($('<input type="text" />').focus()).toBeFocused()
```
END
    end

    entry do
      name 'toBeHidden()'
      notes <<-END
* Elements can be considered hidden for several reasons:
* They have a CSS display value of none.
* They are form elements with type equal to hidden.
* Their width and height are explicitly set to 0.
* An ancestor element is hidden, so the element is not shown on the page.
END
    end

    entry do
      name 'toBeInDOM()'
      notes <<-END
Checks to see if the matched element is attached to the DOM

```
expect($('#id-name')[0]).toBeInDOM()'
```
END
    end

    entry do
      name 'toBeMatchedBy(jQuerySelector)'
      notes <<-END
Check to see if the set of matched elements matches the given selector

```
expect($('<span></span>').addClass('js-something')).toBeMatchedBy('.js-something')
```

true if the dom contains the element
END
    end

    entry do
      name 'toBeSelected()'
      notes <<-END
only for tags that have selected attribute

```
expect($('<option selected="selected"></option>')).toBeSelected()
```
END
    end

    entry do
      name 'toBeVisible()'
      notes <<-END
Elements are considered visible if they consume space in the document. Visible elements have a width or height that is greater than zero.
END
    end

    entry do
      name 'toContainElement(jQuerySelector)'
      notes <<-END
```
expect($('<div><span class="some-class"></span></div>')).toContainElement('span.some-class')
```
END
    end

    entry do
      name 'toContainHtml(string)'
      notes <<-END
```
expect($('<div><ul></ul><h1>header</h1></div>')).toContainHtml('<ul></ul>')
```
END
    end

    entry do
      name 'toContainText(string)'
      notes <<-END
```
expect($('<div><ul></ul><h1>header</h1></div>')).toContainText('header')
```
END
    end

    entry do
      name 'toEqual(jQuerySelector)'
      notes <<-END
```
expect($('<div id="some-id"></div>')).toEqual('div')
```

```
expect($('<div id="some-id"></div>')).toEqual('div#some-id')
```
END
    end

    entry do
      name 'toExist()'
      notes <<-END
true if element exists in or out of the dom
END
    end

    entry do
      name 'toHandle(eventName)'
      notes <<-END
```
expect($form).toHandle("submit")
```
END
    end

    entry do
      name 'toHandleWith(eventName, eventHandler)'
      notes <<-END
```
expect($form).toHandleWith("submit", yourSubmitCallback)
```
END
    end

    entry do
      name 'toHaveAttr(attributeName, attributeValue)'
      notes <<-END
attribute value is optional, if omitted it will check only if attribute exists
END
    end

    entry do
      name 'toHaveBeenTriggeredOn(selector)'
      notes <<-END
if event has been triggered on selector (see "Event Spies", below)
END
    end

    entry do
      name 'toHaveBeenTriggered()'
      notes <<-END
if event has been triggered on selector (see "Event Spies", below)
END
    end

    entry do
      name 'toHaveBeenTriggeredOnAndWith(selector, extraParameters)'
      notes <<-END
if event has been triggered on selector and with extraParameters
END
    end

    entry do
      name 'toHaveBeenPreventedOn(selector)'
      notes <<-END
if event has been prevented on selector (see "Event Spies", below)
END
    end

    entry do
      name 'toHaveBeenPrevented()'
      notes <<-END
if event has been prevented on selector (see "Event Spies", below)
END
    end

    entry do
      name 'toHaveClass(className)'
      notes <<-END
```
expect($('<div class="some-class"></div>')).toHaveClass("some-class")
```
END
    end

    entry do
      name 'toHaveCss(css)'
      notes <<-END
```
expect($('<div style="display: none; margin: 10px;"></div>')).toHaveCss({display: "none", margin: "10px"})
```

```
expect($('<div style="display: none; margin: 10px;"></div>')).toHaveCss({margin: "10px"})
```
END
    end

    entry do
      name 'toHaveData(key, value)'
      notes <<-END
value is optional, if omitted it will check only if an entry for that key exists
END
    end

    entry do
      name 'toHaveHtml(string)'
      notes <<-END
```
expect($('<div><span></span></div>')).toHaveHtml('<span></span>')
```
END
    end

    entry do
      name 'toHaveId(id)'
      notes <<-END
```
expect($('<div id="some-id"></div>')).toHaveId("some-id")
```
END
    end

    entry do
      name 'toHaveLength(value)'
      notes <<-END
```
expect($('ul > li')).toHaveLength(3)
```
END
    end

    entry do
      name 'toHaveProp(propertyName, propertyValue)'
      notes <<-END
property value is optional, if omitted it will check only if property exists
END
    end

    entry do
      name 'toHaveText(string)'
      notes <<-END
accepts a String or regular expression

```
expect($('<div>some text</div>')).toHaveText('some text')
```
END
    end

    entry do
      name 'toHaveValue(value)'
      notes <<-END
only for elements on which val can be called (input, textarea, etc)

```
expect($('<input type="text" value="some text"/>')).toHaveValue('some text')
```
END
    end
  end
end
