cheatsheet do
    title 'dzil'
    docset_file_name 'dzil'
    keyword 'dzil'
    source_url 'http://dzil.org'

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
        id 'Working With Distribution'

        entry do
            command 'new'
            name 'Set up a new distribution'
            notes <<-'END'
            -p STR --profile STR   name of the profile to use
            -P STR --provider STR  name of the profile provider to use
            END
        end
        entry do
            command 'build'
            name 'Clean out the build'
            notes <<-'END'
            --trial   build a trial release that PAUSE will not index
            --tgz     build a tarball (default behavior)
            --in STR  the directory in which to build the distribution
            END
        end
        entry do
            command 'clean'
            name 'Clean out the build'
            notes <<-'END'
            -n --dry-run  do not remove anything, just show what would be done
            END
        end
        entry do
            command 'test'
            name 'Clean out the build'
            notes <<-'END'
            --release                enables the RELEASE_TESTING env variable
            --automated              enables the AUTOMATED_TESTING env variable
            --extended               enables the EXTENDED_TESTING env variable
            --author                 enables the AUTHOR_TESTING env variable
                                     (default behavior)
            --all                    enables the RELEASE_TESTING,
                                     AUTOMATED_TESTING, EXTENDED_TESTING and
                                     AUTHOR_TESTING env variables
            --keep --keep-build-dir  keep the build directory even after a success
            -j INT --jobs INT        number of parallel test jobs to run
            --test-verbose           enables verbose testing (TEST_VERBOSE env
                                     variable on Makefile.PL, --verbose on
                                     Build.PL
            END
        end
        entry do
            command 'xtest'
            name 'Clean out the build'
            notes <<-'END'
            --author           enables the AUTHOR_TESTING env variable (default behavior)
            --release          enables the RELEASE_TESTING env variable (default behavior)
            --automated        enables the AUTOMATED_TESTING env variable
            --all              enables the RELEASE_TESTING, AUTOMATED_TESTING and AUTHOR_TESTING env variables
            -j INT --jobs INT  number of parallel test jobs to run
            END
        end
        entry do
            command 'smoke'
            name 'Clean out the build'
            notes <<-'END'
            --release    enables the RELEASE_TESTING env variable
            --automated  enables the AUTOMATED_TESTING env variable (default
                         behavior)
            --author     enables the AUTHOR_TESTING env variable
            END
        end
        entry do
            command 'install'
            name 'Install the distribution'
            notes <<-'END'
            --install-command STR    command to run to install (e.g. "cpan .")
            --keep --keep-build-dir  keep the build directory even after a success
            END
        end
    end

    category do
        id 'Working With Dependencies'

        entry do
            command 'add'
            name 'Adds a new module to an existing distribution'
            notes <<-'END'
            -p STR --profile STR   name of the profile to use
            -P STR --provider STR  name of the profile provider to use
            END
        end
        entry do
            command 'listdeps'
            name 'Lists dependencies, can be piped to CPAN client for installation'
            notes <<-'END'
            --author --develop  include author/develop dependencies
            --missing           list only the missing dependencies
            --requires          list the required dependencies
            --recommends        list the recommended dependencies
            --suggests          list the suggested dependencies
            --versions          include required version numbers in listing
            --cpanm-versions    format versions for consumption by cpanm
            --json              list dependencies by phase, in JSON format
            --omit-core STR     Omit dependencies that are shipped with the
                                specified version of perl
            END
        end
        entry do
            command 'authordeps'
            name 'Lists author dependencies'
            notes <<-'END'
            --root STR  the root of the distribution; defaults to . (current directory)
            --missing   list only the missing dependencies
            --versions  include required version numbers in listing
            END
        end
    end

    category do
        id 'Diverse'

        entry do
            command 'run'
            name 'Run executables in the directory where your distribution is built'
        end
        entry do
            command 'setup'
            name 'Set up a basic global config file through a basic interactive proces in $HOME/.dzil/config.ini'
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
            name 'See also: smoke --release'
        end
        entry do
            command 'AUTOMATED_TESTING'
            name 'See also: smoke --automated'
        end
        entry do
            command 'AUTHOR_TESTING'
            name 'See also: smoke --author'
        end
    end

    notes 'This cheatsheet is based on Dist::Zilla 6.009'

end
