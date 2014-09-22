cheatsheet do
  title 'Swift'
  docset_file_name 'Swift'
  keyword 'swift'
  source_url 'http://cheat.kapeli.com'
  
  category do
    id 'Examples'
    entry do
      name 'Classes'
      introduction 'All methods and properties of a class are public. If you just need to store data 
         in a structured object, you should use a struct'
      notes <<-'END'
        ``` swift
        class MyClass : OptionalSuperClass, OptionalProtocol1, OptionalProtocol2 {
            var myProperty:String
            var myOptionalProperty:String?
            // More properties...
            init() {
                myProperty = "Foo"
            }
        }
        
        
        // Examples: 
        //A parent class of Square
        class Shape {
            init() {
            }

            func getArea() -> Int {
                return 0;
            }
        }

        // A simple class `Square` extends `Shape`
        class Square: Shape {
            var sideLength: Int

            // Custom getter and setter property
            var perimeter: Int {
                get {
                    return 4 * sideLength
                }
                set {
                    sideLength = newValue / 4
                }
            }

            init(sideLength: Int) {
                self.sideLength = sideLength
                super.init()
            }

            func shrink() {
                if sideLength > 0 {
                    --sideLength
                }
            }

            override func getArea() -> Int {
                return sideLength * sideLength
            }
        }
        var mySquare = Square(sideLength: 5)
        print(mySquare.getArea()) // 25
        mySquare.shrink()
        print(mySquare.sideLength) // 4

        // Access the Square class object,
        // equivalent to [Square class] in Objective-C.
        Square.self

        //example for 'willSet' and 'didSet'
        class StepCounter {
            var totalSteps: Int = 0 {
                willSet(newTotalSteps) {
                    println("About to set totalSteps to \(newTotalSteps)")
                }
                didSet {
                    if totalSteps > oldValue  {
                        println("Added \(totalSteps - oldValue) steps to 'totalSteps'")
                    }
                }
            }
        }
        var stepCounter = StepCounter()
        stepCounter.totalSteps = 100 // About to set totalSteps to 100 \n Added 100 steps to 'totalSteps'
        stepCounter.totalSteps = 145 // About to set totalSteps to 145 \n Added 45 steps to 'totalSteps'

        // If you don't need a custom getter and setter, but still want to run code
        // before an after getting or setting a property, you can use `willSet` and `didSet`
        ```
      END
    end

    entry do
      name 'Functions'
      introduction 'Functions are a first-class type, meaning they can be nested in functions and can be passed around'
      notes <<-'END'
        ``` swift
        func doIt() -> Int {
            return 0
        }
        func doIt(a:Int) -> Int {
            return a
        }
        func doIt(a:Int, b:Int) -> Int {
            return a+b
        }
        
        // Function that returns a String
        func greet(name: String, day: String) -> String {
            return "Hello \(name), today is \(day)."
        }
        greet("Bob", "Tuesday") // call the greet function

        // Function that returns multiple items in a tuple
        func getGasPrices() -> (Double, Double, Double) {
            return (3.59, 3.69, 3.79)
        }

        // Function that takes variable number of arguments, collecting them into an array
        func setup(numbers: Int...) {
            // do something
        }
        setup(5, 16, 38) // call the setup function with array of inputs

        // Nested functions can organize code that is long or complex
        func printWelcomeMessage() -> String {
            var y = "Hello,"
            func add() {
                y += " world"
            }
            add()
            return y
        }
        printWelcomeMessage() // Hello world

        // Passing and returning functions
        func makeIncrementer() -> (Int -> Int) {
            func addOne(number: Int) -> Int {
                return 1 + number
            }
            return addOne
        }
        var increment = makeIncrementer()
        increment(7)
        ```
      END
    end
    
    entry do
      name 'Closures'
      introduction 'Functions are special case closures ({})'
      notes <<-'END'
        ``` swift
        
        // Closure example.
        // ->  separates the arguments and return type
        // in  separates the closure header from the closure body
        var numbers = [1, 2, 3, 4, 5]
        numbers.map({
            (number: Int) -> Int in
            let result = 3 * number
            return result
            })

        // When the type is known, like above, we can do this
        numbers = [1, 2, 6]
        numbers = numbers.map({ number in 3 * number })
        println(numbers) // [3, 6, 18]

        // When a closure is the last argument, you can place it after the )
        // When a closure is the only argument, you can omit the () entirely
        // You can also refer to closure arguments by position ($0, $1, ...) rather than name
        numbers = [2, 5, 1]
        numbers.map { 3 * $0 } // [6, 15, 3]
         ```
        END
      end

    entry do
      name 'Objects'
      notes <<-'END'
        ``` swift
        var a = MyClass()
        a.myProperty
        a.doIt()
        a.doIt(1)
        a.doIt(2, b:3)
        ```
      END
    end

    entry do
      name 'Enums'
      introduction 'Enums can optionally be of a specific type or on their own. They can contain methods like classes.'
      notes <<-'END'
        ``` swift
        
        enum CollisionType: Int {
            case Player = 1
            case Enemy = 2
        }
        var type = CollisionType.Player
        
        enum Suit {
            case Spades, Hearts, Diamonds, Clubs
            func getIcon() -> String {
                switch self {
                case .Spades: return "♤"
                case .Hearts: return "♡"
                case .Diamonds: return "♢"
                case .Clubs: return "♧"
                }
            }
        }
          
        ```
      END
    end

    entry do
      name 'Variables'
      notes <<-'END'
        ``` swift
        var mutableDouble:Double = 1.0
        mutableDouble = 2.0
        let constantDouble:Double = 1.0
        // constantDouble = 2.0 // will generate an error

        var mutableInferredDouble = 1.0
        var optionalDouble:Double? = nil
        optionalDouble = 1.0

        if let definiteDouble = optionalDouble {
            definiteDouble
        }
        ```
      END
    end
   
    entry do
      name 'Control Flow'
      notes <<-'END'
        ``` swift
        var condition = true
        if condition {
            // do something
        } else {
            // do something else
        }

        var val = 5
        switch val {
        case 1:
            "foo"
        case 2:
            "bar"
        default:
            "baz"
        }

        // omits upper value, use ... to include
        for i in 0..3 {
        }
        
        // for loop (array)
        let myArray = [1, 1, 2, 3, 5]
        for value in myArray {
            if value == 1 {
                println("One!")
            } else {
                println("Not one!")
            }
        }

        // for loop (dictionary)
        var dict = [
            "name": "Steve Jobs",
            "title": "CEO",
            "company": "Apple"
        ]
        for (key, value) in dict {
            println("\(key): \(value)")
        }

        // for loop (range)
        for i in -1...1 { // [-1, 0, 1]
            println(i)
        }
        // use .. to exclude the last number

        // for loop (ignoring the current value of the range on each iteration of the loop)
        for _ in 1...3 {
            // Do something three times.
        }

        // while loop
        var i = 1
        while i < 1000 {
            i *= 2
        }

        // do-while loop
        do {
            println("hello")
        } while 1 == 2

        // Switch
        let vegetable = "red pepper"
        switch vegetable {
        case "celery":
            let vegetableComment = "Add some raisins and make ants on a log."
        case "cucumber", "watercress":
            let vegetableComment = "That would make a good tea sandwich."
        case let x where x.hasSuffix("pepper"):
            let vegetableComment = "Is it a spicy \(x)?"
        default: // required (in order to cover all possible input)
            let vegetableComment = "Everything tastes good in soup."
        }

        // Switch to validate plist content
        let city:Dictionary<String, AnyObject> = [
            "name" : "Qingdao",
            "population" : 2_721_000,
            "abbr" : "QD"
        ]
        switch (city["name"], city["population"], city["abbr"]) {
            case (.Some(let cityName as NSString),
                .Some(let pop as NSNumber),
                .Some(let abbr as NSString))
            where abbr.length == 2:
                println("City Name: \(cityName) | Abbr.:\(abbr) Population: \(pop)")
            default:
                println("Not a valid city")
        }
        ```
      END
    end

    entry do
      name 'Strings'
      notes <<-'END'
        ``` swift
        var personOne = "Ray"
        var personTwo = "Brian"
        var combinedString = "\(personOne): Hello, \(personTwo)!"
        var tipString = "2499"
        var tipInt = tipString.toInt()

        extension Double {
            init (string: String) {
                self = Double(string.bridgeToObjectiveC().doubleValue)
            }
        }
        tipString = "24.99"
        var tip = Double(string:tipString)
        ```
      END
    end

    entry do
      name 'Arrays'
      notes <<-'END'
        ``` swift
        var person1 = "Ray"
        var person2 = "Brian"
        var array:String[] = [person1, person2]
        array += "Waldo"
        for person in array {
            println("person: \(person)")
        }
        var waldo = array[2]
        
        // Array Functions
        var shoppingList = ["catfish", "water", "lemons"]
        shoppingList[1] = "bottle of water"               // update
        shoppingList.count                                // size of array (3)
        shoppingList.append("eggs")
        shoppingList += "Milk"

        // Array slicing
        var fibList = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 5]
        fibList[4..6] // [3, 5]. Note: the end range value is exclusive
        fibList[0..fibList.endIndex] // all except last item
        // Subscripting returns the Slice type, instead of the Array type.
        // You may need to cast it to Array in order to satisfy the type checker
        Array(fibList[0..4])

        // Variants of creating an array. All three are equivalent.
        var emptyArray1 = String[]()
        var emptyArray2: String[] = []
        var emptyArray3: String[] = String[]()
        ```
      END
    end

    entry do
      name 'Dictionaries'
      notes <<-'END'
        ``` swift
        var dict:Dictionary<String, String> = ["Frog": "Kermit", "Pig": "Ms. Piggy", "Weirdo": "Gonzo" ]
        dict["Weirdo"] = "Felipe"
        dict["Frog"] = nil // delete frog for (type, muppet) in dict {
            println("type: \(type), muppet: \(muppet)")
        }
        ```
      END
    end
    
    entry do
      name 'Protocols'
      introduction 'A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.'
      notes <<-'END'
        ``` swift
        protocol SomeProtocol {
            // protocol definition goes here
        }
        ```
      END
    end
    
    entry do
      name 'Extensions'
      introduction 'Add extra functionality to an already created type'
      notes <<-'END'
        ``` swift
        // adds the methods first and rest to the array type
        extension Array {
            func first () -> Any? {
                return self[0]
            }
            func rest () -> Array {
                if self.count >= 1 {
                    return Array(self[1..self.endIndex])
                } else {
                    return []
                }
            }
        }

        ```
      END
    end
    
    entry do
      name 'Operator Overloading'
      introduction 'You can overwrite existing operators or define new operators for existing or custom types.'
      notes <<-'END'
        ``` swift
        // Overwrite existing types
        @infix func + (a: Int, b: Int) -> Int {
            return a - b
        }
        var x = 5 + 4 // x is 1
        
        You can't overwrite the = operator
        Add operators for new types

        struct Vector2D {
            var x = 0.0, y = 0.0
        }
        @infix func + (left: Vector2D, right: Vector2D) -> Vector2D {
            return Vector2D(x: left.x + right.x, y: left.y + right.y)
        }
        
        Operators can be prefix, infix, or postfix.
        You have to add @assignment if you wish to define compound assignment operators like +=, ++ or -=

        @assignment func += (inout left: Vector2D, right: Vector2D) {
            left = left + right
        }
        
        Operator overloading is limited to the following symbols: / = - + * % < > ! & | ^ . 
        ```
      END
    end
    
    entry do
      name 'Generics'
      introduction 'Generic code enables you to write flexible, reusable functions and types that can work with any type.'
      notes <<-'END'
        ``` swift
        // Generic function, which swaps two any values.
        func swapTwoValues<T>(inout a: T, inout b: T) {
            let temporaryA = a
            a = b
            b = temporaryA
        }
        // Generic collection type called `Stack`.
        struct Stack<T> {
            var elements = T[]()

            mutating func push(element: T) {
                elements.append(element)
            }

            mutating func pop() -> T {
                return elements.removeLast()
            }
        }
        We can use certain type constraints on the types with generic functions and generic types. Use where after the type name to specify a list of requirements.

        // Generic function, which checks that the sequence contains a specified value.
        func containsValue<
            T where T: Sequence, T.GeneratorType.Element: Equatable>
            (sequence: T, valueToFind: T.GeneratorType.Element) -> Bool {

            for value in sequence {
                if value == valueToFind {
                    return true
                }
            }

            return false
        }
        In the simple cases, you can omit where and simply write the protocol or class name after a colon. Writing <T: Sequence> is the same as writing <T where T: Sequence>.
        ```
      END
    end
    
    entry do
      name 'Emoji/Unicode Support'
      introduction 'You can use any unicode character (including emoji) as variable names or in String'
      notes <<-'END'
        ``` swift
        var 😄 = "Smiley"                                 
         println(😄) // will print "Smiley"
         let 🌍 = "🐶🐺🐱🐭"
         var 🚢: String[] = []
         for 💕 in 🌍 {
             🚢.append(💕+💕)
         }
         println(🚢) // will print [🐶🐶, 🐺🐺, 🐱🐱, 🐭🐭]
        ```
      END
    end
  end
end
