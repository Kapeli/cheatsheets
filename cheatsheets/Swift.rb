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
            // Properties
            var myProperty: String
            var myOptionalProperty: String?
            // Computed Properties
            var myInt: Int = 1
            var doubleInt {
                get { return myInt * 2 }
                set { myInt = newValue / 2 }
            }
            // Property Observers
            var myOutput = 0 {
                willSet { 
                    println("setting myOutput to \(newValue)") 
                }
                didSet { // never set greater than 10
                    if myOutput > 10 {
                        myOutput = 10
                    }
                }
            }
            // Methods
            func myFunc() {
                myOptionalProperty = "Foo"
                // Safe access
                if let myVar = myOptionalProperty {
                    println(myVar)
                }
                // Non-safe access, crashes if nil
                println(myOptionalProperty!)
            }
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
        let variable3 = instance.doIt(1, 2)
        ```
      END
    end

    entry do
      name 'Extensions'
      notes <<-'END'
        ``` swift
        extension String {
            var length: Int {
                get {
                    return countElements(self)
                }
            }
        }
        let length = "Hello".length
        ```
      END
    end

    entry do
      name 'Closures'
      notes <<-'END'
        ``` swift
        let myclosure:(Int) -> Int = {
            (number:Int) -> Int in
            return number + 1
        }
        let numbers = [1, 2, 3, 4]
        numbers.map(myclosure)
        // returns [2, 3, 4, 5]
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
                println("Hello from protocol")
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

        // Assign values to cases
        enum CollisionType: Int {
            case Player = 1
            case Enemy = 2
        }
        let type = CollisionType.Player
        if type == .Player {
            println("It's a Player")
        }
        type.rawValue == 2 // false

        // Other possible values
        enum Computer {
            case Desktop(Int, String)
            case Laptop(Int, String)
        }
        var something = Computer.Laptop(8, "i7")
        switch something {
        case .Laptop(let ram, let cpu):
            println("It's a \(cpu) Laptop with \(ram) GB ram.")
        default:
            println("What else can it be?")
        }

        // Check enum value with switch
        switch direction {
        case .North:
            println("The direction is North")
        case .East:
            println("The direction is East")
        case .South:
            println("The direction is South")
        case .West:
            println("The direction is West")
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
        for i in 0..<3 {
        }
        // when no index is needed
        for _ in 0..<3 {
        }
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
            println("person: \(person)")
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
            println("type: \(type), muppet: \(muppet)")
        }
        ```
      END
    end
  end
end
