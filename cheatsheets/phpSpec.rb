cheatsheet do
  title 'phpSpec'
  docset_file_name 'phpSpec'
  keyword 'phpspec'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'General'

    entry do
      name 'Object'
      notes '
      ```
      $result ($this)
      ```'
    end
    entry do
      name 'Expectation'
      notes '
      ```
      should or shouldNot
      ```'
    end
    entry do
      name 'Matcher'
      notes '
      ```
      Be…()
      ````'
    end
  end

  category do
    id 'Types of Matchers'

    entry do
      name 'Identity (**===**)'
      notes <<-'END'
        ```php?start_inline=1
        $this->method()->shouldReturn('something');
        $this->method()->shouldBe('something');
        $this->method()->shouldBeEqualTo('something');
        $this->method()->shouldEqual('something');
        ```
      END
    end

    entry do
      name 'Comparison (**==**)'
      notes <<-'END'
        ```php?start_inline=1
        $this->method()->shouldBeLike('something');
        ```
      END
    end

    entry do
      name 'Throw'
      notes <<-'END'
        ```php?start_inline=1
        $this->shouldThrow('EndOfTheWorld')->duringGreet();
        $this->shouldThrow('EndOfTheWorld')->during('greet');
        $this->greet()->shouldThrow(new \Exception)->duringGreet();
        $this->greet()->shouldThrow(new \Exception)->during('greet', ['arguments']);
        ```
      END
    end

    entry do
      name 'Type'
      notes <<-'END'
        ```php?start_inline=1
        $this->greet()->shouldBeAnInstanceOf('Greeting');
        $this->greet()->returnAnInstanceOf('Greeting');
        $this->greet()->haveType('Greeting');
        ```
      END
    end
    
    entry do
      name 'Object State'
      notes <<-'END'
        * has → have
        
            ```php?start_inline=1
            class ShoppingCartSpec extends ObjectBehavior
            {
              function it_is_created_empty()
              {
                $this->shouldNotHaveItems();
              }
            }
            
            class ShoppingCart
            {
              public function hasItem() {}
            }
            ```
        * is → be
        
            ```php?start_inline=1
            class LifeSpec extends ObjectBehavior
            {
              function it_is_simple()
              {
                $this->shouldBeSimple();
              }
            }
            
            class Life
            {
              public function isSimple() {}
            }
            ```

      END
    end
    
    entry do
      name 'Inline'
      notes <<-'END'
        ```php?start_inline=1
        class NeoSpec extends ObjectBehavior
        {
          function it_should_be_the_one()
          {
            $this->shouldBeTheOne();
          }
          function getMatchers()
          {
            return [
              'beTheOne' => function($actual)
              {
                return $actual instanceOf TheOne;
              }
            ];
          }
        }
        ```
      END
    end
  end
  
  category do
    id 'Let & Let Go'
    
    entry do
      notes <<-'END'
        ```php?start_inline=1
        class SomeSpec extends ObjectBehavior
        {
            function let()
            {
              // run before every example
            }
        
            function it_greets_with_hello()
            {
              $this->greet()->shouldReturn('Hello, World!');
            }
        
            function let_go()
            {
              // run after every example
            }
        }
        ```
      END
    end
  end
  
  category do
    id 'Constructors'
    
    entry do
      notes <<-'END'
        ```php?start_inline=1
        //...
        
        function let()
        {
          $this->beConstructedWith('Hello, World!');
        }
        ```
      END
    end
  end
  
  category do
    id 'Stubbing'
    
    entry do
      notes <<-'END'
        ```php?start_inline=1
        class SomeSpec extends ObjectBehavior
        {
            function let(Greeting $greeting)
            {
              $this->beConstructedWith($greeting); 
            }
        
            function it_greets_with_hello_world(Greeting $greeting)
            {
              $greeting->getMessage()->willReturn('Hello, World!');
        
              $this->greet()->shouldReturn('Hello, World!');
            }
        }
        ```
      END
    end
  end
  
  category do
    id 'Mocking'
    
    entry do
      notes <<-'END'
        ```php?start_inline=1
        class SomeSpec extends ObjectBehavior
        {
            function let(Greeter $greeter)
            {
              $this->beConstructedWith($greeter); 
            }
        
            function it_uses_a_greeter(Greeter $greeter)
            {
              $greeting->sayHelloWorld()->shouldBeCalled();
        
              $this->greet();
            }
        }
        ```
      END
    end
  end

  notes <<-'END'
    * Based on a [gist](https://gist.github.com/pedroborges/9176252) from [Pedro Borges](https://github.com/pedroborges)
    * Inspired by [Marcello Duarte](https://github.com/MarcelloDuarte/)'s PhpSpec 2.0 ilustrated by [examples slides](http://pt.slideshare.net/marcello.duarte/phpspec-20-ilustrated-by-examples)
    * Converted by [Jens Kohl](https://github.com/jk)
    
  END
end
