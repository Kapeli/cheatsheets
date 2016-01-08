cheatsheet do
  title 'npm'
  docset_file_name 'npm'
  keyword 'npm'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Getting Started'

    entry do
      notes '
      ```
      npm ls
      ```'
      name 'List everything you have installed in the current directory'
    end
    entry do
      notes '
      ```
      npm search [search terms]
      ```'
      name 'Search the registry for packages matching terms'
    end
    entry do
      name 'Install a package'
      notes <<-'END'
        ```shell
        npm install [<name> [<name> ...]] [--save|--save-dev|--save-optional]
        ```
        This command installs a package, or packages, and any packages that
        it depends on in the current directory. If the package has a shrinkwrap
        file, the installation of dependencies will be driven by that.

        If no `package.json` exists, these options are ignored. If it exists, they'll
        update them if they are already there.

        * `--save`: Package will appear in your depedencies.
        * `--save-dev`: Package will appear in your devDependencies.
        * `--save-optional`: Package will appear in your optionalDependencies.
        * `--global`: Package will be installed globally (if you want to use it as a command line tool for example)
      END
    end
    entry do
      notes '
      ```
      npm install <module-name>@<version-name>
      ```'
      name 'Install a package in the version'
    end
    entry do
      notes '
      ```
      npm uninstall
      ```'
      name 'Uninstall a package, completely removing everything npm installed on its behalf'
    end
    entry do
      notes '
      ```
      npm update [<name> [<name> ...]]
      ```'
      name 'Update all the packages listed to the latest version (specified by the tag config). Also install missing packages'
    end
    entry do
      notes '
      ```
      npm update npm -g
      ```'
      name 'Update the global npm version'
    end
    entry do
      notes '
      ```
      npm docs <module-name>
      ```'
      name 'Display the README.md / documentation / npmjs.org page of a give library'
    end
    entry do
      notes '
      ```
      npm test
      ```'
      name 'Run package test suite, based on setup in package.json in'
      notes <<-END
        ```json
        "scripts" : {"test" : "node testfile.js"}
        ```
      END
    end
    entry do
      notes '
      ```
      npm outdated
      ```'
      name 'List outdated libraries compared to currently installed node_modules'
    end
    entry do
      notes '
      ```
      npm shrinkwrap
      ```'
      name 'Lock down dependency versions'
    end
  end

  category do
    id 'Develop'
    entry do
      name 'Interactively create a package.json file'
      notes '
      ```
      npm init
      ```
      
      Asks you a bunch of questions, and then writes a package.json for you. If you already have a package.json file, it\'ll read that first, and default to the options in there.'
    end
    entry do
      notes '
      ```
      npm install git://github.com/Marak/colors.js#v0.6.0
      ```'
      name 'Install a git specific release'
    end
    entry do
      notes '
      ```
      npm edit <module_name>
      ```'
      name 'Locally edit a dependency'
    end
    entry do
      notes '
      ```
      npm config set editor "sublime"
      ```'
      name 'Setup editor for npm edit'
    end
    entry do
      notes '
      ```
      npm publish --tag beta
      ```'
      name 'Publish a package not under the default "latest" tag'
    end
  end
end

# Created by <cam song><neosoyn@gmail.com>
# Thanks to https://gist.github.com/AvnerCohen/4051934
# http://jessewarden.com/archives/node-bower-grunt-cheat-sheet-v1-jessewarden.com.pdf
