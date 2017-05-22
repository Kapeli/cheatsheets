cheatsheet do
  title 'Angular-Cli'
  docset_file_name 'Angular-Cli'
  keyword 'angular cli'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Generate'
    entry do
      command 'ng generate class [name]'
      name 'generates a class'
			notes '`--app` (alias: `-a`) _default value: 1st app_'
			notes '`--spec`'
    end
    entry do
      command 'ng generate component [name]'
      name 'generates a component'
    end
    entry do
      command 'ng generate directive [name]'
      name 'generates a directive'
    end
    entry do
      command 'ng generate enum [name]'
      name 'generates a enum'
    end
    entry do
      command 'ng generate guard [name]'
      name 'generates a guard'
    end
    entry do
      command 'ng generate interface [name]'
      name 'generates a interface'
    end
    entry do
      command 'ng generate module [name]'
      name 'generates a module'
    end
    entry do
      command 'ng generate pipe [name]'
      name 'generates a ppipe'
    end
    entry do
      command 'ng generate service [name]'
      name 'generates a service'
    end
  end

  category do
    id 'testing'
    entry do
      command 'ng test'
      name 'Runs unit tests'
    end
    entry do
      command 'ng e2e'
      name 'Runs e2e tests'
    end
  end

  category do
    id 'Additional'
    entry do
      command 'ng new [name]'
      name 'creates a new angular application.'
      notes 'Default applications are created in a directory of the same name, with an initialized Angular application.'
    end
    entry do
      command 'ng serve'
      name 'builds the application and starts a web server'
    end
    entry do
      command 'ng lint'
      name 'will lint you app code using tslint.'
    end
    entry do
      command 'ng build'
      name 'compiles the application into an output directory'
      notes 'The build artifacts will be stored in the dist/ directory.'
    end
    entry do
      command 'ng get [key]'
      name 'Get a value from the configuration'
    end
    entry do
      command 'ng set [key]=[value]'
      name 'Set a value in the configuration'
    end
    entry do
      command 'ng doc [search term]'
      name 'Search docs'
      notes 'Opens the official Angular documentation for a given keyword on angular.io.'
    end
    entry do
      command 'ng eject'
      name 'ejects your app and output the proper webpack configuration and scripts'
    end
    entry do
      command 'ng xi18n'
      name 'Extracts i18n messages from the templates.'
    end
  end

  notes <<-'END'
    * Based Angular-Cli Docs on April 2017 Cli version 1.0.0.
    * [official angular-cli docs](https://github.com/angular/angular-cli/wiki).
    * made by Lee Blazek - BERZERK Interactive  [My github repo for this project](https://github.com/berzerk-interactive/cheatsheets).
  END
end
