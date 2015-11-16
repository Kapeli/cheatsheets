cheatsheet do
  title 'NSPredicate'
  docset_file_name 'NSPredicate'
  keyword 'predicate'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Format String Summary'
    entry do
        name 'Attribute name'
        notes <<-'END'
        Object's `attributeName` value is equal to value passed in

        ``` objc
        @"attributeName == %@"
        ```
        END
    end
    entry do
        name 'Keypath'
        notes <<-'END'
        Pass a string variable to `%K`, it will be represented as a keypath, then check if its value is equal to value passed in

        ``` objc
        "%K == %@"
        ```
        END
    end
    entry do
        name 'Templated for predicates'
        notes <<-'END'
        Templated for predicate, checks if the value of key name is in `$NAME_LIST`. Uses `predicateWithSubstitutionVariables`

        ``` objc
        @"%name IN $NAME_LIST"
        ```
        END
    end
    entry do
        name 'Substitution predicate'
        notes <<-'END'
        Checks if the constant value `name` is in `$NAME_LIST`. Uses `predicateWithSubstitutionVariables`

        ``` objc
        @"'name' IN $NAME_LIST"
        ```
        END
    end
    entry do
        name 'Example'
        notes <<-'END'

        ``` objc
        [NSPredicate predicateWithFormat: @"title == %@", @"minecraft"]
        ```
        END
    end
  end
  category do
    id 'Basic Comparisons'
    entry do
        name 'Equal'
        notes <<-'END'
        Left hand expression is equal to right hand expression

        ``` objc
        =,==
        ```
        END
    end
    entry do
        name 'Grater or equal'
        notes <<-'END'
        Left hand expression is greater than or equal to right hand expression

        ``` objc
        >=,=>
        ```
        END
    end
    entry do
        name 'Lesser or equal'
        notes <<-'END'
        Left hand expression is less than or equal to right hand expression

        ``` objc
        <=,=<
        ```
        END
    end
    entry do
        name 'Greater'
        notes <<-'END'
        Left hand expression is greater than right hand expression

        ``` objc
        >
        ```
        END
    end
    entry do
        name 'Lesser'
        notes <<-'END'
        Left hand expression is less than right hand expression

        ``` objc
        <
        ```
        END
    end
    entry do
        name 'Different'
        notes <<-'END'
        Left hand expression is not equal to right hand expression

        ``` objc
        !=,<>
        ```
        END
    end
    entry do
        name 'In'
        notes <<-'END'
        Left hand expression must appear in collection specified by right hand expression, i.e. `name IN {'Milk', 'Eggs', 'Bread'}`

        ``` objc
        IN
        ```
        END
    end
    entry do
        name 'Between'
        notes <<-'END'
        Left hand expression is between or equal to right hand expression, i.e. `1 BETWEEN {0, 33}`. If your left hand expression was 0 or 33 it would also make this true

        ``` objc
        BETWEEN
        ```
        END
    end
    entry do
        name 'Example'
        notes <<-'END'

        ``` objc
        [NSPredicate predicateWithFormat: @"expenses BETWEEN {200, 400}"]
        ```
        END
    end
  end
  category do
    id 'Keypath Collection Queries'
    entry do
        name 'Average'
        notes <<-'END'
        Returns the average of the objects in the collection as an NSNumber

        ``` objc
        @avg
        ```
        END
    end
    entry do
        name 'Count'
        notes <<-'END'
        Returns the number of objects in a collection as an NSNumber

        ``` objc
        @count
        ```
        END
    end
    entry do
        name 'Min'
        notes <<-'END'
        Returns the minimum value of the objects in the collection as an NSNumber

        ``` objc
        @min
        ```
        END
    end
    entry do
        name 'Max'
        notes <<-'END'
        Returns the maximum value of the objects in the collection as an NSNumber

        ``` objc
        @max
        ```
        END
    end
    entry do
        name 'Sum'
        notes <<-'END'
        Returns the sum of the objects in the collection based on the property

        ``` objc
        @sum
        ```
        END
    end
    entry do
        name 'Example'
        notes <<-'END'

        ``` objc
        [NSPredicate predicateWithFormat: @"expenses.@avg.doubleValue < 200"]
        ```
        END
    end
  end
  category do
    id 'Basic Compound Predicates'
    entry do
        name 'AND'
        notes <<-'END'
        Logical AND

        ``` objc
        AND,&&
        ```
        END
    end
    entry do
        name 'OR'
        notes <<-'END'
        Logical OR

        ``` objc
        OR,||
        ```
        END
    end
    entry do
        name 'NOT'
        notes <<-'END'
        Logical NOT

        ``` objc
        NOT,!
        ```
        END
    end
    entry do
        name 'Example'
        notes <<-'END'

        ``` objc
        [NSPredicate predicateWithFormat: @"age == 40 AND price > 67"]
        ```
        END
    end
  end
  category do
    id 'Object, Array, and Set Operators'
      entry do
          name 'Distinct union of objects'
          notes <<-'END'
          Returns an array containing the distinct objects in the property specified by the key path to the right of the operator

          ``` objc
          @distinctUnionOfObjects
          ```
          END
      end
      entry do
         name 'Union of objects'
         notes <<-'END'
         Returns the same as `@distinctUnionOfObects` except it also includes duplicates

         ``` objc
         @unionOfObjects
         ```
         END
     end
     entry do
       name 'Example'
         notes <<-'END'

         ``` objc
         NSArray *payees = [transactions valueForKeyPath:@"@distinctUnionOfObjects.payee"]
         ```
         END
     end
     entry do
        name 'Distinct union of arrays'
        notes <<-'END'
        Returns an array containing the distinct objects in the property specified by the key path to the right of the operator

        ``` objc
        @distinctUnionOfArrays
        ```
        END
    end
    entry do
       name 'Union of arrays'
       notes <<-'END'
       Returns the same as `@distinctUnionOfArrays` except it also includes duplicates

       ``` objc
       NOT,!
       ```
       END
   end
   entry do
     name 'Example'
       notes <<-'END'
       These must be run on an array of arrays. For example if you had:

       ``` objc
       NSArray *arrayOfTransactions = [[Array of transactions], [Array of transactions]]
       NSArray *payees = [arrayOfTransactions valueForKeyPath:@"@distinctUnionOfObjects.payee"]
       ```
       END
   end
   entry do
      name 'Distinct union of sets'
      notes <<-'END'
      Returns an NSSet instance containing distinct objects in the property specified by the key path to the right of the operator. Expects an NSSet instance containing NSSet instances

      ``` objc
      @distinctUnionOfSets
      ```
      END
    end

  end
  category do
    id 'String Comparison Operators'
    entry do
        name 'Begins with'
        notes <<-'END'
        Left hand expression begins with the right hand expression

        ``` objc
        BEGINSWITH
        ```
        END
    end
    entry do
        name 'Contains'
        notes <<-'END'
        Left hand expression contains the right hand expression

        ``` objc
        CONTAINS
        ```
        END
    end
    entry do
        name 'Ends with'
        notes <<-'END'
        Left hand expression ends with the right hand expression

        ``` objc
        ENDSWITH
        ```
        END
    end
    entry do
        name 'Like'
        notes <<-'END'
        Left hand expression equals the right hand expression: `?` and `*` are allowed as wildcard characters, where `?` matches 1 character and `*` matches 0 or more characters

        ``` objc
        LIKE
        ```
        END
    end
    entry do
        name 'Matches'
        notes <<-'END'
        Left hand expression equals the right hand expression using a regex - style comparison

        ``` objc
        MATCHES
        ```
        END
    end
    entry do
        name 'Example'
        notes <<-'END'

        ``` objc
        [NSPredicate predicateWithFormat: @"name BEGINSWITH 'm'"]
        ```
        END
    end
  end
  category do
    id 'Aggregate Operators'
    entry do
        name 'Some, any'
        notes <<-'END'
        Returns objects where `ANY` or `SOME` of the predicate results are true.

        ``` objc
        ANY,SOME
        ```
        END
    end
    entry do
        name 'All'
        notes <<-'END'
        Returns objects where `ALL` of the predicate results are true.

        ``` objc
        ALL
        ```
        END
    end
    entry do
        name 'None'
        notes <<-'END'
        Returns objects where `NONE` of the predicate results are true.

        ``` objc
        NONE
        ```
        END
    end
    entry do
        name 'Example'
        notes <<-'END'

        ``` objc
        [NSPredicate predicateWithFormat: @"ALL expenses > 1000"]
        ```
        END
    end
  end
  category do
    id 'Array Operations'
    entry do
        name 'Array index'
        notes <<-'END'
        Specifies the element at the specified index in the array

        ``` objc
        array[index]
        ```
        END
    end
    entry do
        name 'Array first'
        notes <<-'END'
        Specifies the first element in the array

        ``` objc
        array[FIRST]
        ```
        END
    end
    entry do
        name 'Array last'
        notes <<-'END'
        Specifies the last element in the array

        ``` objc
        array[LAST]
        ```
        END
    end
    entry do
        name 'Array size'
        notes <<-'END'
        Specifies the size of the array

        ``` objc
        array[Size]
        ```
        END
    end
    entry do
        name 'Example'
        notes <<-'END'
        Let's say we have a person with many dogs. `index` should be replaced with a number which will return the dog that you want to check against.

        ``` objc
        // Here we're checking if the first dog's age is 5.
        [NSPredicate predicateWithFormat: @"dogs[0].age = 5"]
        // Here we're checking if a person has 3 dogs
        [NSPredicate predicateWithFormat: @"dogs[SIZE] = 3"]
        ```
        END
    end
  end
  category do
    id 'Subqueries'
    entry do
        name 'Subquery'
        notes <<-'END'
        Iterates through the collection to return qualifying queries

        * `collection` - array or set of objects
        * `variableName` - variable that represents an iterated object
        * `predicateFormat` - predicate that runs using the variableName

        ``` objc
        SUBQUERY(collection, variableName, predicateFormat)
        ```
        END
    end
    entry do
        name 'Example'
        notes <<-'END'
        Assume this was run on an array of projects. It will return projects with tasks that were not completed by user Alex

        ``` objc
        [NSPredicate predicateWithFormat: @"SUBQUERY(tasks, $task, $task.completionDate != nil AND $task.user = 'Alex') .@count > 0"]
        ```
        END
    end
  end
  category do
    id 'Tip, Tricks and Examples'
    entry do
        name 'Common mistakes'
        notes <<-'END'

        * Using `[NSString stringWithFormat:]` to build predicates is prone to have non-escaped diacritics or artifacts like an apostrophe. Use `[NSPredicate predicateWithFormat:]` instead.
        * Using multiple `OR` instead of `IN`, results in repeatable code and can be less efficient
        * When using `REGEX` and `MATCHES`, make sure they are the last part of your predicate statement so it does less work. This way objects will be filtered before doing more heavy look ups

        END
    end
    entry do
        name 'Using self'
        notes <<-'END'

        When using a predicate on an array, `SELF` refers to each object in the array.
        Here's an example: Imagine you are a landlord figuring out which apartments have to pay their water bill.
        If you have a list of all the city wide apartments that still need to pay called `addressesThatOweWaterBill`,
        we can check that against our owned apartments, `myApartmentAddresses`.

        ``` objc
        NSPredicate *billingPredicate = [NSPredicate predicateWithFormat: @"SELF IN %@", addressesThatOweWaterBill]
        NSArray *myApartmentsThatOweWaterBill = [myApartmentAddresses filteredArrayUsingPredicate:billingPredicate]
        ```

        END
    end
    entry do
        name 'LIKE wildcard match with * and ?'
        notes <<-'END'
        `*` matches 0 or more characters. For example: Let's say we have an array of names we want to filter

        ``` objc
        @[@"Sarah", @"Silva", @"silva", @"Silvy", @"Silvia", @"Si*"]

        predicateWithFormat: @"SELF == %@", @"Sarah"
        // Will return “Sarah”

        predicateWithFormat: @"SELF LIKE[c] %@", "Si*"
        // Will return “Silva”, “silva”, “Silvy”, “Silvia”, “Si*”
        ```
        `?` matches 1 character only

        ``` objc
        predicateWithFormat: @"SELF LIKE[c] %@", "Silv?"
        // Will return “Silva”, “silva”, “Silvy”
        ```

        END
    end
    entry do
        name 'Quick tips'
        notes <<-'END'

        `CFStringTransform` normalizes strings if diacritic insensitive isn't enough.
        For example you could turn Japanese characters into a Latin alphabetic representation.
        It's extremely powerful with a lot of methods that you can see here: [http://nshipster.com/cfstringtransform/](http://nshipster.com/cfstringtransform/)

        Make sure your columns are indexed to improve performance of using IN operators

        * `[c]` case insensitive: lowercase & uppercase values are treated the same

        * `[d]` diacritic insensitive: special characters treated as the base character

        ``` objc
        predicateWithFormat: @"name CONTAINS[c] 'f'"
        ```

        END
    end
    entry do
        name 'Keypath collection queries'
        notes <<-'END'

        Keypath collection queries work best when you work with a lot of numbers.
        Being able to call the min or max, adding things up, and then filtering results are simpler when you only have to append an extra parameter.
        By having an array of expenses, you can do a quick check on if something is below or above a range of allowed expenses.

        ``` objc
        [NSPredicate predicateWithFormat: @"expenses.@avg.doubleValue < 200"]
        ```
        END
    end
    entry do
        name 'How subqueries work'
        notes <<-'END'

        ```
        SUBQUERY(collection, variableName, predicate)
        ```

        A subquery takes a collection then iterates through each object (as `variableName`) checking the predicate against that object.
        It works well if you have a collection (A) objects, and each object has a collection (B) other objects.
        If you're trying to filter A based on 2 or more varying attributes of B.


        ``` objc
        predicateWithFormat: @"SUBQUERY(tasks, $task, $task.completionDate != nil AND $task.user = 'Alex') .@count > 0"
        ```

        `SUBQUERY(…)` returns an array. We need to check if its `count > 0` to return the true or false value predicate expects.
        END
    end
  end
  notes <<-'END'
    * Based on a [cheat sheet](https://realm.io/news/nspredicate-cheatsheet/) by [Realm](https://realm.io/)
  END
end
