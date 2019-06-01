cheatsheet do
  title 'Carthage'
  docset_file_name 'Carthage'
  keyword 'carthage'
  source_url 'http://cheat.kapeli.com'

  # A cheat sheet must consist of categories
  category do
    id 'Downloading Libraries'  # Must be unique and is used as title of the category

    entry do
        command 'carthage bootstrap'
        name 'bootstrap'
        notes "`bootstrap` reads `Cartfile.resolved`, checks out and builds the dependencies at the versions listed."
    end
    entry do
        command 'carthage update'
        name 'update'
        notes "`update` reads `Cartfile`, runs a dependency resolver and checks out dependencies recursively –generally aiming for the newest versions that are compatible– and rebuild the project's dependencies."
    end
  end

  category do
    id 'Build'
    entry do
        command 'carthage build'
        name 'build'
        notes "This builds the frameworks. You might want to use that with --no-use-binaries. This may take time."
    end
  end

  category do
    id 'Using Parameters (Flags)'

    entry do
        command 'carthage build --no-skip-current'
        name '--no-skip-current'
        notes "This ensures that carthage doesn't skip over anything and builds the frameworks. You might want to use that with `--no-use-binaries`. This may take time."
    end
    entry do
        command 'carthage [update|bootstrap] --platform ios'
        name '--platform ios' 
        notes "Build for iPhone platform."
    end
    entry do
        command 'carthage [update|bootstrap] --platform macos'
        name '--platform macos'
        notes "Build for Mac desktop platform."
    end
    entry do
        command 'carthage [update|bootstrap] --platform all'
        name '--platform all'
        notes "Build for all platforms."
    end
    entry do
        command 'carthage [update|bootstrap] --use-submodules'
        name '--use-submodules'
        notes "Download the dependencies as submodules. If you use this --flag, this makes the dependencies available as Git submodules. This allows you to make changes in the dependencies, and commit and push those changes upstream."
    end
    entry do
        command 'carthage [update|bootstrap] --no-use-binaries'
        name '--no-use-binaries'
        notes "Use this flag to ensure all the workspace dependencies get checked out. Otherwise carthage will default to the binary framework releases."
    end
    entry do
        command 'carthage [update|bootstrap] --no-build'
        name '--no-build'
        notes "This is a real time saver. You can download the dependencies but not build the `.framework` file. This will also skip the creation of a `Carthage/build` folder."
    end
    entry do
        command 'carthage update [name of library]'
        name 'update [name of library]'
        notes "Instead of downloading and re-building all the dependencies, you can just specify which dependency to build."
    end
  end

  category do
    id 'Troubleshooting'
    entry do
        command 'carthage update --verbose'
        name 'verbose'
        notes "Spell out everything that is happening."
    end
  end

  category do
    id 'Dependency Origin vs. Version'
    entry do
        command 'github "[dependency]" "[branch]"'
        name 'Dependency Origin'
        notes "Checkout a dependency from `some-branch-or-tag-or-commit`"
    end
    entry do
        command 'github "[dependency]" ~> X.X.X'
        name 'Compatible with version X.X.X'
    end
    entry do
        command 'github "[dependency]" >= X.X.X'
        name 'At least version X.X.X'
    end
    entry do
        command 'github "[dependency]" == X.X.X'
        name 'Exactly version X.X.X'
    end
  end

  notes "
        * Based on Carthage cheatsheet by [Chris Mendez](https://www.chrisjmendez.com/2016/10/30/carthage-cheat-sheet/)
        * Converted by [Malte Bünz](https://github.com/mltbnz)
    "
end