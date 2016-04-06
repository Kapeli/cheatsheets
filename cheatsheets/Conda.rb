cheatsheet do
  title 'Conda'
  docset_file_name 'Conda'
  keyword 'conda'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Managing Conda and Anaconda'

    entry do
      name 'Verify conda is installed, check version #'
      command 'conda info'
    end

    entry do
      name 'Update conda package and environment manager'
      command 'conda update conda'
    end
    entry do
      name 'Update the anaconda meta package'
      command 'conda update anaconda'
    end
  end

  category do
    id 'Managing Environments'

    entry do
      name 'Get a list of all my environments'
      command 'conda info --envs'
      command 'conda info -e'
      notes "Active environment shown with `*`"
    end

    entry do
      name 'Create an environment and install program(s)'
      command 'conda create --name snowflakes biopython'
      command 'conda create -n snowflakes biopython'
    end

    entry do
      name 'Activate the new environment to use it'
      command 'source activate snowflakes'
    end

    entry do
      name 'Deactivate the environment'
      command 'source deactivate'
    end

    entry do
      name 'Create a new environment, specify Python version'
      command 'conda create -n bunnies python=3.4 astroid'
    end

    entry do
      name 'Make exact copy of an environment'
      command 'conda create -n flowers --clone snowflakes'
    end

    entry do
      name 'Delete an environment'
      command 'conda remove -n flowers --all'
    end

    entry do
      name 'Save current environment to a file'
      command 'conda env export > puppies.yml'
    end

    entry do
      name 'Load environment from a file'
      command 'conda env create -f puppies.yml'
    end
  end

  category do
    id 'Managing Python'

    entry do
      name 'Check versions of Python available to install'
      command 'conda search --full-name python'
      command 'conda search -f python'
    end

    entry do
      name 'Install different version of Python in new environment'
      command 'conda create -n snakes python=3.4'
    end
  end

  category do
    id 'Managing .condarc Configuration'

    entry do
      name 'Get all keys and values from my .condarc file'
      command 'conda config --get'
    end

    entry do
      name 'Get value of the key channels from .condarc file'
      command 'conda config --get channels'
    end

    entry do
      name 'Add a new value to channels so conda looks for packages in this location'
      command 'conda config --add channels pandas'
    end
  end

  category do
    id 'Managing Packages, Including Python'

    entry do
      name 'View list of packages and versions installed in active environment'
      command 'conda list'
    end

    entry do
      name 'Search for a package to see if it is available to conda install'
      command 'conda search beautiful-soup'
    end

    entry do
      name 'Install a new package'
      command 'conda install -n bunnies beautiful-soup'
      notes <<-'END'
        **NOTE:** If you do not include the name of the environment, it will install in the current active environment.
      END
    end

    entry do
      name 'Update a package in the current environment'
      command 'conda update beautiful-soup'
    end

    entry do
      name 'Search for a package in a specific location (the pandas channel on Anaconda.org)'
      command 'conda search --override-channels -c pandas bottleneck'
    end

    entry do
      name 'Install a package from a specific channel'
      command 'conda install -c pandas bottleneck'
    end

    entry do
      name 'Search for a package to see if it is available from the Anaconda repository'
      command 'conda search --override-channels -c defaults beautiful-soup'
    end

    entry do
      name 'Install commercial Continuum packages'
      command 'conda install iopro accelerate'
    end

    entry do
      name 'Build a Conda package from a Python Package Index (PyPi) Package'
      command 'conda skeleton pypi pyinstrument'
      command 'conda build pyinstrument'
    end
  end

  category do
    id 'Removing Packages or Environments'

    entry do
      name 'Remove one package from any named environment'
      command 'conda remove --name bunnies beautiful-soup'
    end

    entry do
      name 'Remove one package from the active environment'
      command 'conda remove beautiful-soup'
    end

    entry do
      name 'Remove multiple packages from any environment'
      command 'conda remove --name bunnies beautiful-soup astroid'
    end

    entry do
      name 'Remove an environment'
      command 'conda remove --name snakes --all'
    end
  end

  notes <<-'END'
    * Based on the cheat sheet from [Conda Docs](http://conda.pydata.org/docs/using/cheatsheet.html)
    * Converted by [Charles](https://github.com/streeck)
  END
end
