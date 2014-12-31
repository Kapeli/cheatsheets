cheatsheet do
  title 'Objective-C'
  docset_file_name 'Objective-C'
  keyword 'objc'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Classes'
    entry do
        name 'Class header (MyClassName.h)'
        notes <<-'END'
        <pre class="highlight objective_c">
        <span class="gt">#import</span> <span class="s">"AnyHeaderFile.h"</span>
        
        <span class="ni">@interface</span> MyClassName : <span class="mi">SuperClassName</span>
        <span class="sr">// define public properties</span>
        <span class="sr">// define public methods</span>
        <span class="ni">@end</span>
        </pre>
        END
    end
    entry do
        name 'Class implementation (MyClassName.m)'
        notes <<-'END'
        <pre class="highlight objective_c">
        <span class="gt">#import</span> <span class="s">"MyClassName.h"</span>
        
        <span class="ni">@interface</span> MyClassName ()
        <span class="sr">// define private properties</span>
        <span class="sr">// define private methods</span>
        <span class="ni">@end</span>
        
        <span class="ni">@implementation</span> MyClassName {
        <span class="sr">// define private instance variables</span>
        }
        
        <span class="sr">// implement methods</span>
        
        <span class="ni">@end</span>
        </pre>
        END
    end
  end

  category do
    id 'Variables'
    entry do
        name 'Declaring variables'
        notes <<-'END'
        <pre class="highlight objective_c">
        <span class="kt">type</span> myVariableName;
        </pre>
        END
    end
    entry do
        name 'Variable types'
        notes <<-'END'
        <span class="ni">int</span>
        <br/>
        1, 2, 500, 10000
        <br/>
        <br/>
        <span class="ni">float</span>, <span class="ni">double</span>
        <br/>
        1.5, 3.14, 578.234
        <br/>
        <br/>
        <span class="ni">BOOL</span>
        <br/>
        <span class="ni">YES</span>, <span class="ni">NO</span>
        <br/>
        <br/>
        <span class="ni">ClassName</span> *
        <br/>
        <span class="ni">NSString</span> *, <span class="ni">NSArray</span> *, ...
        <br/>
        <br/>
        <span class="ni">id</span>
        <br/>
        Hold reference to any object (no need to add *)
        END
    end
  end

  category do
    id 'Properties'
    entry do
        name 'Defining properties'
        notes <<-'END'
        <pre class="highlight objective_c">
        <span class="ni">@property</span> (<span class="kt">attribute1</span>, <span class="kt">attribute2</span>, ...) <span class="ni">type</span> myPropertyName;
        </pre>
        
        Automatically defines a private instance variable
        <pre class="highlight objective_c">
        <span class="ni">type</span> _myPropertyName;
        </pre>

        Automatically creates a getter and setter
        <pre class="highlight objective_c">
        - (<span class="ni">type</span>)myPropertyName;
        - (<span class="ni">void</span>)setMyPropertyName:(<span class="ni">type</span>)name;
        </pre>

        Using <span class="nt">_myPropertyName</span> uses the private instance variable directly.
        <br/>
        Using <span class="ni">self</span><span class="nt">.myPropertyName</span> uses the getter and setter.
        END
    end
    entry do
        name 'Property attributes'
        notes <<-'END'
        <span class="ni">strong</span>
        <br/>
        Adds reference to keep object alive
        <br/>
        <br/>
        <span class="ni">weak</span>
        <br/>
        Object can disapear, become <span class="ni">nil</span>
        <br/>
        <br/>
        <span class="ni">assign</span>
        <br/>
        Normal assign, no reference
        <br/>
        <br/>
        <span class="ni">copy</span>
        <br/>
        Make copy on assign
        <br/>
        <br/>
        <span class="ni">nonatomic</span>
        <br/>
        Make not threadsafe, increase performance
        <br/>
        <br/>
        <span class="ni">readwrite</span>
        <br/>
        Create getter &amp; setter (default)
        <br/>
        <br/>
        <span class="ni">readonly</span>
        <br/>
        Create just getter
        END
    end
  end

  category do
    id 'Methods'
    entry do
        name 'Defining methods'
        notes <<-'END'
        <pre class="highlight objective_c">
        - (<span class="ni">type</span>)doIt;
        - (<span class="ni">type</span>)doItWithA:(<span class="ni">type</span>)a;
        - (<span class="ni">type</span>)doItWithA:(<span class="ni">type</span>)a andB:(<span class="ni">type</span>)b;
        </pre>
        END
    end
    entry do
        name 'Implementing methods'
        notes <<-'END'
        <pre class="highlight objective_c">
        - (<span class="ni">type</span>)doIt {
            <span class="sr">// do something</span>
            <span class="ni">return</span> ReturnValue;
        }

        - (<span class="ni">type</span>)doItWithA:(<span class="ni">type</span>)a {
            <span class="sr">// do something with a</span>
            <span class="ni">return</span> ReturnValue;
        }

        - (<span class="ni">type</span>)doItWithA:(<span class="ni">type</span>)a andB:(<span class="ni">type</span>)b {
            <span class="sr">// do something with a and b</span>
            <span class="ni">return</span> ReturnValue;
        }
        </pre>
        END
    end
  end

  category do
    id 'Constants'
    entry do
        name 'File specific constants'
        notes <<-'END'
        <pre class="highlight objective_c">
          <span class="ni">static const double</span> name = value;
          <span class="ni">static</span> <span class="kt">NSString</span> * <span class="ni">const</span> name = value;
        </pre>
        END
    end
    entry do
        name 'External constants'
        notes <<-'END'
        <pre class="highlight objective_c">
          <span class="sr">// .h</span>
          <span class="ni">extern const double</span> name;
          <span class="sr">// .m</span>
          <span class="ni">const double</span> name = value;
        
          <span class="sr">// .h</span>
          <span class="ni">extern</span> <span class="kt">NSString</span> * <span class="ni">const</span> name;
          <span class="sr">// .m</span>
          <span class="kt">NSString</span> * <span class="ni">const</span> name = value;
        </pre>
        END
    end
  end
  
  category do
    id 'Usage'
    entry do
        name 'Creating objects'
        notes <<-'END'
        <pre class="highlight objective_c">
        <span class="mi">ClassName</span> *myObject = [[<span class="mi">ClassName</span> <span class="nt">alloc</span>] <span class="nt">init</span>];
        </pre>
        END
    end
    entry do
        name 'Using properties'
        notes <<-'END'
        <pre class="highlight objective_c">
        <span class="sr">// setting value</span>
        [myObject <span class="nt">setMyPropertyName</span>:a]; <span class="sr">// or</span>
        myObject.<span class="nt">myPropertyName</span> = a;

        <span class="sr">// getting value</span>
        a = [myObject <span class="nt">myPropertyName</span>]; <span class="sr">// or</span>
        a = myObject.<span class="nt">myPropertyName</span>;
        </pre>
        END
    end
    entry do
        name 'Calling methods'
        notes <<-'END'
        <pre class="highlight objective_c">
        [myObject <span class="nt">doIt</span>];
        [myObject <span class="nt">doItWithA</span>:a];
        [myObject <span class="nt">doItWithA</span>:a <span class="nt">andB</span>:b];
        </pre>
        END
    end
  end

  category do
    id 'Example'
    entry do
        name 'Custom initializer'
        notes <<-'END'
        <pre class="highlight objective_c">
        - (<span class="ni">id</span>)initWithParam:(<span class="ni">type</span>)param {
            <span class="ni">if</span> ((<span class="ni">self</span> = [<span class="ni">super</span> <span class="nt">init</span>])) {
                <span class="nt">_myPropertyName</span> = param;
            }
            <span class="ni">return self</span>;
        }
        </pre>
        END
    end
    entry do
        name 'NSString'
        notes <<-'END'
        <pre class="highlight objective_c">
        <span class="ni">NSString</span> *personOne = <span class="gt">@"Ray"</span>;
        <span class="ni">NSString</span> *personTwo = <span class="gt">@"Shawn"</span>;
        <span class="ni">NSString</span> *combinedString = [<span class="ni">NSString</span> <span class="nt">stringWithFormat</span>:<span class="gt">@"%@: Hello, %@!"</span>, personOne, personTwo];
        <span class="ni">NSLog</span>(<span class="gt">@"%@"</span>, combinedString);
        <span class="ni">NSString</span> *tipString = <span class="gt">@"24.99"</span>;
        <span class="ni">float</span> tipFloat = [tipString <span class="nt">floatValue</span>];
        </pre>
        END
    end
    entry do
        name 'NSArray'
        notes <<-'END'
        <pre class="highlight objective_c">
        <span class="ni">NSMutableArray</span> *array = [<span class="nt">@[</span>person1, person2<span class="gt">]</span> <span class="nt">mutableCopy</span>];
        [array <span class="nt">addObject</span>:<span class="gt">@"Waldo"</span>];
        <span class="ni">for</span> (<span class="ni">NSString</span> *person <span class="ni">in</span> array) {
            <span class="ni">NSLog</span>(<span class="gt">@"Person: %@"</span>, person);
        }
        <span class="ni">NSString</span> *waldo = array[<span class="nt">2</span>];
        </pre>
        END
    end
  end

  notes <<-'END'
    * Based on a [cheat sheet](http://cdn1.raywenderlich.com/downloads/RW-Objective-C-Cheatsheet-v-1-5.pdf) by [Ray Wenderlich](http://www.raywenderlich.com)
  END
end
