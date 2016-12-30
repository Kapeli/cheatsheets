cheatsheet do
  title 'Semantic Commits'
  docset_file_name 'Semantic_Commits'
  keyword 'semanticcommits'
  source_url 'http://cheat.kapeli.com'

  introduction 'A smarter way to structure commit messages.'

  category do
    id 'Example'

    entry do
      name 'Example'
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
