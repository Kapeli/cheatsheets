cheatsheet do
  title 'FSharp'
  docset_file_name 'FSharp'
  keyword 'fsharp'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Basics'
    entry do
      name 'Comments'
      notes <<-'CODE'
        Block comments are placed between `(*` and `*)`. Line comments start from `//` and continue until the end of the line.

        ```fsharp
        (* This is block comment *)

        // And this is line comment
        ```

        XML doc comments come after `///` allowing us to use XML tags to generate documentation.

        ```fsharp
        /// The `let` keyword defines an (immutable) value
        let result = 1 + 1 = 2
        ```
      CODE
    end
    entry do
      name 'Strings'
      notes <<-'CODE'
        F# `string` type is an alias for `System.String` type.

        ```fsharp
        /// Create a string using string concatenation
        let hello = "Hello" + " World"
        ```

        Use *verbatim strings* preceded by `@` symbol to avoid escaping control characters (except escaping `"` by `""`).

        ```fsharp
        let verbatimXml = @"<book title=""Paradise Lost"">"
        ```

        We don't even have to escape `"` with *triple-quoted strings*.

        ```fsharp
        let tripleXml = """<book title="Paradise Lost">"""
        ```

        *Backslash strings* indent string contents by stripping leading spaces.

        ```fsharp
        let poem =
          "The lesser world was daubed\n\
            By a colorist of modest skill\n\
            A master limned you in the finest inks\n\
            And with a fresh-cut quill."
        ```
      CODE
    end
    entry do
      name 'Basic Types and Literals'
      notes <<-'CODE'
      Most numeric types have associated suffixes, e.g., `uy` for unsigned 8-bit integers and `L` for signed 64-bit integer.

      ```fsharp
      let b, i, l = 86uy, 86, 86L

      // [fsi:val b : byte = 86uy]
      // [fsi:val i : int = 86]
      // [fsi:val l : int64 = 86L]
      ```

      Other common examples are `F` or `f` for 32-bit floating-point numbers, `M` or `m` for decimals, and `I` for big integers.

      ```fsharp
      let s, f, d, bi = 4.14F, 4.14, 0.7833M, 9999I

      // [fsi:val s : float32 = 4.14f]
      // [fsi:val f : float = 4.14]
      // [fsi:val d : decimal = 0.7833M]
      // [fsi:val bi : System.Numerics.BigInteger = 9999]
      ```

      See [Literals (MSDN)](http://msdn.microsoft.com/en-us/library/dd233193.aspx) for complete reference.
      CODE
    end
    entry do
      name 'Tuples and Records'
      notes <<-'CODE'
        A *tuple* is a grouping of unnamed but ordered values, possibly of different types:

        ```fsharp
        // Tuple construction
        let x = (1, "Hello")

        // Triple
        let y = ("one", "two", "three")

        // Tuple deconstruction / pattern
        let (a', b') = x
        ```

        The first and second elements of a tuple can be obtained using `fst`, `snd`, or pattern matching:

        ```fsharp
        let c' = fst (1, 2)
        let d' = snd (1, 2)

        let print' tuple =
            match tuple with
            | (a, b) -> printfn "Pair %A %A" a b
        ```

        *Records* represent simple aggregates of named values, optionally with members:

        ```fsharp
        // Declare a record type
        type Person = { Name : string; Age : int }

        // Create a value via record expression
        let paul = { Name = "Paul"; Age = 28 }

        // 'Copy and update' record expression
        let paulsTwin = { paul with Name = "Jim" }
        ```

        Records can be augmented with properties and methods:

        ```fsharp
        type Person with
          member x.Info = (x.Name, x.Age)
        ```

        Records are essentially sealed classes with extra topping: default immutability, structural equality, and pattern matching support.

        ```fsharp
        let isPaul person =
        match person with
        | { Name = "Paul" } -> true
        | _ -> false
        ```
      CODE
    end
    entry do
      name 'Discriminated Unions'
      notes <<-'CODE'
        *Discriminated unions* (DU) provide support for values that can be one of a number of named cases, each possibly with different values and types.

        ```fsharp
        type Tree<'T> =
        | Node of Tree<'T> * 'T * Tree<'T>
        | Leaf

        let rec depth = function
        | Node(l, _, r) -> 1 + max (depth l) (depth r)
        | Leaf -> 0
        ```

        They allow to wrap a type using Single case union types ([Designing with types: Single case union types](https://fsharpforfunandprofit.com/posts/designing-with-types-single-case-dus/):

        ```fsharp
        type CustomerId = CustomerId of int
        let custId = CustomerId 1
        // deconstruct in the param
        let printCustomerId (CustomerId customerIdInt) =
          printfn "The CustomerId is %i" customerIdInt
        // or deconstruct explicitly through let statement
        let printCustomerId2 custId =
          let (CustomerId customerIdInt) = custId // deconstruct here
          printfn "The CustomerId is %i" customerIdInt
        ```

        F# Core has a few built-in discriminated unions for error handling, e.g., [Option](http://msdn.microsoft.com/en-us/library/dd233245.aspx) and [Choice](http://msdn.microsoft.com/en-us/library/ee353439.aspx).

        ```fsharp
        let optionPatternMatch input =
           match input with
            | Some i -> printfn "input is an int=%d" i
            | None -> printfn "input is missing"
        ```

        Single-case discriminated unions are often used to create type-safe abstractions with pattern matching support:

        ```fsharp
        type OrderId = Order of string

        // Create a DU value
        let orderId = Order "12"

        // Use pattern matching to deconstruct single-case DU
        let (Order id) = orderId
        ```
      CODE
    end
    entry do
      name 'Exceptions'
      notes <<-'CODE'
        Throw an exception using a built-in keyword:

        * `failwith` throws a generic `System.Exception`
        * `invalidArg` throws an `ArgumentException`
        * `nullArg` throws a `NullArgumentException`
        * `invalidOp` throws an `InvalidOperationException`

        ```fsharp
        let divideFailwith x y =
          if y = 0 then
            failwith "Divisor cannot be zero."
          else x / y
        ```

        Exception handling is done via `try/with` expressions, using the pattern matching syntax. To catch a specific .NET exception, you have to match with the cast operator `:?`.

        ```fsharp
        let divide x y =
          try
            Some (x / y)
          with :? System.DivideByZeroException ->
            printfn "Division by zero!"
            None
        ```

        The `try/finally` expression enables you to execute clean-up code even if a block of code throws an exception. Here's an example which also defines custom exceptions.

        ```fsharp
        exception InnerError of string
        exception OuterError of string

        let handleErrors x y =
           try
             try
                if x = y then raise (InnerError("inner"))
                else raise (OuterError("outer"))
             with InnerError(str) ->
               printfn "Error1 %s" str
           finally
              printfn "Always print this."
        ```

        Raising an exception is done using the `raise` keyword:

        ```fsharp
        exception MyError of string
        raise (MyError "my error")
        ```
      CODE
    end
  end
  category do
    id 'Functions'
    entry do
      name 'Definition'
      notes <<-'CODE'
        The `let` keyword also defines named functions.

        ```fsharp
        let negate x = x * -1
        let square x = x * x
        let print x = printfn "The number is: %d" x

        let squareNegateThenPrint x =
        print (negate (square x))
        ```

        Infix operator declaration:

        ```fsharp
        let (**) x n = Math.Pow(x, n)
        ```
      CODE
    end
    entry do
      name 'Pipe and composition operators'
      notes <<-'CODE'
        Pipe operator `|>` is used to chain functions and arguments together. Double-backtick identifiers are handy to improve readability especially in unit testing:

        ```fsharp
        let ``square, negate, then print`` x =
          x |> square |> negate |> print
        ```

        This operator is essential in assisting the F# type checker by providing type information before use:

        ```fsharp
        let sumOfLengths (xs : string []) =
          xs
          |> Array.map (fun s -> s.Length)
          |> Array.sum
        ```

        Composition operator `>>` is used to compose functions:

        ```fsharp
        let squareNegateThenPrint' =
          square >> negate >> print
        ```
      CODE
    end
    entry do
      name 'Recursive functions'
      notes <<-'CODE'
        The `rec` keyword is used together with the `let` keyword to define a recursive function:

        ```fsharp
        let rec fact x =
          if x < 1 then 1
          else x * fact (x - 1)
        ```

        *Mutually recursive* functions (those functions which call each other) are indicated by `and` keyword:

        ```fsharp
          let rec even x =
            if x = 0 then true
            else odd (x - 1)
          and odd x =
            if x = 1 then true
            else even (x - 1)
        ```
      CODE
    end
  end
  category do
    id 'Collections'
    entry do
      name 'Lists'
      notes <<-'CODE'
        A *list* is an immutable collection of elements of the same type.

        ```fsharp
        // Lists use square brackets and `;` delimiter
        let list1 = [ "a"; "b" ]
        // :: (cons operator) is prepending
        let list2 = "c" :: list1
        // @ is concat
        let list3 = list1 @ list2

        // Recursion on list using (::) operator
        let rec sum list =
          match list with
          | [] -> 0
          | x :: xs -> x + sum xs
        ```
      CODE
    end
    entry do
      name 'Arrays'
      notes <<-'CODE'
        *Arrays* are fixed-size, zero-based, mutable collections of consecutive data elements.

        ```fsharp
        // Arrays use square brackets with bar
        let array1 = [| "a"; "b" |]
        // Indexed access using dot
        let first = array1.[0]
        ```
      CODE
    end
    entry do
      name 'Sequences'
      notes <<-'CODE'
        A *sequence* is a logical series of elements of the same type. Individual sequence elements are computed only as required, so a sequence can provide better performance than a list in situations in which not all the elements are used.

        ```fsharp
        // Sequences can use yield and contain subsequences
        let seq1 =
          seq {
            // "yield" adds one element
            yield 1
            yield 2

            // "yield!" adds a whole subsequence
            yield! [5..10]
          }
        ```
      CODE
    end
    entry do
      name 'Higher-order functions on collections'
      notes <<-'CODE'
        The same list `[ 1; 3; 5; 7; 9 ]` or array `[| 1; 3; 5; 7; 9 |]` can be generated in various ways.

        - Using range operator `..`

        ```fsharp
        let xs = [ 1..2..9 ]
        ```

        - Using list or array comprehensions

        ```fsharp
        let ys = [| for i in 0..4 -> 2 * i + 1 |]
        ```

        - Using `init` function

        ```fsharp
        let zs = List.init 5 (fun i -> 2 * i + 1)
        ```

        Lists and arrays have comprehensive sets of higher-order functions for manipulation.

        - `fold` starts from the left of the list (or array) and `foldBack` goes in the opposite direction

        ```fsharp
        let xs' = Array.fold (fun str n ->
          sprintf "%s,%i" str n) "" [| 0..9 |]
        ```

        - `reduce` doesn't require an initial accumulator

        ```fsharp
        let last xs = List.reduce (fun acc x -> x) xs
        ```

        - `map` transforms every element of the list (or array)

        ```fsharp
        let ys' = Array.map (fun x -> x * x) [| 0..9 |]
        ```

        - `iter`ate through a list and produce side effects

        ```fsharp
        let _ = List.iter (printfn "%i") [ 0..9 ]
        ```

        All these operations are also available for sequences. The added benefits of sequences are laziness and uniform treatment of all collections implementing `IEnumerable<'T>`.

        ```fsharp
        let zs' =
          seq {
          for i in 0..9 do
                printfn "Adding %d" i
                  yield i
            }
        ```
      CODE
    end
  end
  category do
    id 'Pattern Matching'
    entry do
      name 'Pattern Matching'
      notes <<-'CODE'
        Pattern matching is often facilitated through `match` keyword.

        ```fsharp
        let rec fib n =
          match n with
          | 0 -> 0
          | 1 -> 1
          | _ -> fib (n - 1) + fib (n - 2)
        ```

        In order to match sophisticated inputs, one can use `when` to create filters or guards on patterns:

        ```fsharp
        let sign x =
          match x with
          | 0 -> 0
          | x when x < 0 -> -1
          | x -> 1
        ```

        Pattern matching can be done directly on arguments:

        ```fsharp
        let fst' (x, _) = x
        ```

        or implicitly via `function` keyword:

        ```fsharp
        /// Similar to `fib`; using `function` for pattern matching
        let rec fib' = function
          | 0 -> 0
          | 1 -> 1
          | n -> fib' (n - 1) + fib' (n - 2)
        ```

        For more complete reference visit [Pattern Matching (MSDN)](http://msdn.microsoft.com/en-us/library/dd547125.aspx).
      CODE
    end
    entry do
      name 'Active Patterns'
      notes <<-'CODE'
        *Complete active patterns*:

        ```fsharp
        let (|Even|Odd|) i =
          if i % 2 = 0 then Even else Odd

        let testNumber i =
            match i with
            | Even -> printfn "%d is even" i
            | Odd -> printfn "%d is odd" i
        ```

        *Parameterized active patterns*:

        ```fsharp
        let (|DivisibleBy|_|) by n =
          if n % by = 0 then Some DivisibleBy else None

        let fizzBuzz = function
            | DivisibleBy 3 & DivisibleBy 5 -> "FizzBuzz"
            | DivisibleBy 3 -> "Fizz"
            | DivisibleBy 5 -> "Buzz"
            | i -> string i
        ```

        *Partial active patterns* share the syntax of parameterized patterns but their active recognizers accept only one argument.
      CODE
    end
  end
  category do
    id 'Scripting'
    entry do
      name 'Compiler Directives'
      notes <<-'CODE'
        Load another F# source file into FSI.

        ```fsharp
        #load "../lib/StringParsing.fs"
        ```

        Reference a .NET assembly (`/` symbol is recommended for Mono compatibility).

        ```fsharp
        #r "../lib/FSharp.Markdown.dll"
        ```

        Include a directory in assembly search paths.

        ```fsharp
        #I "../lib"
        #r "FSharp.Markdown.dll"
        ```

        Other important directives are conditional execution in FSI (`INTERACTIVE`) and querying current directory (`__SOURCE_DIRECTORY__`).

        ```fsharp
        #if INTERACTIVE
        let path = __SOURCE_DIRECTORY__ + "../lib"
        #else
        let path = "../../../lib"
        #endif
        ```
      CODE
    end
  end
end
