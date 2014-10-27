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
        class MyClass : OptionalSuperClass, OptionalProtocol1, OptionalProtocol2 {
            var myProperty: String
            var myOptionalProperty: String?
            // More properties...
            init() {
                myProperty = "Foo"
            }
        }
        ```
      END
    end

    entry do
      name 'Methods'
      notes <<-'END'
        ``` swift
        extension MyClass {
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
      name 'Objects'
      notes <<-'END'
        ``` swift
        let a = MyClass()
        a.myProperty
        a.doIt()
        a.doIt(1)
        a.doIt(2, b: 3)
        ```
      END
    end

    entry do
      name 'Enums'
      notes <<-'END'
        ``` swift
        enum CollisionType: Int {
            case Player = 1
            case Enemy = 2
        }
        let type = CollisionType.Player
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
