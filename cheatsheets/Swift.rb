cheatsheet do
  title 'Swift'
  docset_file_name 'Swift'
  keyword 'swift'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Examples'
    entry do
      name 'Classes'
      notes <<-'END'
        ``` swift
        class MyClass : OptionalSuperClass, OptionalProtocol {
            var myProperty: String

            // Initializer (initialize all non-optionals)
            init(myProperty: String) {
                // use self.varName if argument has the same name
                self.myProperty = myProperty
            }
        }
        ```
      END
    end

    entry do
      name 'Methods'
      notes <<-'END'
        ``` swift
        class MyClass {
            func doIt() -> Int {
                return 0
            }
            func doIt(a: Int) -> Int {
                return a
            }
            func doIt(a: Int, b: Int) -> Int {
                return a + b
            }
        }
        var instance = MyClass()
        let variable1 = instance.doIt()
        let variable2 = instance.doIt(1)
        let variable3 = instance.doIt(1, b: 2)
        ```
      END
    end

    entry do
      name 'Properties'
      notes <<-'END'
        ```swift
        // Properties
        var myProperty: String
        var myOptionalProperty: String?
        
        // Public Property with Private Setter
        // (e.g. for objects with public properties that can only be set internally)
        public private(set) var myOtherProperty: String
        public private(set) var myOtherOptionalProperty: String?
        
        // Computed Properties
        var myInt: Int = 1
        var doubleInt: Int {
            get { return myInt * 2 }
            set { myInt = newValue / 2 }
        }
        
        // Read-Only Computed Properties
        var tripleInt: Int {
            return myInt * 3
        }
        
        // Property Observers
        var myOutput = 0 {
            willSet {
                print("setting myOutput to \(newValue)")
            }
            didSet { // never set greater than 10
                if myOutput > 10 {
                    myOutput = 10
                }
            }
        }
        ```
      END
    end
    
    entry do
      name 'Subscripts'
      notes <<-'END'
        ``` swift
        struct HTMLElement {
            var id = "hello"
            var style = "color: red;"
    
            // Can have any number of parameters
            // Can return any type
            subscript(attr: String) -> String {
                get {
                    if attr == "id"    { return id    }
                    if attr == "style" { return style }
                    return ""
                }

                set {
                    // "newValue" contains the... new value
                    if attr == "id"    { id    = newValue }
                    if attr == "style" { style = newValue }
                }

            }
        }
        
        let el = HTMLElement()
        print(el["id"])     // prints "hello"
        el["style"] = "float: left;"
        print(el["style"])  // prints "float: left;"
        ```
      END
    end

    entry do
      name 'Objects'
      notes <<-'END'
        ``` swift
        let a = MyClass(myProperty: "Hello")
        a.myProperty = "World"
        a.myFunc()
        ```
      END
    end

    entry do
      name 'Extensions'
      notes <<-'END'
        ``` swift
        extension Double {
            var isNegative: Bool { return isSignMinus }
        }
        let myDouble = -2.0
        myDouble.isNegative
        // returns true
        ```
      END
    end

    entry do
      name 'Closures'
      notes <<-'END'
        ``` swift
        func myclosure(number: Int) -> Int {
          return number + 1
        }
        numbers.map(myclosure)
        // returns [2, 3, 4, 5]

        let animals = ["fish", "cat", "elephant", "dog", "minion"]
        let sortedAnimals = animals.sorted { (first, second) in first > second }
        sortedAnimals = animals.sorted { $0 > $1 } // $0 and $1 mean first and second params respectively

        let evenCheckFunction = isEven
        let odds = Array(1...10).filter(!isEven)
        odds = Array(1...10).filter { (number) in number % 2 != 0 }
        odds = Array(1...10).filter { $0 % 2 == 0 }
        ```
      END
    end

    entry do
      name 'Protocols'
      notes <<-'END'
        ``` swift
        protocol MyProtocol {
            var myProperty: String? { get set }
            func myMethod()
        }
        class MyClass : MyProtocol {
            // Protocol implementation
            // Variables
            var myProperty: String?
            // Methods with body
            func myMethod() {
                print("Hello from protocol")
            }
        }
        ```
      END
    end

    entry do
      name 'Enums'
      notes <<-'END'
        ``` swift
        enum CompassPoint {
            case North, South, East, West
        }
        var direction = CompassPoint.North
        // As direction is a CompassPoint, short syntax is usable
        direction = .South

        // Raw Values
        enum CollisionType: Int {
            case Player = 1
            case Enemy = 2
        }
        let type = CollisionType.Player
        if type == .Player {
            print("It's a Player")
        }
        type.rawValue == 2 // false

        // Associated Values
        enum Computer {
            case Desktop(Int, String)
            case Laptop(Int, String)
        }
        var something = Computer.Laptop(8, "i7")
        switch something {
        case .Laptop(let ram, let cpu):
            print("It's a \(cpu) Laptop with \(ram) GB ram.")
        default:
            print("What else can it be?")
        }

        // Check enum value with switch
        switch direction {
        case .North:
            print("The direction is North")
        case .East:
            print("The direction is East")
        case .South:
            print("The direction is South")
        case .West:
            print("The direction is West")
        // Either check for all cases or implement the default: case
        }
        ```
      END
    end

    entry do
      name 'Variables'
      notes <<-'END'
        ``` swift
        var mutableDouble: Double = 1.0
        mutableDouble = 2.0
        let constantDouble: Double = 1.0
        // constantDouble = 2.0 // will generate an error

        var mutableInferredDouble = 1.0
        var optionalDouble: Double? = nil
        optionalDouble = 1.0

        if let definiteDouble = optionalDouble {
            definiteDouble
        }
        ```
      END
    end

    entry do
      name 'Optionals'
      notes <<-'END'
        ``` swift
        var s: String?
        s = "needle"
        s = nil

        let forced: String = s! // error if nil

        if let forced = s {
          print(forced)
        } else {
          print("not found")
        }

        let forced:String = s ?? "default value" //if (s == nil) use default value
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
        
        guard condition else {
            // return or throw
        }
        
        defer {
            // execute when leaving scope
            // regardless of how scope is left
            print("Cleaning Up!")
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

        let point = (1,1)
        switch point {
          case (let x, 0): print("point on x with displacement of \(x)")
          case (0, _): print("point on y")
          case (1...5, 1...5): print("point within bounds")
          case let (x,y) where x == y: print("point is on line")
          case let (x,y): print("point out of bounds at \(x), \(y)")
        }

        // omits upper value, use ... to include
        for i in 0..<3 {
        }
        // when no index is needed
        for _ in 0..<3 {
        }

        // Labeled Statements
        let matrix = [[1,2,3],[4,5,6],[7,8,9]]
        TheLoop: for column in matrix {
            for item in column {
                if item == 5 {
                    break TheLoop
                }
            }
        }
        ```
      END
    end
    
    entry do
      name 'Error Handling'
      notes <<-'END'
        ``` swift
        // ErrorType
        enum MyError : ErrorType {
            case Err1
            case Err2(errDesc: String)
        }

        // Throwing
        func throwingFunc() throws -> Int {
            // You can propogate throw to calling function
            try otherThrowingFunc()

            // You can directly throw error
            guard safeCondition == true else {
                throw MyError.Err1
            }
        }

        // do, try, catch
        do {
            // Perform any throwable operation in here
            try throwingFunc()
        } catch MyError.Err2(let desc) {
            // Catches have same pattern matching capability as Enum cases
            print(desc)
        } catch {
            // Catch anything that the above catches didn't catch
            print("Some Error")
        }

        // try!, try?
        
        // Causes a runtime error when error is thrown
        let result = try! throwingFunc()

        // Returns the result of throwingFunc as an optional; nil on throw
        let result: Int? = try? throwingFunc()
        ```
      END
    end

    entry do
      name 'Strings'
      notes <<-'END'
        ``` swift
        let personOne = "Ray"
        let personTwo = "Brian"
        let combinedString = "\(personOne): Hello, \(personTwo)!"
        var tipString = "2499"
        let tipInt = tipString.toInt()

        extension Double {
            init (string: String) {
                self = (string as NSString).doubleValue
            }
        }
        tipString = "24.99"
        let tip = Double(string: tipString)
        ```
      END
    end

    entry do
      name 'Arrays'
      notes <<-'END'
        ``` swift
        let person1 = "Ray"
        let person2 = "Brian"
        var array: [String] = [person1, person2]
        array += ["Waldo"]
        for person in array {
            print("person: \(person)")
        }
        let waldo = array[2]
        ```
      END
    end

    entry do
      name 'Dictionaries'
      notes <<-'END'
        ``` swift
        var dict: Dictionary<String, String> = ["Frog": "Kermit", "Pig": "Ms. Piggy", "Weirdo": "Gonzo"]
        dict["Weirdo"] = "Felipe"
        dict["Frog"] = nil // delete frog
        for (type, muppet) in dict {
            print("type: \(type), muppet: \(muppet)")
        }
        ```
      END
    end

    entry do
      name 'Tuples'
      notes <<-'END'
        ``` swift
        let p1 = (1,2)
        let p2 = (x:1, y:2)

        let (x1,y1) = p1
        let (x1,_) = p1
        let x1 = p1.0, y1 = p1.1

        let x = p2.x, y = p2.y
        ```
      END
    end
  end
end
