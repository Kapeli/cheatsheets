cheatsheet do
    title 'cargo'
    docset_file_name 'cargo'
    keyword 'cargo'
    source_url 'http://cheat.kapeli.com'

    introduction 'Handy cheatsheet for Rust package manager `cargo`'

    category do
        id 'Usage'
        entry do
          command '--version'
          name 'Shows version information, hash and date'
        end
        entry do
            command '--list'
            name 'Lists all available commands'
        end
        entry do
            command '--verbose'
            name 'Enable verbose output. Shorthand -v and -vv very verbose output'
        end
        entry do
            command '--quiet'
            name 'Disable output on STDOUT'
        end
        entry do
            command '--color WHEN'
            name 'Enable colours, auto, always or never'
        end
        entry do
            command '--help'
            name 'Shows help message'
        end
        entry do
            command '--locked'
            name 'Require Cargo.lock is up to date'
        end
        entry do
            command '--frozen'
            name 'Require Cargo.lock and cache are up to date is up to date'
        end
        entry do
            command '-Z FLAG'
            name 'Unstable (nightly-only) flags to Cargo, see "cargo -Z help" for details for further information on unstable flags'
        end
        entry do
            command '--explain CODE'
            name 'Executes `rustc --explain CODE`'
        end
    end

    category do
      id 'Start a Rust project'
      entry do
        command 'new --bin APPLICATIONNAME'
        name 'Create new application/executable based project'
      end
      entry do
        command 'new --lib LIBRARYNAME'
        name 'Create new library based project'
      end
      entry do
        command 'init --bin'
        name 'Initialize a new application/executable in current directory'
      end
      entry do
        command 'init --lib'
        name 'Initialize a library in current directory'
      end
    end

    category do
        id 'Build a Rust project'
        entry do
            command 'build'
            name 'Build a Rust project'
        end
        entry do
            command 'build -j JOBS'
            name 'Build a Rust project in parallel with mutiple jobs'
        end
            entry do
            command 'bench'
            name 'Executes benchmark of project, requires tests'
        end
        entry do
            command 'check'
            name 'Analyze the current project and report possible errors, but does not build object files'
        end
        entry do
            command 'test'
            name 'Executes project tests, requires tests'
        end
        entry do
            command 'clean'
            name 'Clean out the build, by removing the target/ directory'
        end
    end

    category do
        id 'Maintain a Rust project'
        entry do
            command 'search'
            name 'search from crates'
        end
        entry do
            command 'install'
            name 'install crate crate'
        end
        entry do
            command 'install CREATENAME'
            name 'install a named crate'
        end
        entry do
            command 'install --list'
            name 'list installed crates'
        end
    end

    category do
        id 'Maintain a Rust crate'
        entry do
            command 'publish'
            name 'Package and upload this project to the registry'
        end
    end

    notes 'For more information on `cargo` see the [official documentation](https://doc.rust-lang.org/stable/cargo/)'
  end
