cheatsheet do
    title 'YAML'
    docset_file_name 'YAML'
    keyword 'yaml'
    source_url 'http://cheat.kapeli.com'
    category do
        id 'Collection Indicators'
        entry do
            command '?'
            name 'Key indicator'
        end
        entry do
            command ':'
            name 'Value indicator'
        end
        entry do
            command '-'
            name 'Nested series entry indicator'
        end
        entry do
            command ','
            name 'Separate in-line branch entries'
        end
        entry do
            command '[]'
            name 'Surround in-line series branch'
        end
        entry do
            command '{}'
            name 'Surround in-line keyed branch'
        end
    end
    category do
        id 'Scalar Indicators'
        entry do
            command '\'\''
            name 'Surround in-line unescaped scalar (\'\' escaped \')'
        end
        entry do
            command '"' 
            name 'Surround in-line escaped scalar (see escape codes below)'
        end
        entry do
            command '|'
            name 'Block scalar indicator'
        end
        entry do
            command '>'
            name 'Folded scalar indicator'
        end
        entry do
            command '-'
            name 'Strip chomp modifier (```|-``` or ```>-```)'
        end
        entry do
            command '+'
            name 'Keep chomp modifier (```|+``` or ```>+```)'
        end
        entry do
            command '1-9'
            name 'Explicit indentation modifier (```|1``` or ```>2```)'
            notes 'Modifiers can be combined (```|2-```, ```>+1```)'
        end
    end
    category do
        id 'Alias Indicators'
        entry do
            command '&'
            name 'Anchor property'
        end
        entry do
            command '*'
            name 'Alias indicator'
        end
    end
    category do
        id 'Tag Property (usually unspecified)'
        entry do
            command 'none'
            name 'Unspecified tag (automatically resolved by application)'
        end
        entry do
            command '!'
            name 'Non-specific tag (by default, `!!map`/`!!seq`/`!!str`)'
        end
        entry do
            command '!foo'
            name 'Primary (by convention, means a local `!foo` tag)'
        end
        entry do
            command '!!foo'
            name 'Secondary (by convention, means `tag:yaml.org,2002:foo`)'
        end
        entry do
            command '!h!foo'
            name 'Requires `%TAG !h! <prefix>` (and then means `<prefix>foo`)'
        end
        entry do
            command '!<foo>'
            name 'Verbatim tag (always means `foo`)'
        end
    end
        category do
        id 'Document Indicators'
        entry do
            command '%'
            name 'Directive indicator'
        end
        entry do
            command '---'
            name 'Document header'
        end
        entry do
            command '...'
            name 'Document terminator'
        end
    end
    category do
        id 'Misc Indicators'
        entry do
            command ' #'
            name 'Throwaway comment indicator'
        end
        entry do
            command '`@'
            name 'Both reserved for future use'
        end
    end
    category do
        id 'Special Keys'
        entry do
            command '='
            name 'Default "value" mapping key'
        end
        entry do
            command '<<'
            name 'Merge keys from another mapping'
        end
    end
    category do
        id 'Core Types (default automatic tags)'
        entry do
            command '!!map'
            name '`{ Hash table, dictionary, mapping }`'
        end
        entry do
            command '!!seq'
            name '`{ List, array, tuple, vector, sequence }`'
        end
        entry do
            command '!!str'
            name 'Unicode string'
        end
    end
    category do
        id 'More Types'
        entry do
            command '!!set'
            name '`{ cherries, plums, apples }`'
        end
        entry do
            command '!!omap'
            name '`[ one: 1, two: 2 ]`'
        end
    end
    category do
        id 'Language Independent Scalar Types'
        entry do
            command '{ ~, null }'
            name 'Null (no value)'
        end
        entry do
            command '[ 1234, 0x4D2, 02333 ]'
            name '`[ Decimal int, Hexadecimal int, Octal int ]`'
        end
        entry do
            command '[ 1_230.15, 12.3015e+02 ]'
            name '`[ Fixed float, Exponential float ]`'
        end
        entry do
            command '[ .inf, -.Inf, .NAN ]'
            name '`[ Infinity (float), Negative, Not a number ]`'
        end
        entry do
            command '{ Y, true, Yes, ON  }'
            name 'Boolean true'
        end
        entry do
            command '{ n, FALSE, No, off }'
            name 'Boolean false'
        end
        entry do
            td_notes <<-'END'
            ```
            >-
              Base 64 binary value
            ```
            END
            name <<-'END'
            ```
            ? !!binary >
              R0lG...BADS=
            ```
            END
        end
    end
    category do
        id 'Escape Codes'
        entry do
            name 'Numeric'
            notes <<-END
            ```
            "\\x12"       : 8-bit
            "\\u1234"     : 16-bit
            "\\U00102030" : 32-bit
            ```
            END
        end
        entry do
            name 'Protective'
            notes <<-END
            ```
            "\\\\"     : '\\'
            "\\\""     : '"'
            "\\ "     : ' '
            "\\<TAB>" : TAB
            ```
            END
        end
        entry do
            name 'C'
            notes <<-END
            ```
            "\\0": NUL
            "\\a": BEL
            "\\b": BS
            "\\f": FF
            "\\n": LF
            "\\r": CR
            "\\t": TAB
            "\\v": VTAB
            ```
            END
        end
        entry do
            name 'Additional'
            notes <<-END
            ```
            "\\e": ESC
            "\\_": NBSP
            "\\N": NEL
            "\\L": LS
            "\\P": PS
            ```
            END
        end
    end
    category do
        id 'Examples'
        entry do
            name 'Scalars'
            notes <<-END
            ```yaml
            # scalar = value
            a: 1
            a: 1.234
            b: 'abc'
            b: "abc"
            b: abc
            c: false    # boolean type
            d: 2015-04-05   # date type
            
            # Enforcing strings
            b: !str 2015-04-05
            ```
            END
        end
        entry do
            name 'Sequences'
            notes <<-END
            ```yaml
            # sequence
            array:
            - 132
            - 2.434
            - 'abc'
            
            # sqeuence of sequences
            my_array:
            - [1, 2, 3]
            - [4, 5, 6]
            ```
            END
        end
        entry do
            name 'Hashes'
            notes <<-END
            ```yaml
            # Nest hash
            my_hash:
              subkey:
                subsubkey1: 5
                subsubkey2: 6
              another:
                somethingelse: 'Important!'
            
            # Hash of hashes
            my_hash: {nr1: 5, nr2: 6}
            ```
            END
        end
        entry do
            name 'HereDoc'
            notes <<-END
            ```yaml
            # block notation (newlines become spaces)
            content:
              Arbitrary free text
              over multiple lines stopping
              after indentation changes...
            
            # literal style (newlines are preserved)
            content: |
              Arbitrary free text
              over "multiple lines" stopping
              after indentation changes...
            
            # + indicator (keep extra newlines after block)
            content: |+
              Arbitrary free text with two newlines after
            
            
            # - indicator (remove extra newlines after block)
            content: |-
              Arbitrary free text without newlines after it
            
            
            # folded style (folded newlines are preserved)
            content: >
              Arbitrary free text
              over "multiple lines" stopping
              after indentation changes...
            ```
            END
        end
        entry do
            name 'Multiple documents'
            notes <<-END
            ```yaml
            ---
            content: doc1
            ---
            content: doc2
            ```
            END
        end
        entry do
            name 'Reference content'
            notes <<-END
            ```yaml
            ---
            values:
            - &ref Something to reuse
            - *ref  # Reused content
            ```
            END
        end
        entry do
            name 'Merging keys'
            notes <<-END
            ```yaml
            default_settings:
              install:
                dir: /usr/local
                owner: root
              config:
                enabled: false
            
            # Derive settings for 'my_app' from default and change install::owner
            my_app_settings:
              <<: *default_settings
              install:
                owner: my_user
            ```
            END
        end
        entry do
            name 'Complex mapping'
            notes <<-END
            ```yaml
            ---
            ? - key
            :
              - value
            # Note: key and value can be multiple, complex structures
            ```
            END
        end
    end
    notes <<-END
    * Based on the YAML.org [refcard](http://www.yaml.org/refcard.html) and a [cheat sheet](http://lzone.de/cheat-sheet/YAML) by lzone.de
    END
end