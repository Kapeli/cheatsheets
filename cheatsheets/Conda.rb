cheatsheet do
  title 'Conda'
  docset_file_name 'Conda'
  keyword 'conda'

  introduction <<-'END'
    ### For full documentation of any command, type the command followed by `--help`
  END

  category do
    id 'Managing Conda and Anaconda'

    entry do
      name 'Verify conda is installed, check version #.'
      command 'conda info'
    end

    entry do
      name 'Update conda package and environment manager.'
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
      name 'Get a list of all my environments.'
      command 'conda info --envs'
      command 'conda info -e'
      notes "Active environment shown with '*'"
    end

    entry do
      name 'Create an environment and install program(s).'
      command 'conda create --name snowflakes biopython'
    end

    entry do
      name 'Activate the new environment to use it.'
      command 'source activate snowflakes'
    end

    entry do
      name 'Deactivate the environment.'
      command 'source deactivate'
    end

    entry do
      name 'Create a new environment, specify Python version.'
      command 'conda create -n hamsters python=3.4 astroid'
    end

    entry do
      name 'Make exact copy of an environment.'
      command 'conda create -n snakes --clone hamsters'
    end

    entry do
      name 'Check versions of Python available to install.'
      command 'conda search --full-name python'
      command 'conda search -f python'
    end
  end

  category do
    id 'Managing .condarc Configuration'

    entry do
      name 'Get all keys and values from my .condarc file.'
      command 'conda config --get'
    end

    entry do
      name 'Get value of the key channels from .condarc file.'
      command 'conda config --get channels'
    end

    entry do
      name 'Add a new value to channels so conda looks for packages in this location.'
      command 'conda config --add channels pandas'
    end
  end

  category do
    id 'Managing Packages, Including Python'

    entry do
      name 'View list of packages and versions installed in active environment.'
      command 'conda list'
    end

    entry do
      name 'Search for a package to see if it is available to conda install.'
      command 'conda search beautifulsoup'
    end

    entry do
      name 'Install a new package.'
      command 'conda install -n hamsters beautifulsoup'
      notes <<-'END'
        **NOTE:** If you do not include the name of the environment it will install in the current active environment.
      END
    end

    entry do
      name 'Update a package in the current environment.'
      command 'conda update beautifulsoup'
    end

    entry do
      name 'Search for a package in a specific location (the pandas channel on Anaconda.org).'
      command 'conda search --override-channels -c pandas bottleneck'
    end

    entry do
      name 'Install a package from a specific channel.'
      command 'conda install -c pandas bottleneck'
    end

    entry do
      name 'Search for a package to see if it is available from the Anaconda repository.'
      command 'conda search --override-channels -c defaults scrapy'
    end

    entry do
      name 'Install commercial Continuum packages.'
      command 'conda install iopro accelerate'
    end
  end

  category do
    id 'Removing Packages or Environments'

    entry do
      name 'Remove one package from any named environment.'
      command 'conda remove -n hamsters beautifulsoup'
    end

    entry do
      name 'Remove one package from the active environment'
      command 'conda remove beautifulsoup'
    end

    entry do
      name 'Remove multiple packages from any environment.'
      command 'conda remove -n snakes beautifulsoup astroid'
    end

    entry do
      name 'Remove an environment.'
      command 'conda remove -n snakes --all'
    end
  end

  notes <<-'END'
    * Based on the cheat sheet from [Conda Docs](http://conda.pydata.org/docs/using/cheatsheet.html)
    * Converted by [Charles](https://github.com/streeck).
  END
end
