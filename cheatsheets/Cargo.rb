cheatsheet do
    title 'Cargo'
    docset_file_name 'Cargo'
    keyword 'cargo'
    source_url 'http://cheat.kapeli.com'

    introduction <<-'END'
    Handy cheat sheet for Rust package manager Cargo (`cargo`)

    Based on Cargo version:

    ```bash
    $ cargo --version
    cargo 1.29.0 (524a578d7 2018-08-05)
    ```
END

    category do
        id 'Usage'
        entry do
          command '--version'
          name 'Shows version information, hash and date, see also the introduction above'
        end
        entry do
            command '--list'
            name 'Lists all installed and available commands'
        end
        entry do
            command '--verbose'
            name 'Enable verbose output. Shorthand -v and -vv for more (very) verbose output'
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
      id 'Start a Rust Project'
      entry do
        command 'new --bin APPLICATIONNAME'
        name 'Create new application/executable based project'
      end
      entry do
        command 'new --lib LIBRARYNAME'
        name 'Create new library based project, this is actually the default and `--lib` can be omitted'
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
        id 'Build a Rust Project'
        entry do
            command 'build'
            name 'Build a Rust project'
        end
        entry do
            command 'build -j JOBS'
            name 'Build a Rust project in parallel with mutiple jobs'
        end
        entry do
            command 'run'
            name 'Executes benchmark of project, requires tests'
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
            command 'doc'
            name 'Builds projects documentation, requires inlines documentation in source files'
        end
        entry do
            command 'clean'
            name 'Clean out the build, by removing the target/ directory'
        end
    end

    category do
        id 'Maintain a Rust Project'
        entry do
            command 'search'
            name 'Search for crates'
        end
        entry do
            command 'install'
            name 'Install a Rust binary'
        end
        entry do
            command 'install CREATENAME'
            name 'Install a named crate, see search above'
        end
        entry do
            command 'fetch --list'
            name 'Lists installed crates'
        end
        entry do
            command 'install --list'
            name 'Lists installed crates'
        end
    end

    category do
        id 'Maintain a Rust Crate'
        entry do
            command 'package'
            name 'Package this project into a distributable tarball'
        end
        entry do
            command 'publish'
            name 'Upload a package to the registry'
        end
        entry do
            command 'yank'
            name 'Remove a pushed crate from the index'
        end
    end

    category do
        id 'Environment Variables'
        entry do
            command 'CARGO_HOME'
            name 'Cargo maintains a local cache of the registry index and of git checkouts of crates. By default these are stored under `$HOME/.cargo`, this variable overrides the location of this directory. Once a crate is cached it will not removed by the clean command'
        end
        entry do
            command 'CARGO_TARGET_DIR'
            name 'Location of where to place generated artifacts, relative to the current working directory'
        end
        entry do
            command 'RUSTC'
            name 'Instead of running rustc, Cargo will execute specified compiler instead'
        end
        entry do
            command 'RUSTC_WRAPPER'
            name 'Instead of running rustc, Cargo will execute specified wrapper instead, passing as its commandline arguments the rustc invocation, with the first argument being rustc'
        end
        entry do
            command 'RUSTDOC'
            name 'Instead of running rustdoc, Cargo will execute specified rustdoc instance'
        end
        entry do
            command 'RUSTDOCFLAGS'
            name 'A space-separated list of custom flags to pass to rustdoc invocations that Cargo performs. In contrast to cargo rustdoc, this is useful for passing a flag to all rustdoc instances'
        end
        entry do
            command 'RUSTFLAGS'
            name 'A space-separated list of custom flags to pass to compiler invocations that Cargo performs. In contrast to cargo rustc, this is useful for passing a flag to all compiler instances'
        end
        entry do
            command 'CARGO_INCREMENTAL'
            name 'If set to 1 then Cargo will force incremental compilation to be enabled for the current compilation, and when set to 0 it will force disabling it. If this env var is not present then Cargo defaults will be used'
        end
        entry do
            command 'CARGO_CACHE_RUSTC_INFO'
            name 'If set to 0 then Cargo will not attempt to cache compiler version information'
        end
    end

    notes <<-'END'
        * For more information on Cargo see the [official documentation](https://doc.rust-lang.org/stable/cargo/)
        * For more information on the Cargo environment variables see the [official documentation](https://doc.rust-lang.org/stable/cargo/reference/environment-variables.html)
        * For access to the Cargo source code, visit [the repository on GitHub](https://github.com/rust-lang/cargo/)
    END

end
