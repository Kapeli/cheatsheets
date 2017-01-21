cheatsheet do
  title 'Objective-C @Compiler Directives'
  docset_file_name 'Objective-C_@Compiler_Directives'
  keyword 'objc'
  source_url 'http://cheat.kapeli.com'
  style 'td.description .name {font-weight:bold}'

  category do
    id 'class'

    entry do
      name '@class'
      notes <<-'END'

        Declares class as known without having to import the class’ header file.
        
        ```objc
        @class ClassName; 
        Getting class object by name:
        // ERROR: this doesn't work! 
        Class c = @class(ClassName);
        Instead use:
        Class c = [ClassName class];
        ```

      END
    end
    entry do
      name '@end'
      notes <<-'END'
      Marks end of the class, protocol or interface declaration.
      END
    end
  end
  category do
    id 'protocol'

    entry do
      name '@protocol'
      notes <<-'END'
      Marks the start of a protocol declaration. 

      ```objc
      @protocol ProtocolName <aProtocol, anotherProtocol>
      ```
      
      Get a protocol object by name:

      ```objc
      Protocol *aProtocol = @protocol(ProtocolName);
      ```
       
      END
    end
    entry do
      name '@required'
      notes <<-'END'
      Methods following are required (default).
      END
    end
    entry do
      name '@optional'
      notes <<-'END'

      Methods following are optional. Classes making use of the protocol must test Optional protocol methods for existence:
      
      ```objc
      [object respondsToSelector:@selector(optionalProtocolMeth od)];
      ```

      END
    end
  end
  category do
    id 'interface'
         
    entry do
      name '@interface'
      notes <<-'END'
      Marks the start of a class or category declaration. Objective-C classes should derive from NSObject directly or indirectly. Use @interface to declare that the class conforms to protocols.
      
      ```objc
      @interface ClassName : SuperClassName <aProtocol, anotherProtocol> {
          @public 
          // instance variables 
          @package 
          // instance variables 
          @protected 
          // instance variables
          @private 
          // instance variables 
      } 
      // property declarations 
      @property (atomic, readwrite, assign) id aProperty; 
      // public instance and/or class method declarations
      @end
      ```
      **Category declaration** - Objective-C category cannot add instance variables. Can to conform to (additional) protocols. CategoryName can be omitted if in implementation file making methods “private”. 
      
      ```objc
      @interface ClassName (CategoryName) <aProtocol, anotherProtocol>
      ```
      END
    end
    entry do
      name '@public'
      notes <<-'END'
        Declares instance variables after @public directive as publicly accessible. Read and modified with pointer notation:  
        
        ```objc
        someObject->aPublicVariable = 10;
        ```
      END
    end
    entry do
      name '@package'
      notes <<-'END'
      Declares instance variables after @package directive as public inside the framework that defined the class, but private outside the framework. Applies only to 64-bit systems, on 32- bit systems @package has the same meaning as @public.
      END
    end
    entry do
      name '@protected'
      notes <<-'END'
      Default. Declares instance variables after @protected directive as accessible only to the class and derived classes.
      END
    end
    entry do
      name '@private'
      notes 'Declares the instance variables following the @private directive as private to the class. Not even derived classes can access private instance variables.'
    end
    entry do
      name '@property'
      notes <<-'END'
      Declares a property which accessible with dot notation. @property can be followed by optional brackets within which property modifiers specify the exact behavior of the property. Property modifiers: readwrite (default), readonly – Generate both setter & getter methods (readwrite), or only the getter method (readonly).

      **assign (default), retain, copy** – For properties that can safely cast to id. Assign assigns passed value – retain sends release to an existing instance variable, sends retain to the new object, assigns the retained object to the instance variable – copy sends release to the existing instance variable, sends copy to the new object, assigns the copied object to the instance variable. In latter two cases you are responsible for sending release (or assigning nil) to the property on dealloc.
      
      **atomic (default), nonatomic** – Atomic properties are thread-safe. Nonatomic properties are not thread-safe. Nonatomic property access is faster than atomic and often used in single- threaded apps, or cases where you’re absolutely sure the property will only be accessed from one thread.
      
      **strong (default), weak** – Available if automatic reference counting (ARC) is enabled. The keyword strong is synonymous to retain, while weak is synonymous to assign, except a weak property is set to nil if instance is deallocated.
      END
    end
    entry do
      name '@selector'
      notes <<-'END'
      Returns the selector type SEL of the given Objective-C method. Generates compiler warning if the method isn’t declared or doesn’t exist. 
      
      ```objc
      - (void)aMethod {
          SEL aMethodSelector = @selector(aMethod);
          [self performSelector:aMethodSelector];
      }
      ```

      END
    end
  end
  category do
    id 'implementation'

    entry do
      name '@implementation'
      notes <<-'END'
      Marks start of a class’ or category implementation.
      
      **Class implementation:**
      
      ```objc
      @implementation ClassName
      @synthesize aProperty, bProperty;
      @synthesize cProperty=instanceVariableName;
      @dynamic anotherProperty; 
      // method implementations
      @end 
      ```
      
      **Category implementation:**
      
      ```objc
      @implementation ClassName (CategoryName)
      @synthesize aProperty, bProperty;
      @synthesize cProperty=instanceVariableName;
      @dynamic anotherProperty, banotherProperty;
      // method implementations 
      @end
      ```
      END
    end
    entry do
      name '@synthesize'
      notes <<-'END'
      Generate setter and getter methods for a comma separated property list according to property modifiers. If instance variable is not named exactly like @property, you can specify instance variable name after the equals sign.
      END
    end
    entry do
      name '@dynamic'
      notes <<-'END'
      Tells the compiler the setter and getter methods for the given (comma separated) properties are implemented manually, or dynamically at runtime. Accessing a dynamic property will not generate a compiler warning, even if the getter/setter is not implemented. You will want to use @dynamic in cases where property getter and setter methods perform custom code. @end – Marks end of class implementation.
      END
    end
    entry do
      name '@synchronized'
      notes <<-'END'
      Encapsulates code in mutex lock ensuring that the block of code and locked object are only accessed by one thread at a time.
      
      ```objc
      -(void) aMethodWithObject:(id)object { 
          @synchronized(object) { 
              // code that works with locked object
          }
      }
      ```
      END
    end
    entry do
      name '@"string"'
      notes <<-'END'
      Declares a constant NSString object. Does not need to be retained or released. 
      
      ```objc
      NSString* str = @"This is a constant string.";
      NSUInteger strLength = [@"This is legal!" length];
      ```

      END
    end
    entry do
      name '@throw @try @catch @finally'
      notes <<-'END'
      Used for handling and throwing exceptions. Throwing and Handling exceptions:
      
      ```objc
      @try { 
          // code that might throw an exception
          NSException *exception = [NSException exceptionWithName:@"ExampleException" reason:@"In your face!" userInfo:nil];
          @throw exception;
      }
      @catch (CustomException *ce) {
          // CustomException-specific handling ...
      }
      @catch (NSException *ne) {
          // generic NSException handling ... 
          // re-throw the caught exception in a catch block:
          @throw;
      } @finally {
          // runs whether an exception occurred or not
      }
      ```
      END
    end
    entry do
      name '@autoreleasepool'
      notes <<-'END'
      In an ARC (automatic reference counting) enabled about 6x faster than NSAutoreleasePool and used as a replacement. Avoid using a variable created in an @autoreleasepool after the autoreleasepool block.
      
      ```objc
      @autoreleasepool { 
          // code that creates temporary objects
      }
      ```
      END
    end
    entry do
      name '@encode'
      notes <<-'END'
      Returns the character string encoding of a type.
      
      ```objc
      char *enc1 = @encode(int); // enc1 = "i"
      char *enc2 = @encode(id); // enc2 = "@" 
      char *enc3 = @encode(@selector(aMethod)); // enc3 = ":" 
      // practical example: 
      CGRect rect = CGRectMake(0, 0, 100, 100);
      NSValue *v = [NSValue value:&rect withObjCType:@encode(CGRect)];
      ```
      END
    end
    entry do
      name '@compatibility_alias'
      notes <<-'END'
      Sets alias name for an existing class. First parameter is the alias, second the actual class name. @compatibility_alias AliasClassName ExistingClassName After this you can use AliasClassName in place of ExistingClassName.
      END
    end
  end
  notes <<-'END'
    * Based on a [cheat sheet](https://maniacdev.com/cheatsheetobjccd.pdf) by [Chaosky](http://chaosky.me)
  END
end