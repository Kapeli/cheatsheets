cheatsheet do
  title 'Objective-C Blocks'
  docset_file_name 'Objective-C_Blocks'
  keyword 'objc'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Block Syntax'
    entry do
        name 'Block as a local variable'
        notes <<-'END'
        <pre class="highlight objective_c"><span class="kt">returnType</span> (^<span class="nf">blockName</span>)(<span class="mi">parameterTypes</span>) = ^<span class="kt">returnType</span>(<span class="mi">parameters</span>) {...};</pre>
        END
    end
    entry do
        name 'Block as a property'
        notes <<-'END'
        <pre class="highlight objective_c">@property (nonatomic, copy) <span class="kt">returnType</span> (^<span class="nf">blockName</span>)(<span class="mi">parameterTypes</span>);</pre>
        END
    end
    entry do
        name 'Block as a method parameter'
        notes <<-'END'
        <pre class="highlight objective_c">- (void)someMethodThatTakesABlock:(<span class="kt">returnType</span> (^)(<span class="mi">parameterTypes</span>))<span class="nf">blockName</span>;</pre>
        END
    end
    entry do
        name 'Block as an argument to a method call'
        notes <<-'END'
        <pre class="highlight objective_c">[someObject someMethodThatTakesABlock: ^<span class="kt">returnType</span> (<span class="mi">parameters</span>) {...}];</pre>
        END
    end
    entry do
        name 'Block as typedef'
        notes <<-'END'
        <pre class="highlight objective_c">typedef <span class="kt">returnType</span> (^<span class="nf">TypeName</span>)(<span class="mi">parameterTypes</span>);
        <span class="nf">TypeName</span> blockName = ^returnType(<span class="mi">parameters</span>) {...};</pre>
        END
    end
  end
  notes <<-'END'
    * Based on a [cheat sheet](http://fuckingblocksyntax.com/) by [Mike Walker](http://lazerwalker.com/)
  END
end