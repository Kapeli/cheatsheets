cheatsheet do
  title 'Semantic Commits'               # Will be displayed by Dash in the docset list
  docset_file_name 'SemanticCommits'    # Used for the filename of the docset
  keyword 'semanticcommits'             # Used as the initial search keyword (listed in Preferences > Docsets)

  introduction 'A smarter way to structure commit messages'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'Example'  # Must be unique and is used as title of the category

    entry do
      name 'Example'    # A short name, can contain Markdown or HTML
      notes <<-EOF
```
feat: add hat wobble
^--^  ^------------^
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
      name 'chore'
      notes 'add Oyster build script'
    end

    entry do
      name 'docs'
      notes 'explain hat wobble'
    end

    entry do
      name 'feat'
      notes 'add beta sequence'
    end

    entry do
      name 'fix'
      notes 'remove broken confirmation message'
    end

    entry do
      name 'refactor'
      notes 'share logic between 4d3d3d3 and flarhgunnstow'
    end

    entry do
      name 'style'
      notes 'convert tabs to spaces'
    end

    entry do
      name 'test'
      notes 'ensure Tayne retains clothing'
    end
  end

  notes 'Many thanks to Jeremy Mack. [View the original article](http://seesparkbox.com/foundry/semantic_commit_messages).'
end
