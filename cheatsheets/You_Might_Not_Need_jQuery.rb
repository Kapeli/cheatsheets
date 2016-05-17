
cheatsheet do
  title 'You Might Not Need jQuery'
  docset_file_name 'You_Might_Not_Need_jQuery'
  keyword 'nojq'
  source_url 'http://cheat.kapeli.com'
  category do
    id 'AJAX'
    entry do
      index_name 'AJAX Alternatives'
      notes <<-'END'
Alternatives: [reqwest]( https://github.com/ded/Reqwest) [then-request]( https://github.com/then/request) [superagent]( https://github.com/visionmedia/superagent) []() 
END

    end
    entry do
      name 'JSON'
      notes <<-'END'
#### jQuery

```javascript

$.getJSON('/my/url', function(data) {

});


```
#### IE8+

```javascript

var request = new XMLHttpRequest();
request.open('GET', '/my/url', true);

request.onreadystatechange = function() {
  if (this.readyState === 4) {
    if (this.status >= 200 && this.status < 400) {
      // Success!
      var data = JSON.parse(this.responseText);
    } else {
      // Error :(
    }
  }
};

request.send();
request = null;


```
#### IE9+

```javascript

var request = new XMLHttpRequest();
request.open('GET', '/my/url', true);

request.onload = function() {
  if (request.status >= 200 && request.status < 400) {
    // Success!
    var data = JSON.parse(request.responseText);
  } else {
    // We reached our target server, but it returned an error

  }
};

request.onerror = function() {
  // There was a connection error of some sort
};

request.send();


```
#### IE10+

```javascript

var request = new XMLHttpRequest();
request.open('GET', '/my/url', true);

request.onload = function() {
  if (this.status >= 200 && this.status < 400) {
    // Success!
    var data = JSON.parse(this.response);
  } else {
    // We reached our target server, but it returned an error

  }
};

request.onerror = function() {
  // There was a connection error of some sort
};

request.send();


```

END
    end
    entry do
      name 'Post'
      notes <<-'END'
#### jQuery

```javascript

$.ajax({
  type: 'POST',
  url: '/my/url',
  data: data
});


```
#### IE8+

```javascript

var request = new XMLHttpRequest();
request.open('POST', '/my/url', true);
request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');
request.send(data);


```

END
    end
    entry do
      name 'Request'
      notes <<-'END'
#### jQuery

```javascript

$.ajax({
  type: 'GET',
  url: '/my/url',
  success: function(resp) {

  },
  error: function() {

  }
});


```
#### IE8+

```javascript

var request = new XMLHttpRequest();
request.open('GET', '/my/url', true);

request.onreadystatechange = function() {
  if (this.readyState === 4) {
    if (this.status >= 200 && this.status < 400) {
      // Success!
      var resp = this.responseText;
    } else {
      // Error :(
    }
  }
};

request.send();
request = null;


```
#### IE9+

```javascript

var request = new XMLHttpRequest();
request.open('GET', '/my/url', true);

request.onload = function() {
  if (request.status >= 200 && request.status < 400) {
    // Success!
    var resp = request.responseText;
  } else {
    // We reached our target server, but it returned an error

  }
};

request.onerror = function() {
  // There was a connection error of some sort
};

request.send();


```
#### IE10+

```javascript

var request = new XMLHttpRequest();
request.open('GET', '/my/url', true);

request.onload = function() {
  if (this.status >= 200 && this.status < 400) {
    // Success!
    var resp = this.response;
  } else {
    // We reached our target server, but it returned an error

  }
};

request.onerror = function() {
  // There was a connection error of some sort
};

request.send();


```

END
    end
  end
  category do
    id 'Effects'
    entry do
      index_name 'Effects Alternatives'
      notes <<-'END'
Alternatives: [animate.css]( http://daneden.github.io/animate.css/) [move.js]( https://github.com/visionmedia/move.js) []() 
END

    end
    entry do
      name 'Fade In'
      notes <<-'END'
#### jQuery

```javascript

$(el).fadeIn();


```
#### IE8+

```javascript

function fadeIn(el) {
  var opacity = 0;

  el.style.opacity = 0;
  el.style.filter = '';

  var last = +new Date();
  var tick = function() {
    opacity += (new Date() - last) / 400;
    el.style.opacity = opacity;
    el.style.filter = 'alpha(opacity=' + (100 * opacity)|0 + ')';

    last = +new Date();

    if (opacity < 1) {
      (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 16);
    }
  };

  tick();
}

fadeIn(el);


```
#### IE9+

```javascript

function fadeIn(el) {
  el.style.opacity = 0;

  var last = +new Date();
  var tick = function() {
    el.style.opacity = +el.style.opacity + (new Date() - last) / 400;
    last = +new Date();

    if (+el.style.opacity < 1) {
      (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 16);
    }
  };

  tick();
}

fadeIn(el);


```
#### IE10+

```javascript

el.classList.add('show');
el.classList.remove('hide');


```

END
    end
    entry do
      name 'Hide'
      notes <<-'END'
#### jQuery

```javascript

$(el).hide();


```
#### IE8+

```javascript

el.style.display = 'none';


```

END
    end
    entry do
      name 'Show'
      notes <<-'END'
#### jQuery

```javascript

$(el).show();


```
#### IE8+

```javascript

el.style.display = '';


```

END
    end
  end
  category do
    id 'Elements'
    entry do
      index_name 'Elements Alternatives'
      notes <<-'END'
Alternatives: [bonzo]( https://github.com/ded/bonzo) [$dom]( https://github.com/julienw/dollardom) []() 
END

    end
    entry do
      name 'Add Class'
      notes <<-'END'
#### jQuery

```javascript

$(el).addClass(className);


```
#### IE8+

```javascript

if (el.classList)
  el.classList.add(className);
else
  el.className += ' ' + className;


```
#### IE10+

```javascript

el.classList.add(className);


```

END
    end
    entry do
      name 'After'
      notes <<-'END'
#### jQuery

```javascript

$(el).after(htmlString);


```
#### IE8+

```javascript

el.insertAdjacentHTML('afterend', htmlString);


```

END
    end
    entry do
      name 'Append'
      notes <<-'END'
#### jQuery

```javascript

$(parent).append(el);


```
#### IE8+

```javascript

parent.appendChild(el);


```

END
    end
    entry do
      name 'Before'
      notes <<-'END'
#### jQuery

```javascript

$(el).before(htmlString);


```
#### IE8+

```javascript

el.insertAdjacentHTML('beforebegin', htmlString);


```

END
    end
    entry do
      name 'Children'
      notes <<-'END'
#### jQuery

```javascript

$(el).children();


```
#### IE8+

```javascript

var children = [];
for (var i = el.children.length; i--;) {
  // Skip comment nodes on IE8
  if (el.children[i].nodeType != 8)
    children.unshift(el.children[i]);
}


```
#### IE9+

```javascript

el.children


```

END
    end
    entry do
      name 'Clone'
      notes <<-'END'
#### jQuery

```javascript

$(el).clone();


```
#### IE8+

```javascript

el.cloneNode(true);


```

END
    end
    entry do
      name 'Contains'
      notes <<-'END'
#### jQuery

```javascript

$.contains(el, child);


```
#### IE8+

```javascript

el !== child && el.contains(child);


```

END
    end
    entry do
      name 'Contains Selector'
      notes <<-'END'
#### jQuery

```javascript

$(el).find(selector).length;


```
#### IE8+

```javascript

el.querySelector(selector) !== null


```

END
    end
    entry do
      name 'Each'
      notes <<-'END'
#### jQuery

```javascript

$(selector).each(function(i, el){

});


```
#### IE8+

```javascript

function forEachElement(selector, fn) {
  var elements = document.querySelectorAll(selector);
  for (var i = 0; i < elements.length; i++)
    fn(elements[i], i);
}

forEachElement(selector, function(el, i){

});


```
#### IE9+

```javascript

var elements = document.querySelectorAll(selector);
Array.prototype.forEach.call(elements, function(el, i){

});


```

END
    end
    entry do
      name 'Empty'
      notes <<-'END'
#### jQuery

```javascript

$(el).empty();


```
#### IE8+

```javascript

while(el.firstChild)
  el.removeChild(el.firstChild);


```
#### IE9+

```javascript

el.innerHTML = '';


```

END
    end
    entry do
      name 'Filter'
      notes <<-'END'
#### jQuery

```javascript

$(selector).filter(filterFn);


```
#### IE8+

```javascript

function filter(selector, filterFn) {
  var elements = document.querySelectorAll(selector);
  var out = [];
  for (var i = elements.length; i--;) {
    if (filterFn(elements[i]))
      out.unshift(elements[i]);
  }
  return out;
}

filter(selector, filterFn);


```
#### IE9+

```javascript

Array.prototype.filter.call(document.querySelectorAll(selector), filterFn);


```

END
    end
    entry do
      name 'Find Children'
      notes <<-'END'
#### jQuery

```javascript

$(el).find(selector);


```
#### IE8+

```javascript

el.querySelectorAll(selector);


```

END
    end
    entry do
      name 'Find Elements'
      notes <<-'END'



Alternatives: [qwery]( https://github.com/ded/qwery) [sizzle]( http://sizzlejs.com/) []() 
#### jQuery

```javascript

$('.my #awesome selector');


```
#### IE8+

```javascript

document.querySelectorAll('.my #awesome selector');


```

END
    end
    entry do
      name 'Get Attributes'
      notes <<-'END'
#### jQuery

```javascript

$(el).attr('tabindex');


```
#### IE8+

```javascript

el.getAttribute('tabindex');


```

END
    end
    entry do
      name 'Get Html'
      notes <<-'END'
#### jQuery

```javascript

$(el).html();


```
#### IE8+

```javascript

el.innerHTML


```

END
    end
    entry do
      name 'Get Outer Html'
      notes <<-'END'
#### jQuery

```javascript

$('<div>').append($(el).clone()).html();


```
#### IE8+

```javascript

el.outerHTML


```

END
    end
    entry do
      name 'Get Style'
      notes <<-'END'
#### jQuery

```javascript

$(el).css(ruleName);


```
#### IE8+

```javascript

// Varies based on the properties being retrieved, some can be retrieved from el.currentStyle
// https://github.com/jonathantneal/Polyfills-for-IE8/blob/master/getComputedStyle.js


```
#### IE9+

```javascript

getComputedStyle(el)[ruleName];


```

END
    end
    entry do
      name 'Get Text'
      notes <<-'END'
#### jQuery

```javascript

$(el).text();


```
#### IE8+

```javascript

el.textContent || el.innerText


```
#### IE9+

```javascript

el.textContent


```

END
    end
    entry do
      name 'Has Class'
      notes <<-'END'
#### jQuery

```javascript

$(el).hasClass(className);


```
#### IE8+

```javascript

if (el.classList)
  el.classList.contains(className);
else
  new RegExp('(^| )' + className + '( |$)', 'gi').test(el.className);


```
#### IE10+

```javascript

el.classList.contains(className);


```

END
    end
    entry do
      name 'Matches'
      notes <<-'END'
#### jQuery

```javascript

$(el).is($(otherEl));


```
#### IE8+

```javascript

el === otherEl


```

END
    end
    entry do
      name 'Matches Selector'
      notes <<-'END'
#### jQuery

```javascript

$(el).is('.my-class');


```
#### IE8+

```javascript

var matches = function(el, selector) {
  var _matches = (el.matches || el.matchesSelector || el.msMatchesSelector || el.mozMatchesSelector || el.webkitMatchesSelector || el.oMatchesSelector);

  if (_matches) {
    return _matches.call(el, selector);
  } else {
    var nodes = el.parentNode.querySelectorAll(selector);
    for (var i = nodes.length; i--;) {
      if (nodes[i] === el)
        return true;
    }
    return false;
  }
};

matches(el, '.my-class');


```
#### IE9+

```javascript

var matches = function(el, selector) {
  return (el.matches || el.matchesSelector || el.msMatchesSelector || el.mozMatchesSelector || el.webkitMatchesSelector || el.oMatchesSelector).call(el, selector);
};

matches(el, '.my-class');


```

END
    end
    entry do
      name 'Next'
      notes <<-'END'
#### jQuery

```javascript

$(el).next();


```
#### IE8+

```javascript

// nextSibling can include text nodes
function nextElementSibling(el) {
  do { el = el.nextSibling; } while ( el && el.nodeType !== 1 );
  return el;
}

el.nextElementSibling || nextElementSibling(el);


```
#### IE9+

```javascript

el.nextElementSibling


```

END
    end
    entry do
      name 'Offset'
      notes <<-'END'
#### jQuery

```javascript

$(el).offset();


```
#### IE8+

```javascript

var rect = el.getBoundingClientRect();

{
  top: rect.top + document.body.scrollTop,
  left: rect.left + document.body.scrollLeft
}


```

END
    end
    entry do
      name 'Offset Parent'
      notes <<-'END'
#### jQuery

```javascript

$(el).offsetParent();


```
#### IE8+

```javascript

el.offsetParent || el


```

END
    end
    entry do
      name 'Outer Height'
      notes <<-'END'
#### jQuery

```javascript

$(el).outerHeight();


```
#### IE8+

```javascript

el.offsetHeight


```

END
    end
    entry do
      name 'Outer Height With Margin'
      notes <<-'END'
#### jQuery

```javascript

$(el).outerHeight(true);


```
#### IE8+

```javascript

function outerHeight(el) {
  var height = el.offsetHeight;
  var style = el.currentStyle || getComputedStyle(el);

  height += parseInt(style.marginTop) + parseInt(style.marginBottom);
  return height;
}

outerHeight(el);


```
#### IE9+

```javascript

function outerHeight(el) {
  var height = el.offsetHeight;
  var style = getComputedStyle(el);

  height += parseInt(style.marginTop) + parseInt(style.marginBottom);
  return height;
}

outerHeight(el);


```

END
    end
    entry do
      name 'Outer Width'
      notes <<-'END'
#### jQuery

```javascript

$(el).outerWidth();


```
#### IE8+

```javascript

el.offsetWidth


```

END
    end
    entry do
      name 'Outer Width With Margin'
      notes <<-'END'
#### jQuery

```javascript

$(el).outerWidth(true);


```
#### IE8+

```javascript

function outerWidth(el) {
  var width = el.offsetWidth;
  var style = el.currentStyle || getComputedStyle(el);

  width += parseInt(style.marginLeft) + parseInt(style.marginRight);
  return width;
}

outerWidth(el);


```
#### IE9+

```javascript

function outerWidth(el) {
  var width = el.offsetWidth;
  var style = getComputedStyle(el);

  width += parseInt(style.marginLeft) + parseInt(style.marginRight);
  return width;
}

outerWidth(el);


```

END
    end
    entry do
      name 'Parent'
      notes <<-'END'
#### jQuery

```javascript

$(el).parent();


```
#### IE8+

```javascript

el.parentNode


```

END
    end
    entry do
      name 'Position'
      notes <<-'END'
#### jQuery

```javascript

$(el).position();


```
#### IE8+

```javascript

{left: el.offsetLeft, top: el.offsetTop}


```

END
    end
    entry do
      name 'Position Relative To Viewport'
      notes <<-'END'
#### jQuery

```javascript

var offset = el.offset();

{
  top: offset.top - document.body.scrollTop,
  left: offset.left - document.body.scrollLeft
}


```
#### IE8+

```javascript

el.getBoundingClientRect()


```

END
    end
    entry do
      name 'Prepend'
      notes <<-'END'
#### jQuery

```javascript

$(parent).prepend(el);


```
#### IE8+

```javascript

parent.insertBefore(el, parent.firstChild);


```

END
    end
    entry do
      name 'Prev'
      notes <<-'END'
#### jQuery

```javascript

$(el).prev();


```
#### IE8+

```javascript

// prevSibling can include text nodes
function previousElementSibling(el) {
  do { el = el.previousSibling; } while ( el && el.nodeType !== 1 );
  return el;
}

el.previousElementSibling || previousElementSibling(el);


```
#### IE9+

```javascript

el.previousElementSibling


```

END
    end
    entry do
      name 'Remove'
      notes <<-'END'
#### jQuery

```javascript

$(el).remove();


```
#### IE8+

```javascript

el.parentNode.removeChild(el);


```

END
    end
    entry do
      name 'Remove Class'
      notes <<-'END'
#### jQuery

```javascript

$(el).removeClass(className);


```
#### IE8+

```javascript

if (el.classList)
  el.classList.remove(className);
else
  el.className = el.className.replace(new RegExp('(^|\\b)' + className.split(' ').join('|') + '(\\b|$)', 'gi'), ' ');


```
#### IE10+

```javascript

el.classList.remove(className);


```

END
    end
    entry do
      name 'Replace From Html'
      notes <<-'END'
#### jQuery

```javascript

$(el).replaceWith(string);


```
#### IE8+

```javascript

el.outerHTML = string;


```

END
    end
    entry do
      name 'Set Attributes'
      notes <<-'END'
#### jQuery

```javascript

$(el).attr('tabindex', 3);


```
#### IE8+

```javascript

el.setAttribute('tabindex', 3);


```

END
    end
    entry do
      name 'Set Html'
      notes <<-'END'
#### jQuery

```javascript

$(el).html(string);


```
#### IE8+

```javascript

el.innerHTML = string;


```

END
    end
    entry do
      name 'Set Style'
      notes <<-'END'
#### jQuery

```javascript

$(el).css('border-width', '20px');


```
#### IE8+

```javascript

// Use a class if possible
el.style.borderWidth = '20px';


```

END
    end
    entry do
      name 'Set Text'
      notes <<-'END'
#### jQuery

```javascript

$(el).text(string);


```
#### IE8+

```javascript

if (el.textContent !== undefined)
  el.textContent = string;
else
  el.innerText = string;


```
#### IE9+

```javascript

el.textContent = string;


```

END
    end
    entry do
      name 'Siblings'
      notes <<-'END'
#### jQuery

```javascript

$(el).siblings();


```
#### IE8+

```javascript

var siblings = Array.prototype.slice.call(el.parentNode.children);

for (var i = siblings.length; i--;) {
  if (siblings[i] === el) {
    siblings.splice(i, 1);
    break;
  }
}


```
#### IE9+

```javascript

Array.prototype.filter.call(el.parentNode.children, function(child){
  return child !== el;
});


```

END
    end
    entry do
      name 'Toggle Class'
      notes <<-'END'
#### jQuery

```javascript

$(el).toggleClass(className);


```
#### IE8+

```javascript

if (el.classList) {
  el.classList.toggle(className);
} else {
    var classes = el.className.split(' ');
    var existingIndex = -1;
    for (var i = classes.length; i--;) {
      if (classes[i] === className)
        existingIndex = i;
    }

    if (existingIndex >= 0)
      classes.splice(existingIndex, 1);
    else
      classes.push(className);

  el.className = classes.join(' ');
}


```
#### IE9+

```javascript

if (el.classList) {
  el.classList.toggle(className);
} else {
  var classes = el.className.split(' ');
  var existingIndex = classes.indexOf(className);

  if (existingIndex >= 0)
    classes.splice(existingIndex, 1);
  else
    classes.push(className);

  el.className = classes.join(' ');
}


```
#### IE10+

```javascript

el.classList.toggle(className);


```

END
    end
  end
  category do
    id 'Events'
    entry do
      name 'Off'
      notes <<-'END'
#### jQuery

```javascript

$(el).off(eventName, eventHandler);


```
#### IE8+

```javascript

function removeEventListener(el, eventName, handler) {
  if (el.removeEventListener)
    el.removeEventListener(eventName, handler);
  else
    el.detachEvent('on' + eventName, handler);
}

removeEventListener(el, eventName, handler);


```
#### IE9+

```javascript

el.removeEventListener(eventName, eventHandler);


```

END
    end
    entry do
      name 'On'
      notes <<-'END'
#### jQuery

```javascript

$(el).on(eventName, eventHandler);


```
#### IE8+

```javascript

function addEventListener(el, eventName, handler) {
  if (el.addEventListener) {
    el.addEventListener(eventName, handler);
  } else {
    el.attachEvent('on' + eventName, function(){
      handler.call(el);
    });
  }
}

addEventListener(el, eventName, handler);


```
#### IE9+

```javascript

el.addEventListener(eventName, eventHandler);


```

END
    end
    entry do
      name 'Ready'
      notes <<-'END'
#### jQuery

```javascript

$(document).ready(function(){

});


```
#### IE8+

```javascript

function ready(fn) {
  if (document.readyState != 'loading'){
    fn();
  } else if (document.addEventListener) {
    document.addEventListener('DOMContentLoaded', fn);
  } else {
    document.attachEvent('onreadystatechange', function() {
      if (document.readyState != 'loading')
        fn();
    });
  }
}


```
#### IE9+

```javascript

function ready(fn) {
  if (document.readyState != 'loading'){
    fn();
  } else {
    document.addEventListener('DOMContentLoaded', fn);
  }
}


```

END
    end
    entry do
      name 'Trigger Custom'
      notes <<-'END'



Alternatives: [EventEmitter]( https://github.com/Wolfy87/EventEmitter) [Vine]( https://github.com/arextar/Vine) [microevent]( https://github.com/jeromeetienne/microevent.js) []() 
#### jQuery

```javascript

$(el).trigger('my-event', {some: 'data'});


```
#### IE8+

```javascript

// Custom events are not natively supported, so you have to hijack a random
// event.
//
// Just use jQuery.


```
#### IE9+

```javascript

if (window.CustomEvent) {
  var event = new CustomEvent('my-event', {detail: {some: 'data'}});
} else {
  var event = document.createEvent('CustomEvent');
  event.initCustomEvent('my-event', true, true, {some: 'data'});
}

el.dispatchEvent(event);


```

END
    end
    entry do
      name 'Trigger Native'
      notes <<-'END'
#### jQuery

```javascript

$(el).trigger('change');


```
#### IE8+

```javascript

if (document.createEvent) {
  var event = document.createEvent('HTMLEvents');
  event.initEvent('change', true, false);
  el.dispatchEvent(event);
} else {
  el.fireEvent('onchange');
}


```
#### IE9+

```javascript

// For a full list of event types: https://developer.mozilla.org/en-US/docs/Web/API/document.createEvent
var event = document.createEvent('HTMLEvents');
event.initEvent('change', true, false);
el.dispatchEvent(event);


```

END
    end
  end
  category do
    id 'Utils'
    entry do
      name 'Array Each'
      notes <<-'END'
#### jQuery

```javascript

$.each(array, function(i, item){

});


```
#### IE8+

```javascript

function forEach(array, fn) {
  for (var i = 0; i < array.length; i++)
    fn(array[i], i);
}

forEach(array, function(item, i){

});


```
#### IE9+

```javascript

array.forEach(function(item, i){

});


```

END
    end
    entry do
      name 'Bind'
      notes <<-'END'
#### jQuery

```javascript

$.proxy(fn, context);


```
#### IE8+

```javascript

fn.apply(context, arguments);


```
#### IE9+

```javascript

fn.bind(context);


```

END
    end
    entry do
      name 'Deep Extend'
      notes <<-'END'
#### jQuery

```javascript

$.extend(true, {}, objA, objB);


```
#### IE8+

```javascript

var deepExtend = function(out) {
  out = out || {};

  for (var i = 1; i < arguments.length; i++) {
    var obj = arguments[i];

    if (!obj)
      continue;

    for (var key in obj) {
      if (obj.hasOwnProperty(key)) {
        if (typeof obj[key] === 'object')
          out[key] = deepExtend(out[key], obj[key]);
        else
          out[key] = obj[key];
      }
    }
  }

  return out;
};

deepExtend({}, objA, objB);


```

END
    end
    entry do
      name 'Extend'
      notes <<-'END'



Alternatives: [lo-dash]( http://lodash.com/docs#assign) [underscore]( http://underscorejs.org/#extend) [ECMA6]( http://www.2ality.com/2014/01/object-assign.html) []() 
#### jQuery

```javascript

$.extend({}, objA, objB);


```
#### IE8+

```javascript

var extend = function(out) {
  out = out || {};

  for (var i = 1; i < arguments.length; i++) {
    if (!arguments[i])
      continue;

    for (var key in arguments[i]) {
      if (arguments[i].hasOwnProperty(key))
        out[key] = arguments[i][key];
    }
  }

  return out;
};

extend({}, objA, objB);


```

END
    end
    entry do
      name 'Index Of'
      notes <<-'END'
#### jQuery

```javascript

$.inArray(item, array);


```
#### IE8+

```javascript

function indexOf(array, item) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] === item)
      return i;
  }
  return -1;
}

indexOf(array, item);


```
#### IE9+

```javascript

array.indexOf(item);


```

END
    end
    entry do
      name 'Is Array'
      notes <<-'END'
#### jQuery

```javascript

$.isArray(arr);


```
#### IE8+

```javascript

isArray = Array.isArray || function(arr) {
  return Object.prototype.toString.call(arr) == '[object Array]';
};

isArray(arr);


```
#### IE9+

```javascript

Array.isArray(arr);


```

END
    end
    entry do
      name 'Map'
      notes <<-'END'
#### jQuery

```javascript

$.map(array, function(value, index){

});


```
#### IE8+

```javascript

function map(arr, fn) {
  var results = [];
  for (var i = 0; i < arr.length; i++)
    results.push(fn(arr[i], i));
  return results;
}

map(array, function(value, index){

});


```
#### IE9+

```javascript

array.map(function(value, index){

});


```

END
    end
    entry do
      name 'Now'
      notes <<-'END'
#### jQuery

```javascript

$.now();


```
#### IE8+

```javascript

new Date().getTime();


```
#### IE9+

```javascript

Date.now();


```

END
    end
    entry do
      name 'Parse Html'
      notes <<-'END'
#### jQuery

```javascript

$.parseHTML(htmlString);


```
#### IE8+

```javascript

var parseHTML = function(str) {
  var el = document.createElement('div');
  el.innerHTML = str;
  return el.children;
};

parseHTML(htmlString);


```
#### IE9+

```javascript

var parseHTML = function(str) {
  var tmp = document.implementation.createHTMLDocument();
  tmp.body.innerHTML = str;
  return tmp.body.children;
};

parseHTML(htmlString);


```

END
    end
    entry do
      name 'Parse Json'
      notes <<-'END'
#### jQuery

```javascript

$.parseJSON(string);


```
#### IE8+

```javascript

JSON.parse(string);


```

END
    end
    entry do
      name 'Trim'
      notes <<-'END'
#### jQuery

```javascript

$.trim(string);


```
#### IE8+

```javascript

string.replace(/^\s+|\s+$/g, '');


```
#### IE9+

```javascript

string.trim();


```

END
    end
    entry do
      name 'Type'
      notes <<-'END'
#### jQuery

```javascript

$.type(obj);


```
#### IE8+

```javascript

Object.prototype.toString.call(obj).replace(/^\[object (.+)\]$/, '$1').toLowerCase();


```

END
    end
  end
  notes <<-'END'
    * Based on [github.com/HubSpot/youmightnotneedjquery](https://github.com/HubSpot/youmightnotneedjquery) ([License](https://github.com/HubSpot/youmightnotneedjquery/blob/gh-pages/LICENSE))
  END
end