cheatsheet do
  title 'Semantic Branches'
  docset_file_name 'Semantic_Branches'
  keyword 'semanticbranches'
  source_url 'http://cheat.kapeli.com'

  introduction '
  See how a minor change to your branch name style can make you a better programmer.
  '
  
  category do
    id 'Format'
    
    entry do
      name 'Format'
      notes <<-EOF
```
<type>/*
<type>/<task_description>
<type>/<issue_number>/<task_description>
```
EOF
    end
  end

  category do
    id 'Example'

    entry do
      name 'Example'
      notes <<-EOF
```
feat/#1-init
^--^ ^-----^
|     |
|     +-> Summary in present tense.
|
+-------> Type: chore, docs, feat, fix, refactor, style, or test.
```
EOF
    end
  end

  category do
    id 'More Examples'
    entry do
      name 'feat or feature'
      notes 'New feature for the user, not a new feature for build script'
    end

    entry do
      name 'fix'
      notes 'Bug fix for the user, not a fix to a build script'
    end

    entry do
      name 'docs'
      notes 'Changes to the documentation'
    end

    entry do
      name 'style'
      notes 'Formatting, missing semi colons, etc; no production code change'
    end

    entry do
      name 'refactor'
      notes 'Refactoring production code, eg. renaming a variable'
    end

    entry do
      name 'test'
      notes 'Adding missing tests, refactoring tests; no production code change'
    end

    entry do
      name 'chore'
      notes 'Updating grunt tasks etc; no production code change'
    end
  end
end
