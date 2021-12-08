cheatsheet do
  title 'RBQL'
  docset_file_name 'RBQL'
  keyword 'rbql'
  source_url 'https://cheat.kapeli.com'

  category do
    id 'Supported SQL Keywords'

    entry do
      command 'SELECT'
      name 'The `SELECT` statement is used to query the database.'
    end
    entry do
      command 'WHERE'
      name 'the `WHERE` expression is evaluated for each row in the input data as a boolean expression.'
    end
    entry do
      command 'ORDER BY … [ DESC | ASC ]'
      name 'Orders the values returned by a SELECT statement ascending (`ASC`) or descending (`DESC`) order.'
    end
    entry do
      command '[ LEFT | INNER ] JOIN'
      name '
      - `INNER JOIN`: selects records that have matching values in both tables.
      - `LEFT JOIN`: selects all records from the left table, and the matching records from the right table.'
    end
    entry do
      command 'DISTINCT'
      name 'Eliminates duplicate rows.'
    end
    entry do
      command 'GROUP BY'
      name 'Groups together rows in a table that have the same values in all the columns listed.'
    end

    entry do
      command 'TOP'
      name 'Specifies the number of records to return.'
    end

    entry do
      command 'LIMIT'
      name 'Places an upper bound on the number of rows returned by the entire `SELECT` statement.'
    end

    entry do
      command 'UPDATE'
      name '`UPDATE` query produces a new table where original values are replaced according to the `UPDATE` expression, so it can also be considered a special type of `SELECT` query.'
    end
  end

  category do
    id 'RBQL variables'

    entry do
      name 'Value of i-th field in the current record in input table'
      notes "
      ```
      a1, a2,…, a{N}
      ```"
    end

    entry do
      name 'Value of i-th field in the current record in join table B'
      notes "
      ```
      b1, b2,…, b{N}
      ```"
    end

    entry do
      name 'Record number (1-based)'
      notes "
      ```
      NR
      ```"
    end

    entry do
      name 'Number of fields in the current record'
      notes "
      ```
      NF
      ```"
    end

    entry do
      name 'Value of the field referenced by it’s “name”, You can use this notation if the field in the header has a “good” alphanumeric name.'
      notes "
      ```
      a.name, b.Person_age, … a.{Good_alphanumeric_column_name}
      ```"
    end

    entry do
      name ' Value of the field referenced by it’s “name”, You can use this notation to reference fields by arbitrary values in the header.'
      notes "
      ```
      a[“object id”], a[‘9.12341234’], b[“%$ !! 10 20”] … a[“Arbitrary column name!”]
      ```"
    end
  end
  
  category do
    id 'Aggregate functions'

    entry do
      command 'COUNT'
      name 'Returns a count of the number of times that X is not NULL in a group.'
    end

    entry do
      command 'ARRAY_AGG'
      name 'Collects all the input values, including nulls, into an array.'
    end

    entry do
      command 'MIN'
      name 'Returns the minimum non-NULL value of all values in the group.'
    end

    entry do
      command 'MAX'
      name 'Returns the maximum value of all values in the group.'
    end

    entry do
      command 'SUM'
      name 'Return sum of all non-NULL values in the group.'
    end

    entry do
      command 'AVG'
      name 'Returns the average value of all non-NULL X within a group.'
    end

    entry do
      command 'VARIANCE'
      name 'Returns the population standard variance.'
    end

    entry do
      command 'MEDIAN'
      name 'Return the median (middle value) of numeric data.'
    end
  end

  category do
    id 'Aggregate statements'

    entry do
      command 'JOIN'
      name '[ LEFT JOIN and INNER JOIN'
      notes 'Join table B can be referenced either by its file path or by its command - an arbitrary string name the user should provide before executing the JOIN query.  
      RBQL supports `STRICT LEFT JOIN` which is like `LEFT JOIN`, but generates an error if any key in the left table “A” doesn’t have exactly one matching key in the right table “B”.  
      Table B path can be either relative to the working dir, relative to the main table or absolute.
      Limitation: `JOIN` statements can’t contain Python/JS expressions and must have the following form:  
      ```
      <JOIN_KEYWORD> (/path/to/table.tsv | table_command ) ON a… == b… [AND a… == b… [AND … ]]
      ```'
    end

    entry do
      command 'EXCEPT'
      name 'Can be used to select everything except specific columns. E.g. to select everything but columns 2 and 4, run:
      ```SELECT * EXCEPT a2, a4```
      Traditional SQL engines do not support this query mode.'
    end

    entry do
    command 'WITH'
    name 'You can set whether the input (and join) CSV file has a header or not using the environment configuration parameters which could be --with_headers CLI flag or GUI checkbox or something else.
    But it is also possible to override this selection directly in the query by adding either WITH (header) or WITH (noheader) statement at the end of the query.
    Example: `select top 5 NR, * with (header)`'
    end

    entry do
      command 'UNNEST()'
      name '`UNNEST(list)` takes a list/array as an argument and repeats the output record multiple times - one time for each value from the list argument.
      Example: `SELECT a1, UNNEST(a2.split(\';\'))`'
    end

    entry do
      command 'LIKE()'
      name 'RBQL does not support LIKE operator, instead it provides “like()” function which can be used like this: `SELECT * where like(a1, \'foo%bar\')`'
    end

  end

  category do
    id 'User Defined Functions'
    entry do
      name 'User Defined Functions (UDF)'
      notes 'RBQL supports User Defined Functions
      You can define custom functions and/or import libraries in two special files:  
      `* ~/.rbql_init_source.py` - for Python  
      `* ~/.rbql_init_source.js` - for JavaScript'
    end
  end
  category do 
    id 'Examples'
    entry do
      name 'With Python expressions'
      notes <<-'BLOCK'
      1. `select top 100 a1, int(a2) * 10, len(a4) where a1 == "Buy" order by int(a2) desc`
      1. `select * order by random.random()` - random sort
      1. ```select len(a.vehicle_price) / 10, a2 
      where int(a.vehicle_price) < 500 and a['Vehicle type'] 
      in ["car", "plane", "boat"] 
      limit 20
      ``` - referencing columns by names from header and using Python’s “in” to emulate SQL’s “in”
      1. `update set a3 = 'NPC' where a3.find('Non-playable character') != -1`
      1. `select NR, *` - enumerate records, NR is 1-based
      1. `select * where re.match(".*ab.*", a1) is not None` - select entries where first column has “ab” pattern
      1. `select a1, b1, b2 inner join ./countries.txt on a2 == b1 order by a1, a3` - example of join query
      1. `select MAX(a1), MIN(a1) where a.Name != 'John' group by a2, a3` - example of aggregate query
      1. `select *a1.split(':')` - Using Python3 unpack operator to split one column into many.  
      Do not try this with other SQL engines!
      BLOCK
    end

    entry do
      name 'With JavaScript expressions'
      notes <<-'BLOCK'
        1. `select top 100 a1, a2 * 10, a4.length where a1 == "Buy" order by parseInt(a2) desc`
        1. `select * order by Math.random()` - random sort
        1. ```select top 20 a.vehicle_price.length / 10, a2   
          where parseInt(a.vehicle_price) < 500   
            && ["car", "plane", * "boat"].indexOf(a['Vehicle type']) > -1   
          limit 20
          ``` - referencing columns by names from header
        1. `update set a3 = 'NPC' where a3.indexOf('Non-playable character') != -1*`
        1. `select NR, *` - enumerate records, NR is 1-based*
        1. `select a1, b1, b2 inner join ./countries.txt on a2 == b1 order by a1, a3` - example of join query
        1. `select MAX(a1), MIN(a1) where a.Name != 'John' group by a2, a3` - example of aggregate query
        1. `select ...a1.split(':')` - Using JS "destructuring assignment" syntax to split one column into many.  
        Do not try this with other SQL engines!
    BLOCK
    end
  end

  notes <<-'BLOCK'
    * Keywords are case insensitive
    * Limitations: 
      - Aggregate functions inside Python (or JS) expressions are not supported. Although you can use expressions inside aggregate functions.  
        `MAX(float(a1) / 1000)` - valid;  
        `MAX(a1) / 1000` - invalid.  
      - RBQL doesn’t support nested queries, but they can be emulated with consecutive queries.
      - Number of tables in all `JOIN` queries is always 2 (input table and join table), use consecutive queries to join 3 or more tables.
      
    * Based on the [RBQL](https://github.com/mechatroner/RBQL) README. The original can be found [here](https://github.com/mechatroner/RBQL/blob/master/README.md).
    * [RBQL: Official Site](https://rbql.org/)
    * RBQL is integrated with Rainbow CSV extensions in [Vim](https://github.com/mechatroner/rainbow_csv), [VSCode](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv), [Sublime Text](https://packagecontrol.io/packages/rainbow_csv) and [Atom](https://atom.io/packages/rainbow-csv) editors.
    * [RBQL in npm](https://www.npmjs.com/package/rbql): `$ npm install -g rbql`
    * [RBQL in PyPI](https://pypi.org/project/rbql/): `$ pip install rbql`
  BLOCK
end
