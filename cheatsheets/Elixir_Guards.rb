cheatsheet do
  title 'Elixir Guards'
  docset_file_name 'Elixir_Guards'
  keyword 'elixirguard'
  source_url 'http://cheat.kapeli.com'

  introduction <<-END
  Guard clauses allow Elixir to determine which function to invoke
  based not only on which arguments are passed, but also based on
  type or some tests involving their values. Guard clauses are defined
  using the `when` keyword.

  Examples:

  ```elixir
  defmodule Guard do
    def kind_of(x) when is_binary(x) do
      "\#{x} is a binary"
    end

    def kind_of(x) when is_atom(x) do
      "\#{x} is an atom"
    end

    def is_ten(x) when x > 10, do: "Greater than ten"

    def is_ten(x) when x < 10, do: "Less than ten"

    def is_ten(x), do: "Yes"
  end
  ```

  ```elixir
  max = fn
    x, y when x > y -> x
    x, y -> y
  end
  ```

  ```elxir
  case 42 do
    x when is_binary(x) -> "Nope"
    x                   -> "Yep"
  end
  ```

  Additionally, users may define their own guards. Example: the `Bitwise`
  module defines `bnot`, `~~~`, `band`, `&&&`, `bor`, `|||`, `bxor`, `^^^`,
  `bsl` `<<\<`, `bsr` `>>>`.
  END

  category do
    id 'Operators'

    entry do
      name 'Comparison'
      notes "
      `==`, `!=`, `===`, `!==`, `<`, `>`, `<=`, `>=`
      "
    end

    entry do
      name 'Arithmetic'
      notes "
      `+`, `-`, `*`, `/`

      Unary operators `+`, and `-` are also allowed.
      "
    end

    entry do
      name 'Boolean and Negation'
      notes "
      `or`, `and`, `not`

      Short-circuiting operators `&&`, `||`, and `!` are not allowed.
      "
    end

    entry do
      name 'Join'
      notes "
      `<>`, `++` as long as left side is a literal.
      "
    end

    entry do
      name 'Membership'
      notes "
      Test membership in a list or range with `in`.

      Example:

      ```elixir
      def is_animal(animal) when animal in [:dog, :cat, :fish] do
        true
      end

      def in_range(x) when x in 1..6 do
        true
      end
      ```
      "
    end
  end

  category do
    id 'Functions'

    entry do
      name 'Type-check'
      notes "
      See main Elixir documentation for more information.

      `is_atom/1`,
      `is_binary/1`,
      `is_bitstring/1`,
      `is_boolean/1`,
      `is_float/1`,
      `is_function/1`,
      `is_function/2`,
      `is_integer/1`,
      `is_list/1`,
      `is_map/1`,
      `is_number/1`,
      `is_pid/1`,
      `is_port/1`,
      `is_record/1`,
      `is_record/2`,
      `is_reference/1`,
      `is_tuple/1`
      "
    end

    entry do
      name 'Other'
      notes "
      See main Elixir documentation for more information.

      `abs(number)`,
      `binary_part(binary, start, length)`,
      `bit_size(bitstring)`,
      `byte_size(bitstring)`,
      `div(number, number)`,
      `elem(tuple, n)`,
      `hd(list)`,
      `length(list)`,
      `map_size(map)`,
      `node()`, `node(pid | ref | port)`,
      `rem(integer, integer)`,
      `round(number)`,
      `self()`,
      `tl(list)`,
      `trunc(number)`,
      `tuple_size(tuple)`
      "
    end
  end

  notes "
  * Based on [\"Expressions in guard clauses\"](http://elixir-lang.org/getting-started/case-cond-and-if.html#expressions-in-guard-clauses) from [Elixir-Lang Getting Started Guide](http://elixir-lang.org/getting-started/introduction.html)
  "
end
