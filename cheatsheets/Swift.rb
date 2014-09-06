cheatsheet do
  title 'Swift'
  docset_file_name 'Swift'
  keyword 'swift'

  introduction 'Swift Cheat Sheet and Quick Reference'

  category do
    id 'Class Implementation'
    entry do
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
        ```
      END
    end
  end

  category do
    id 'Methods'
    entry do
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
        ```
      END
    end
  end

  category do
    id 'Creating/Using an Instance'
    entry do
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
  end

  category do
    id 'Enums'
    entry do
      notes <<-'END'
        ``` swift
        enum CollisionType: Int {
            case Player = 1
            case Enemy = 2
        }
        var type = CollisionType.Player
        ```
      END
    end
  end

  category do
    id 'Declaring Variables'
    entry do
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
  end

  category do
    id 'Control Flow'
    entry do
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
        ```
      END
    end
  end

  category do
    id 'String Quick Examples'
    entry do
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
  end

  category do
    id 'Array Quick Examples'
    entry do
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
        ```
      END
    end
  end

  category do
    id 'Dictionary Quick Examples'
    entry do
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
  end
end
