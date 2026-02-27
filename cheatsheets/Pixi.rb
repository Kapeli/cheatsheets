cheatsheet do
  title 'Pixi'
  docset_file_name 'Pixi'
  keyword 'pixi'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Getting Started'

    entry do
      name 'Install pixi (macOS/Linux)'
      notes "
        ```bash
        curl -fsSL https://pixi.sh/install.sh | bash
        ```"
    end

    entry do
      name 'Install pixi (Windows)'
      notes "
        ```powershell
        iwr -useb https://pixi.sh/install.ps1 | iex
        ```"
    end

    entry do
      name 'Create a new workspace'
      notes "
        ```bash
        pixi init <path>
        ```"
    end

    entry do
      name 'Create workspace with specific channels'
      notes "
        ```bash
        pixi init -c conda-forge -c bioconda <path>
        ```"
    end

    entry do
      name 'Create workspace with pyproject.toml format'
      notes "
        ```bash
        pixi init --format pyproject <path>
        ```"
    end

    entry do
      name 'Import from conda environment.yml'
      notes "
        ```bash
        pixi init --import environment.yml
        ```"
    end

    entry do
      name 'Create workspace for specific platforms'
      notes "
        ```bash
        pixi init -p linux-64 -p osx-arm64 <path>
        ```"
    end

    entry do
      name 'Quick start workflow'
      notes <<-'END'
        ```bash
        pixi init hello-world
        cd hello-world
        pixi add python
        pixi run python -c 'print("Hello World!")'
        ```
      END
    end
  end

  category do
    id 'Dependencies'

    entry do
      name 'Add a conda dependency'
      notes "
        ```bash
        pixi add numpy
        ```"
    end

    entry do
      name 'Add a PyPI dependency'
      notes "
        ```bash
        pixi add --pypi requests
        ```"
    end

    entry do
      name 'Add an editable PyPI dependency'
      notes "
        ```bash
        pixi add --pypi --editable ./my-local-package
        ```"
    end

    entry do
      name 'Add a dependency for a specific platform'
      notes "
        ```bash
        pixi add -p linux-64 cuda-toolkit
        ```"
    end

    entry do
      name 'Add a dependency to a named feature'
      notes "
        ```bash
        pixi add -f dev pytest
        ```"
    end

    entry do
      name 'Add a build or host dependency'
      notes "
        ```bash
        pixi add --build cmake
        pixi add --host openssl
        ```"
    end

    entry do
      name 'Add a dependency from a git repository'
      notes "
        ```bash
        pixi add --pypi --git https://github.com/owner/repo --branch main
        pixi add --pypi --git https://github.com/owner/repo --tag v1.0.0
        pixi add --pypi --git https://github.com/owner/repo --rev abc1234
        ```"
    end

    entry do
      name 'Remove a dependency'
      notes "
        ```bash
        pixi remove numpy
        pixi remove --pypi requests
        ```"
    end

    entry do
      name 'Update lockfile and environments'
      notes "
        ```bash
        pixi update
        pixi update numpy          # update specific package
        pixi update -e dev         # update specific environment
        pixi update --dry-run      # preview changes without applying
        ```"
    end

    entry do
      name 'Upgrade package version constraints'
      notes "
        ```bash
        pixi upgrade
        pixi upgrade numpy         # upgrade specific package
        ```"
    end

    entry do
      name 'Control version pinning strategy'
      notes "
        ```bash
        pixi add numpy --pinning-strategy semver
        # options: semver | minor | major | latest-up | exact-version | no-pin
        ```"
    end
  end

  category do
    id 'Environments'

    entry do
      name 'Install the environment'
      notes "
        ```bash
        pixi install
        ```"
    end

    entry do
      name 'Reinstall the environment'
      notes "
        ```bash
        pixi reinstall
        ```"
    end

    entry do
      name 'Activate a shell inside the environment'
      notes "
        ```bash
        pixi shell
        pixi shell -e dev          # activate a named environment
        exit                       # leave the pixi shell
        ```"
    end

    entry do
      name 'Run a command inside the environment'
      notes "
        ```bash
        pixi run python script.py
        pixi run -e dev pytest     # run in a named environment
        ```"
    end

    entry do
      name 'Run a command without activating pixi tasks'
      notes "
        ```bash
        pixi run -x python script.py
        ```"
    end

    entry do
      name 'Run a command in an isolated environment'
      notes "
        ```bash
        pixi run --clean-env python script.py
        ```"
    end

    entry do
      name 'Execute a command in a temporary environment'
      notes "
        ```bash
        pixi exec cowsay hello
        pixi exec --spec python=3.12 python -c 'import sys; print(sys.version)'
        ```"
    end

    entry do
      name 'Clean environments'
      notes "
        ```bash
        pixi clean                 # remove all environments
        pixi clean cache           # clean download cache
        ```"
    end

    entry do
      name 'Print the environment activation script'
      notes "
        ```bash
        pixi shell-hook
        pixi shell-hook -e dev
        eval \"$(pixi shell-hook)\"  # activate in current shell
        ```"
    end
  end

  category do
    id 'Tasks'

    entry do
      name 'Add a task'
      notes "
        ```bash
        pixi task add test 'pytest tests/'
        pixi task add build 'cargo build --release'
        ```"
    end

    entry do
      name 'Add a task with dependencies'
      notes "
        ```toml
        # pixi.toml
        [tasks]
        build = \"cargo build\"
        test = { cmd = \"cargo test\", depends-on = [\"build\"] }
        ```"
    end

    entry do
      name 'Remove a task'
      notes "
        ```bash
        pixi task remove test
        ```"
    end

    entry do
      name 'Create a task alias'
      notes "
        ```bash
        pixi task alias t test
        ```"
    end

    entry do
      name 'List all tasks'
      notes "
        ```bash
        pixi task list
        ```"
    end

    entry do
      name 'Run a task'
      notes "
        ```bash
        pixi run test
        pixi run test --skip-deps   # skip dependent tasks
        pixi run test --dry-run     # preview without executing
        ```"
    end

    entry do
      name 'Define tasks in pixi.toml'
      notes <<-'END'
        ```toml
        [tasks]
        start   = "python main.py"
        test    = { cmd = "pytest", depends-on = ["lint"] }
        lint    = "ruff check ."
        format  = { cmd = "ruff format .", cwd = "src" }
        ```
      END
    end
  end

  category do
    id 'Global Packages'

    entry do
      name 'Install a tool globally'
      notes "
        ```bash
        pixi global install ripgrep
        pixi global install ruff uv          # multiple tools
        pixi global install 'python=3.12'    # pinned version
        ```"
    end

    entry do
      name 'Uninstall a global tool'
      notes "
        ```bash
        pixi global uninstall ripgrep
        ```"
    end

    entry do
      name 'List globally installed tools'
      notes "
        ```bash
        pixi global list
        ```"
    end

    entry do
      name 'Update global tools'
      notes "
        ```bash
        pixi global update
        pixi global update ripgrep           # update specific tool
        ```"
    end

    entry do
      name 'Add a dependency to a global environment'
      notes "
        ```bash
        pixi global add -e my-env numpy
        ```"
    end

    entry do
      name 'Remove a dependency from a global environment'
      notes "
        ```bash
        pixi global remove -e my-env numpy
        ```"
    end

    entry do
      name 'Sync global manifest with installed environments'
      notes "
        ```bash
        pixi global sync
        ```"
    end

    entry do
      name 'Expose a binary from a global environment'
      notes "
        ```bash
        pixi global expose add --environment my-env my-binary
        ```"
    end

    entry do
      name 'Show dependency tree of a global environment'
      notes "
        ```bash
        pixi global tree
        pixi global tree -e my-env
        ```"
    end

    entry do
      name 'Edit the global manifest file'
      notes "
        ```bash
        pixi global edit
        ```"
    end
  end

  category do
    id 'Workspace Management'

    entry do
      name 'Add or remove channels'
      notes "
        ```bash
        pixi workspace channel add bioconda
        pixi workspace channel remove bioconda
        pixi workspace channel list
        ```"
    end

    entry do
      name 'Manage platforms'
      notes "
        ```bash
        pixi workspace platform add win-64
        pixi workspace platform remove win-64
        pixi workspace platform list
        ```"
    end

    entry do
      name 'Manage environments'
      notes "
        ```bash
        pixi workspace environment add dev
        pixi workspace environment remove dev
        pixi workspace environment list
        ```"
    end

    entry do
      name 'Manage features'
      notes "
        ```bash
        pixi workspace feature add cuda
        pixi workspace feature list
        ```"
    end

    entry do
      name 'Manage workspace version'
      notes "
        ```bash
        pixi workspace version get
        pixi workspace version set 1.2.0
        pixi workspace version major   # bump major
        pixi workspace version minor   # bump minor
        pixi workspace version patch   # bump patch
        ```"
    end

    entry do
      name 'Export workspace'
      notes "
        ```bash
        pixi workspace export conda-explicit-spec
        pixi workspace export conda-environment
        ```"
    end

    entry do
      name 'Import a file into an environment'
      notes "
        ```bash
        pixi import environment.yml
        ```"
    end
  end

  category do
    id 'Information & Inspection'

    entry do
      name 'Show system and workspace info'
      notes "
        ```bash
        pixi info
        ```"
    end

    entry do
      name 'List installed packages'
      notes "
        ```bash
        pixi list
        pixi list -e dev            # specific environment
        pixi list --json            # output as JSON
        ```"
    end

    entry do
      name 'Show dependency tree'
      notes "
        ```bash
        pixi tree
        pixi tree -e dev
        ```"
    end

    entry do
      name 'Search for a conda package'
      notes "
        ```bash
        pixi search numpy
        pixi search 'numpy>=1.24'
        pixi search -c conda-forge scipy
        ```"
    end
  end

  category do
    id 'Lockfile & Configuration'

    entry do
      name 'Update lockfile without installing'
      notes "
        ```bash
        pixi lock
        ```"
    end

    entry do
      name 'Use lockfile as-is (frozen)'
      notes "
        ```bash
        pixi install --frozen
        pixi run --frozen <task>
        ```"
    end

    entry do
      name 'Verify lockfile matches manifest'
      notes "
        ```bash
        pixi install --locked
        pixi run --locked <task>
        ```"
    end

    entry do
      name 'Manage pixi configuration'
      notes "
        ```bash
        pixi config set default-channels '[\"conda-forge\"]'
        pixi config get default-channels
        pixi config list
        pixi config edit             # open config in editor
        ```"
    end

    entry do
      name 'Authenticate to a channel'
      notes "
        ```bash
        pixi auth login prefix.dev --token <TOKEN>
        pixi auth login anaconda.org --username <USER>
        pixi auth logout prefix.dev
        ```"
    end
  end

  category do
    id 'Misc'

    entry do
      name 'Generate shell completions'
      notes "
        ```bash
        pixi completion --shell bash >> ~/.bashrc
        pixi completion --shell zsh  >> ~/.zshrc
        pixi completion --shell fish >> ~/.config/fish/completions/pixi.fish
        ```"
    end

    entry do
      name 'Update pixi itself'
      notes "
        ```bash
        pixi self-update
        pixi self-update --version 0.30.0   # specific version
        ```"
    end

    entry do
      name 'Build a conda package'
      notes "
        ```bash
        pixi build
        ```"
    end

    entry do
      name 'Upload a conda package'
      notes "
        ```bash
        pixi upload prefix.dev <path-to-package>
        ```"
    end
  end

  notes <<-'END'
    * Based on the [Pixi documentation](https://pixi.prefix.dev/latest/)
    * Pixi is a package manager for multi-language projects built on top of the conda ecosystem
    * CheatSheet author: Ismail Hatim
  END
end
