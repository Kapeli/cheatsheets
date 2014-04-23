cheatsheet do
  title 'OCMock'
  docset_file_name 'OCMock'
  keyword 'objc'
  source_url 'http://cheat.kapeli.com'
  style 'td.description .name {font-weight:bold}'


  category do
    id 'Features'
    
    entry do
        name 'Class mocks'
        notes <<-'END'
        ```objc
        id mock = [OCMockObject mockForClass:[SomeClass class]];
        ```
        
        Creates a mock object that can be used as if it were an instance of ``SomeClass``.
        END
    end
    
    entry do
        name 'Expectations and verification'
        notes <<-'END'
        ```objc
        [[mock expect] someMethod:someArgument];
        ```
        
        Tells the mock object that ``someMethod:`` should be called with an argument that is equal to someArgument. After this setup the functionality under test should be invoked followed by:
        
        ```objc
        [mock verify];
        ```
        
        The verify method will raise an exception if the expected method has not been invoked.
        
        In some cases the expected method will only be called when the run loop is active. For these cases it is possible to delay the verification for a while.
        
        ```objc
        [mock verifyWithDelay:aDelay];
        ```
        
        Note that `aDelay` is the maximum the mock will wait. It normally returns as soon as the expectation has been met.
        END
    end
    
    entry do
        name 'Stubs'
        notes <<-'END'
        ```objc
        [[[mock stub] andReturn:aValue] someMethod:someArgument];
        ```
        
        Tells the mock object that when ``someMethod:`` is called with someArgument it should return aValue.

        If the method returns a primitive type then ``andReturnValue:`` must be used with a value argument. It is not possible to pass primitive types directly.
        
        ```objc
        [[[mock stub] andReturnValue:@YES] aMethodReturnABoolean:someArgument];
        ```
        
        Values can also be returned in pass-by-reference arguments:
        
        ```objc
        [[mock stub] someMethodWithReferenceArgument:[OCMArg setTo:anObject]];
        
        [[mock stub] someMethodWithReferenceArgument:[OCMArg setToValue:OCMOCK_VALUE((int){aValue})]];
        ```
        
        In this case the mock object will set the reference that is passed to the method to anObject and aValue.

        The mock object can also throw an exception or post a notification when a method is called:

        ```objc
        [[[mock stub] andThrow:anException] someMethod:someArgument];
        
        [[[mock stub] andPost:aNotification] someMethod:someArgument];
        ```
        
        In fact, the notification can be posted in addition to returning a value:
        
        ```objc
        [[[[mock stub] andPost:aNotification] andReturn:aValue] someMethod:someArgument];
        ```
        
        The mock can delegate the handling of an invocation to a completely different method:
        
        ```objc
        [[[mock stub] andCall:@selector(aMethod:)
                     onObject:anObject] someMethod:someArgument];
        ```
        
        In this case the mock object will call ``aMethod:`` on ``anObject`` when ``someMethod:`` is called. The signature of the replacement method must be the same as that of the method that is replaced. Arguments will be passed and the return value of the replacement method is returned from the stubbed method.
        
        If Objective-C blocks are available a block can be used to handle the invocation and set up a return value:
        
        ```objc
        void (^theBlock)(NSInvocation *) = ^(NSInvocation *invocation) {
            /* code that reads and modifies the invocation object */
        };
        
        [[[mock stub] andDo:theBlock] someMethod:[OCMArg any]];
        ```
        
        If using a partial mock it is possible to forward the method to the implementation in the real object, which can be useful to simply check that a method was called:
    
        ```objc
        [[[mock expect] andForwardToRealObject] someMethod];
        ```
        
        Note that it is possible to use ``andReturn:``, ``andThrow:``, etc with ``expect``, too. This will then return the given return value and, on verify, ensure that the method has been called.
        END
    end
    
    entry do
        name 'Class methods'
        notes <<-'END'
        ```objc
        [[[mock stub] andReturn:aValue] someClassMethod];
        ```
        
        Tells the mock object that when ``someClassMethod`` is called on the class for which the mock object was created it should return aValue. This is the same syntax that is used to stub instance methods.
        
        As with partial mocks it is possible to use ``andForwardToRealObject`` to invoke the actual class method implementation:
        
        ```objc
        [[[mock expect] andForwardToRealObject] someClassMethod];
        ```
        
        In cases where a class method should be stubbed but the class also has an instance method with the same name as the class method, the intent to mock the class method must be made explicit:
        
        ```objc
        [[[[mock stub] classMethod] andReturn:aValue] aMethod];
        ```
        
        The class can be returned to its original state, i.e. all stubs will be removed:
    
        ```objc
        [mock stopMocking];
        ```
        
        This is only necessary if the original state must be restored before the end of the test. The mock automatically calls ``stopMocking`` during its own deallocation.
        
        Note: If the mock object that added a stubbed class method is not deallocated the stubbed method will persist across tests. If multiple mock objects manipulate the same class at the same time the behaviour is undefined.
        END
    end
    
    entry do
        name 'Argument constraints'
        notes <<-'END'
        
        ```objc
        [[mock expect] someMethod:[OCMArg any]];
        ```
        
        Tells the mock object that ``someMethod:`` should be called and it does not matter what the argument is. This only works for object arguments.
        
        Pointers and selectors require special treatment:
        
        ```objc
        [[mock expect] someMethodWithPointerArgument:[OCMArg anyPointer]];
        [[mock expect] someMethodWithSelectorArgument:[OCMArg anySelector]];
        ```
        
        Arguments that are neither objects nor pointers or selectors cannot be ignored using an any placeholder (for details see this forum thread). It is possible, though, to tell the mock to ignore all non-object arguments in an invocation:
        
        ```objc
        [[[mock expect] ignoringNonObjectArgs] someMethodWithIntArgument:0];
        ```
        
        In this case the mock will accept any invocation of ``someMethodWithIntArgument:`` no matter what argument is actually passed. If the method has object arguments as well as non-object arguments, the object arguments can still be constrained as usual using the methods on OCMArg.
        
        Other constraints available for object arguments are:
        
        ```objc
        [[mock expect] someMethod:[OCMArg isNil]];
        [[mock expect] someMethod:[OCMArg isNotNil]];
        [[mock expect] someMethod:[OCMArg isNotEqual:aValue]];
        [[mock expect] someMethod:[OCMArg checkWithSelector:aSelector onObject:anObject]];
        ```
        
        The last constraint will, when the mock object receives ``someMethod:``, send aSelector to anObject and if aSelector takes an argument will pass the argument that was passed to ``someMethod:``. The method should return a boolean indicating whether the argument matched the expectation or not.
        
        If Objective-C blocks are available it is possible to check the argument with a block as follows:
        
        ```objc
        [[mock expect] someMethod:[OCMArg checkWithBlock:^BOOL(id value) { /* return YES if value is ok */ }]];
        ```
        
        Last but not least it is also possible to use Hamcrest matchers like this:
        
        ```objc
        [[mock expect] someMethod:startsWith(@"foo")];
        ```
        
        Note that this will only work when the Hamcrest framework is explicitly linked by the unit test bundle.
        END
    end
    
    entry do
        name 'Nice mocks/failing fast'
        notes <<-'END'        
        When a method is called on a mock object that has not been set up with either expect or stub the mock object will raise an exception. This fail-fast mode can be turned off by creating a "nice" mock:
        
        ```objc
        id mock = [OCMockObject niceMockForClass:[SomeClass class]];
        ```
        
        While nice mocks will simply ignore all unexpected methods it is possible to disallow specific methods:
        
        ```objc
        [[mock reject] someMethod];
        ```
        
        Note that in fail-fast mode, if the exception is ignored, it will be rethrown when verify is called. This makes it possible to ensure that unwanted invocations from notifications etc. can be detected.
        END
    end
    
    entry do
        name 'Protocol mocks'
        notes <<-'END'
        ```objc
        id aMock = [OCMockObject mockForProtocol:@protocol(SomeProtocol)];
        ```
        
        Creates a mock object that can be used as if it were an instance of an object that implements ``SomeProtocol``.
        END
    end
    
    entry do
        name 'Partial mocks'
        notes <<-'END'
        ```objc
        id aMock = [OCMockObject partialMockForObject:anObject];
        ```
        
        Creates a mock object that can be used in the same way as ``anObject``. When a method that is not stubbed is invoked it will be forwarded to ``anObject``. When a stubbed method is invoked using a reference to ``anObject``, rather than the mock, it will still be handled by the mock.
        
        The real object can be returned to its original state, i.e. all stubs will be removed:
        
        ```objc
        [aMock stopMocking];
        ```
        
        This is only necessary if the original state must be restored before the end of the test. The partial mock automatically calls ``stopMocking`` during its own deallocation.
        
        Note that currently partial mocks cannot be created for instances of toll-free bridged classes, e.g. NSString.
        END
    end
    
    entry do
        name 'Observer mocks'
        notes <<-'END'
        ```objc
        id aMock = [OCMockObject observerMock];
        ```
        
        Creates a mock object that can be used to observe notifications. The mock must be registered in order to receive notifications:
        
        ```objc
        [notificatonCenter addMockObserver:aMock
                                      name:SomeNotification
                                    object:nil];
        ```
        
        Expectations can then be set up as follows:
   
        ```objc
        [[mock expect] notificationWithName:SomeNotification
                                     object:[OCMArg any]];
        ```
        
        Note that currently there is no "nice" mode for observer mocks, they will always raise an exception when an unexpected notification is received.
        END
    end
    
    entry do
        name 'Instance-based method swizzling'
        notes <<-'END'
        In a nutshell, Method Swizzling describes the replacement of a method implementation with a different implementation at runtime. Using partial mocks and the ``andCall:`` stub OCMock allows such replacements on a per-instance basis.
        
        ```objc
        id mock = [OCMockObject partialMockForObject:anObject];
        
        [[[mock stub] andCall:@selector(differentMethod:)
                     onObject:differentObject] someMethod:[OCMArg any]];
        ```
        
        After these two lines, when ``someMethod:`` is sent to ``anObject`` the implementation of that method is not invoked. Instead, ``differentMethod:`` is called on ``differentObject``. Other instances of the same class are not affected; for these the original implementation of ``someMethod:`` is still invoked. The methods can have different names but their signatures should be the same.
        END
    end
  end
end