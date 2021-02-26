cheatsheet do
  title 'Snyk'
  docset_file_name 'Snyk'
  keyword 'snyk'
  source_url 'http://cheat.kapeli.com'

  introduction <<-'END'
    CLI and build-time tool to find & fix known vulnerabilities in open-source dependencies.

    ## Installation
    Install the Snyk CLI using either npm, Homebrew, Scoop, or by downloading a specific binary
    from GitHub.

    ### npm
    ```
    $ npm install -g snyk
    ```

    ### Brew
    ```
    $ brew tap snyk/tap && brew install snyk
    ```

    ### Scoop
    ```
      $ scoop bucket add snyk https://github.com/snyk/scoop-snyk
      $ scoop install snyk
    ```

    ### Manual
    Manual installer available on [Snyk’s GitHub](https://github.com/snyk/snyk/releases) page.
  END

  category do
    id 'Authenticate'

    entry do
      command 'snyk auth'
      name 'Authenticate via browser'
      notes <<-'END'
        Will use organization that is set as default in your [Account settings](https://app.snyk.io/account).
      END
    end

    entry do
      command 'snyk auth <token>'
      name 'Authenticate in your CI'
      notes <<-'END'
        Set environment variable `SNYK_TOKEN`. Can be used for local testing and CI pipeline as it
        requires no user interaction.
      END
    end
  end

  category do
    id 'Test'

    entry do
      command 'snyk test'
      name 'Test a project in current folder for known vulnerabilities'
      notes <<-'END'
        Scan your project for vulnerabilities locally by running `snyk test` from the root of your
        project.
        Vulnerabilities and remediation will be shown in your console.
      END
    end
  end

  category do
    id 'Monitor'

    entry do
      command 'snyk monitor'
      name 'Monitor project'
      notes <<-'END'
        Monitor your application for vulnerabilities by sending a snapshot of the dependencies to
        your Snyk dashboard.
      END
    end

    entry do
      command 'snyk monitor --org=ORG_NAME'
      name 'Monitor project tied to a specific organization'
      notes <<-'END'
        Specify the `ORG_NAME` to run Snyk commands tied to a specific organization.
        This will influence where will new projects be created after running monitor command,
        some features availability and private tests limits.
      END
    end
  end

  category do
    id 'Ignore Vulnerabilities'

    entry do
      command 'snyk ignore --id=ISSUE_ID'
      name 'Ignore a specific vulnerability for 30 days'
      notes <<-'END'
        Add a custom expiration date and reason by using the the flags:

        ```
        --expiry=2020-11-11
        --reason='Not currently exploitable'
        ```
      END
    end
  end

  category do
    id 'Common CLI Options'

    entry do
      command 'snyk [cmd] --file=package.json'
      name 'Specify a manifest file you want to test'
    end

    entry do
      command 'snyk test --file=req.txt --package-manager=pip'
      name 'Specify GitHub manifest file and ecosystem'
    end

    entry do
      command 'snyk test --all-projects'
      name 'Test all manifest in folder and subfolder'
    end

    entry do
      command 'snyk test --dev'
      name 'Include devDependencies in the scan'
    end

    entry do
      command 'snyk [cmd] --org=my-team'
      name 'Run command for a specific organization'
    end

    entry do
      command 'snyk test https://github.com/snyk/goof'
      name 'Test a github repository (npm only)'
    end

    entry do
      command 'snyk test lodash'
      name 'Test the latest version of a package'
    end

    entry do
      command 'snyk test ionic@1.6.5'
      name 'Test a specific version of a package'
    end

    entry do
      command 'snyk test --json'
      name 'Output full test results as json'
    end

    entry do
      command 'snyk test --json-file-output=vuln.json'
      name 'Store test result as json file'
    end

    entry do
      command 'snyk [cmd] --severity-threshold=<low|medium|high>'
      name 'Set severity level that will be visibl'
    end
  end

  category do
    id ' Container Scanning'

    entry do
      command 'snyk container test <image>'
      command 'snyk container monitor <image>'
      name 'Scan and monitor Docker images'
      notes <<-'END'
        Add a Dockerfile for base-image remediation advice using:
        `--file=path/to/Dockerfile`

        Scan Docker and OCI container images as seen below:

        ```
        $ snyk container test docker-archive:container.tar
        $ snyk container test oci-archive:container.tar
        ```
      END
    end
  end

  category do
    id 'Infrastructure as Code (IAC)'

    entry do
      command 'snyk iac test /path/to/Kubernetes.yaml'
      command 'snyk iac test /path/to/terraform_file.tf'
      name 'Scan Kubernetes and Terraform files for security issues'
    end
  end

  category do
    id 'Troubleshooting'

    entry do
      command 'snyk help'
      name 'Help section and options explained'
    end

    entry do
      command 'snyk [cdm] -d'
      name 'Debug output for your command'
    end

    entry do
      name 'Unexpected results?'
      notes <<-'END'
        Build your project and download all dependencies first, for example:

        ```
        $ npm install
        $ mvn install
        $ dotnet restore
        $ dep ensure
        ```
      END
    end

    entry do
      name 'Running out of tests on an OS project?'
      notes <<-'END'
        - Run `snyk monitor`
        - Open the Snyk UI and go to the settings of the project
        - Enter the URL of your OS repo in "Git remote URI"
      END
    end
  end

  notes <<-'END'
    This cheat sheet is mostly based on [the official Snyk Cheatsheet](https://snyk.io/blog/snyk-cli-cheat-sheet/).
    It has been converted and extended with content from the Snyk CLI help where deemed appropriate by [Patrik Affentranger](https://github.com/pzi/snyk-cheatset).

    Author of the original Snyk CLI Cheatsheet is Brian Vermeer
    ([@BrianVerm](https://twitter.com/BrianVerm)) a Developer Advocate at Snyk.
  END
end
