# coding: utf-8
# Create by <cam song><neosoyn@gmail.com>
# thanks to https://gist.github.com/AvnerCohen/4051934
# http://jessewarden.com/archives/node-bower-grunt-cheat-sheet-v1-jessewarden.com.pdf
cheatsheet do
  title 'npm cheatsheet'               # Will be displayed by Dash in the docset list
  docset_file_name 'npm'    # Used for the filename of the docset
  keyword 'npm node'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction '*NPM* cheat sheet'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'Getting Started'  # Must be unique and is used as title of the category

    entry do
      command 'npm ls'
      name 'Everything you have installed in the current directory'
    end
    entry do
      command 'npm search [search terms]'
      name 'Search the registry for packages matching the search'
    end
    entry do
      notes <<-'END'
        ```shell
        npm install [<name> [<name> ...]] [--save|--save-dev|--save-optional]
        ```
        This command installs a package, or packages, and any packages that
        it depends on in the current directory. If the package has a shrinkwrap
        file, the installation of dependencies will be driven by that.

        If no package.json exists, these options is ignored. If it exists, they’ll
        update them if they are already there.
        --save: Package will appear in your depedencies.
        --save-dev: Package will appear in your devDependencies.
        --save-optional: Package will appear in your optionalDependencies.
      END
    end
    entry do
      command 'npm install <module-name>@<version-name>'
      name 'Install a package in the version'
    end
    entry do
      command 'npm uninstall'
      name 'Uninstalls a package, completely removing everything npm installed
on its behalf.'
    end
    entry do
      command 'npm update [<name> [<name> ...]]'
      name 'This command will update all the packages listed to the latest version
(specified by the tag config). It will also install missing packages.'
    end
    entry do
      command 'npm update npm -g'
      name 'Update the global npm version.'
    end
    entry do
      command 'npm docs <module-name>'
      name 'Display the readme.md / documentation / npmjs.orf page of a give library.'
    end
    entry do
      command 'npm test'
      name 'Run package test suite, based on setup in package.json in:'
      notes <<-END
        ```shell
        "scripts" : {"test" : "node testfile.js"}
        ```
      END
    end
    entry do
      command 'npm outdated'
      name 'List outdated libraries compared to currently installe node_modules'
    end
    entry do
      command 'npm shrinkwrap'
      name 'Lock down dependency versions'
    end
  end

  category do
    id 'Develop'
    entry do
      command 'npm init'
      notes 'Asks you a bunch of questions, and then writes a package.json for you.
If you already have a package.json file, it’ll read that first, and default to
the options in there.'
    end
    entry do
      command 'npm install git://github.com/Marak/colors.js#v0.6.0'
      name 'Install a git specific release'
    end
    entry do
      command 'npm edit <module_name>'
      name 'Locally edit a dependency.'
    end
    entry do
      command 'npm config set editor "sublime"'
      name 'Setup editor for npm edit'
    end
    entry do
      command 'npm publish --tag beta'
      name 'Publish a package not under the default "latest" tag:'
    end
  end
end
