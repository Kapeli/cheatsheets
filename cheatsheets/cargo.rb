cheatsheet do
    title 'cargo'
    docset_file_name 'cargo'
    keyword 'cargo'
    source_url 'https://doc.rust-lang.org/stable/cargo/'

    introduction <<-'END'
    Handy cheatsheet for Rust package manager Cargo (`cargo`)

    Based on Cargo version
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
      id 'Start a Rust project'
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
        id 'Maintain a Rust project'
        entry do
            command 'search'
            name 'search for crates'
        end
        entry do
            command 'install'
            name 'install a Rust binary'
        end
        entry do
            command 'install CREATENAME'
            name 'install a named crate, see search above'
        end
        entry do
            command 'fetch --list'
            name 'lists installed crates'
        end
        entry do
            command 'install --list'
            name 'lists installed crates'
        end
    end

    category do
        id 'Maintain a Rust crate'
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
            name 'Cargo maintains a local cache of the registry index and of git checkouts of crates. By default these are stored under $HOME/.cargo, but this variable overrides the location of this directory. Once a crate is cached it is not removed by the clean command.'
        end
        entry do
            command 'CARGO_TARGET_DIR'
            name ''
        end
        entry do
            command 'RUSTC'
            name ''
        end
        entry do
            command 'RUSTC_WRAPPER'
            name ''
        end
        entry do
            command 'RUSTDOC'
            name ''
        end
        entry do
            command 'RUSTDOCFLAGS'
            name ''
        end
        entry do
            command 'RUSTFLAGS'
            name ''
        end
        entry do
            command 'CARGO_INCREMENTAL'
            name ''
        end
        entry do
            command 'CARGO_CACHE_RUSTC_INFO'
            name ''
        end

    end


    CARGO_HOME — Cargo maintains a local cache of the registry index and of git checkouts of crates. By default these are stored under $HOME/.cargo, but this variable overrides the location of this directory. Once a crate is cached it is not removed by the clean command.
    CARGO_TARGET_DIR — Location of where to place all generated artifacts, relative to the current working directory.
    RUSTC — Instead of running rustc, Cargo will execute this specified compiler instead.
    RUSTC_WRAPPER — Instead of simply running rustc, Cargo will execute this specified wrapper instead, passing as its commandline arguments the rustc invocation, with the first argument being rustc.
    RUSTDOC — Instead of running rustdoc, Cargo will execute this specified rustdoc instance instead.
    RUSTDOCFLAGS — A space-separated list of custom flags to pass to all rustdoc invocations that Cargo performs. In contrast with cargo rustdoc, this is useful for passing a flag to all rustdoc instances.
    RUSTFLAGS — A space-separated list of custom flags to pass to all compiler invocations that Cargo performs. In contrast with cargo rustc, this is useful for passing a flag to all compiler instances.
    CARGO_INCREMENTAL — If this is set to 1 then Cargo will force incremental compilation to be enabled for the current compilation, and when set to 0 it will force disabling it. If this env var isn't present then cargo's defaults will otherwise be used.
    CARGO_CACHE_RUSTC_INFO — If this is set to 0 then Cargo will not try to cache compiler version information.


    notes<<-'END'
        - For more information on Cargo see the [official documentation](https://doc.rust-lang.org/stable/cargo/)
        - For more information on the Cargo environment variables see the [official documentation](https://doc.rust-lang.org/stable/cargo/reference/environment-variables.html)
        - For access to the Cargo source code, visit [the repository on GitHub](https://github.com/rust-lang/cargo/)
END
  end
