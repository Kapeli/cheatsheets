cheatsheet do
    title 'dzil'
    docset_file_name 'dzil'
    keyword 'dzil'
    source_url 'http://cheat.kapeli.com'

    category do
        id 'Usage'

        entry do
            notes <<-'END'
            Usage:

            ```
            dzil <command> [-?hIVv] [long options...]
	            -v --verbose                        log additional output
	            -V STR... --verbose-plugin STR...   log additional output from some
	                                                plugins only
	            -I STR... --lib-inc STR...          additional @INC dirs
	            -? -h --help                        show help
            ```

            Displaying all available commands:

            ```shell
            dzil commands
            ```

            Displaying general help message:

            ```shell
            dzil help
            ```

            Displaying command help message:

            ```shell
            dzil help COMMAND
            ```
            END
        end
    end

    category do
        id 'new'

        entry do
            notes <<-'END'
            Set up a new distribution
            END
        end

        entry do
            command 'new'
            name 'Set up a new distribution'
        end
        entry do
            command '-p STR --profile STR'
            name 'Name of the profile to use'
        end
        entry do
            command '-P STR --provider STR'
            name 'Name of the profile provider to use'
        end
    end

    category do
        id 'build'

        entry do
            notes <<-'END'
            Build the distribution
            END
        end

        entry do
            command 'build'
            name 'Build the distribution'
        end
        entry do
            command '--trial'
            name 'Build a trial release that PAUSE will not index'
        end
        entry do
            command '--tgz'
            name 'build a tarball (default behavior)'
        end
        entry do
            command '--in STR'
            name 'The directory in which to build the distribution'
        end
    end

    category do
        id 'clean'

        entry do
            notes <<-'END'
            Clean the build for the distribution
            END
        end

        entry do
            command 'clean'
            name 'Clean out the build'
        end
        entry do
            command '-n --dry-run'
            name 'Do not remove anything, just show what would be done'
        end
    end

    category do
        id 'test'

        entry do
            notes <<-'END'
            Run the test suite for the distribution
            END
        end

        entry do
            command 'test'
            name 'Test the distribution'
        end
        entry do
            command '--release'
            name 'Enables the `RELEASE_TESTING` environment variable'
        end
        entry do
            command '--automated'
            name 'Enables the `AUTOMATED_TESTING` environment variable'
        end
        entry do
            command '--extended'
            name 'Enables the `EXTENDED_TESTING` environment variable'
        end
        entry do
            command '--author'
            name 'Enables the `AUTHOR_TESTING` environment variable (default behavior)'
        end
        entry do
            command '--all'
            name 'Enables the `RELEASE_TESTING`, `AUTOMATED_TESTING`, `EXTENDED_TESTING` and `AUTHOR_TESTING` environment variables'
        end
        entry do
            command '--keep --keep-build-dir'
            name 'Keep the build directory even after a success'
        end
        entry do
            command '-j INT --jobs INT'
            name 'Number of parallel test jobs to run'
        end
        entry do
            command '--test-verbose'
            name 'Enables verbose testing (`TEST_VERBOSE` environment variable on `Makefile.PL`, `--verbose` on `Build.PL`'
        end
    end

    category do
        id 'xtest'

        entry do
            notes <<-'END'
            Run the extra tests for the distribution
            END
        end

        entry do
            command 'xtest'
            name 'run xt tests for the distribution'
        end
        entry do
            command '--author'
            name 'Enables the `AUTHOR_TESTING` environment variable (default behavior)'
        end
        entry do
            command '--release'
            name 'Enables the `RELEASE_TESTING` environment variable (default behavior)'
        end
        entry do
            command '--automated'
            name 'Enables the `AUTOMATED_TESTING` environment variable'
        end
        entry do
            command '--all'
            name 'Enables the `RELEASE_TESTING`, `AUTOMATED_TESTING` and `AUTHOR_TESTING` environment variables'
        end
        entry do
            command '-j INT --jobs INT'
            name 'Number of parallel test jobs to run'
        end
    end

    category do
        id 'smoke'

        entry do
            notes <<-'END'
            Run a smoke test
            END
        end

        entry do
            command 'smoke'
            name 'Clean out the build'
        end

        entry do
            command '--release'
            name 'Enables the `RELEASE_TESTING` environment variable'
        end

        entry do
            command '--automated'
            name 'Enables the `AUTOMATED_TESTING` environment variable (default behavior)'
        end

        entry do
            command '--author'
            name 'Enables the `AUTHOR_TESTING` environment variable'
        end
    end

    category do
        id 'install'

        entry do
            notes <<-'END'
            Install the distribution
            END
        end

        entry do
            command 'install'
            name 'Install the distribution'
        end

        entry do
            command '--install-command STR'
            name 'Command to run to install (e.g. `cpan .`)'
        end

        entry do
            command '--keep --keep-build-dir'
            name 'Keep the build directory even after a success'
        end
    end

    category do
        id 'add'

        entry do
            notes <<-'END'
            Adds a new module to an existing distribution
            END
        end

        entry do
            command 'add'
            name 'Adds a new module to an existing distribution'
        end
        entry do
            command '-p STR --profile STR'
            name 'Name of the profile to use'
        end
        entry do
            command '-P STR --provider STR'
            name 'Name of the profile provider to use'
        end
    end

    category do
        id 'listdeps'

        entry do
            notes <<-'END'
            Working With Dependencies
            END
        end

        entry do
            command 'listdeps'
            name 'Lists dependencies, can be piped to CPAN client for installation'
        end
        entry do
            command '--author / --develop'
            name 'Include author/develop dependencies'
        end
        entry do
            command '--missing'
            name 'List only the missing dependencies'
        end
        entry do
            command '--requires'
            name 'List the required dependencies'
        end
        entry do
            command '--recommends'
            name 'List the recommended dependencies'
        end
        entry do
            command '--suggests'
            name 'List the suggested dependencies'
        end
        entry do
            command '--versions'
            name 'Include required version numbers in the listing'
        end
        entry do
            command '--cpanm-versions'
            name 'format versions for consumption by `cpanm`'
        end
        entry do
            command '--json'
            name 'List dependencies by phase (build, develop, runtime, test) in JSON format'
        end
        entry do
            command '--omit-core STR'
            name 'Omit dependencies that are shipped with the specified version of Perl'
        end
    end

    category do
        id 'authordeps'

        entry do
            notes <<-'END'
            Working with dependencies for Dist::Zilla
            END
        end

        entry do
            command 'authordeps'
            name 'Lists author dependencies'
        end
        entry do
            command '--root STR'
            name 'The root of the distribution; defaults to current directory'
        end
        entry do
            command '--missing'
            name 'List only the missing dependencies'
        end
        entry do
            command '--versions'
            name 'Include required version numbers in listing'
        end
    end

    category do
        id 'Miscellaneous '

        entry do
            command 'run'
            name 'Run executables in the directory where your distribution is built'
        end
        entry do
            command 'setup'
            name 'Set up a basic global config file through a basic interactive proces in `$HOME/.dzil/config.ini`'
        end
        entry do
            command 'nop'
            name 'This command will initialize Dist::Zilla and exit, can be useful of dianostic purposes'
        end
    end

    category do
        id 'Environment Variables'

        entry do
            command 'RELEASE_TESTING'
            name 'See also: `smoke --release`'
        end
        entry do
            command 'AUTOMATED_TESTING'
            name 'See also: `smoke --automated`'
        end
        entry do
            command 'AUTHOR_TESTING'
            name 'See also: `smoke --author`'
        end
    end

    notes <<-'END'
    This cheatsheet is based on Dist::Zilla 6.009.

    Visit http://dzil.org for more information.
    
    See also the Dist::Zilla distribution documentation on [MetaCPAN](https://metacpan.org/pod/Dist::Zilla)
    END

end
