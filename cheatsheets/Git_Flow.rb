cheatsheet do
  title 'Git Flow'
  docset_file_name 'Git_Flow'
  keyword 'gitflow'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Create'

    entry do
      name 'Create a git-flow project or convert an existing project to use git-flow'
      notes "
      ```
      git flow init
      ```"
    end
  end

  category do
    id 'Features'

    entry do
      name 'Start a new feature'
      notes "
      ```
      git flow feature start <feature_name>
      ```"
    end

    entry do
      name 'Finish up a feature'
      notes "
      ```
      git flow feature finish <feature_name>
      ```"
    end

    entry do
      name 'Publish a feature'
      notes "
      ```
      git flow feature publish <feature_name>
      ```"
    end

    entry do
      name 'Get a published feature'
      notes "
      ```
      git flow feature pull origin <feature_name>
      ```"
    end

    entry do
      name 'Track a feature on origin'
      notes "
      ```
      git flow feature track <feature_name>
      ```"
    end
  end

  category do
    id 'Releases'

    entry do
      name 'Start a release'
      notes "
      ```
      git flow release start <release_name> [<base>]
      ```"
    end

    entry do
      name 'Publish a release'
      notes "
      ```
      git flow release publish <release_name>
      ```"
    end

    entry do
      name 'Finish up a release'
      notes "
      ```
      git flow release finish <release_name>
      ```"
    end

    entry do
      name "Don't forget to push your tags"
      notes "
      ```
      git push --tags
      ```"
    end
  end

  category do
    id 'Bugfixes'

    entry do
      name 'Start a new bugfix'
      notes "
      ```
      git flow bugfix start <bugfix_name>
      ```"
    end

    entry do
      name 'Finish up a bugfix'
      notes "
      ```
      git flow bugfix finish <bugfix_name>
      ```"
    end

    entry do
      name 'Publish a bugfix'
      notes "
      ```
      git flow bugfix publish <bugfix_name>
      ```"
    end

    entry do
      name 'Get a published bugfix'
      notes "
      ```
      git flow bugfix pull origin <bugfix_name>
      ```"
    end

    entry do
      name 'Track a bugfix on origin'
      notes "
      ```
      git flow bugfix track <bugfix_name>
      ```"
    end
  end
  
  category do
    id 'Hotfixes'

    entry do
      name 'Start a hotfix'
      notes "
      ```
      git flow hotfix start <version_name> [<base_name>]
      ```"
    end

    entry do
      name 'Finish a hotfix'
      notes "
      ```
      git flow hotfix finish <version_name>
      ```"
    end
  end

    notes "
        * Based on Git Flow cheatsheet by [Daniel Kummer](http://danielkummer.github.io/git-flow-cheatsheet/)
        * Converted by [Robert Walker](https://github.com/robertwalker)
    "
end
