cheatsheet do
  title 'Conventional Commits'
  docset_file_name 'Conventional_Commits'
  keyword 'conventional'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Types'
    entry do
      td_command 'feat'
      name 'Features'
      td_notes 'A new feature'
    end
    entry do
      td_command 'fix'
      name 'Bug Fixes'
      td_notes 'A bug fix'
    end
    entry do
      td_command 'docs'
      name 'Documentation'
      td_notes 'Documentation only changes'
    end
    entry do
      td_command 'style'
      name 'Styles'
      td_notes 'Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)'
    end
    entry do
      td_command 'refactor'
      name 'Code Refactoring'
      td_notes 'A code change that neither fixes a bug nor adds a feature'
    end
    entry do
      td_command 'perf'
      name 'Performance Improvements'
      td_notes 'A code change that improves performance'
    end
    entry do
      td_command 'test'
      name 'Tests'
      td_notes 'Adding missing tests or correcting existing tests'
    end
    entry do
      td_command 'build'
      name 'Builds'
      td_notes 'Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)'
    end
    entry do
      td_command 'ci'
      name 'Continuous Integrations'
      td_notes 'Changes to our CI configuration files and scripts (example scopes: Travis, Circle, BrowserStack, SauceLabs)'
    end
    entry do
      td_command 'chore'
      name 'Chores'
      td_notes 'Other changes that don\'t modify src or test files'
    end
    entry do
      td_command 'revert'
      name 'Reverts'
      td_notes 'Reverts a previous commit'
    end
  end
  category do
    id 'Commit Message Structure'
    entry do
      td_notes <<-'END'
      ```
      <type>[optional scope]: <description>

      [optional body]

      [optional footer]

      A commit that has the text BREAKING CHANGE: at the beginning of its optional body or footer section introduces a breaking API change
      ```
      END
    end
  end
  category do
    id 'Specification'
    entry do
      td_notes 'The key words “MUST”, “MUST NOT”, “REQUIRED”, “SHALL”, “SHALL NOT”, “SHOULD”, “SHOULD NOT”, “RECOMMENDED”, “MAY”, and “OPTIONAL” in this document are to be interpreted as described in <a href="https://www.ietf.org/rfc/rfc2119.txt">RFC 2119</a>.

      <ol>
        <li>Commits MUST be prefixed with a type, which consists of a noun, feat, fix, etc., followed by a colon and a space.</li>
        <li>The type feat MUST be used when a commit adds a new feature to your application or library.</li>
        <li>The type fix MUST be used when a commit represents a bug fix for your application.</li>
        <li>An optional scope MAY be provided after a type. A scope is a phrase describing a section of the codebase enclosed in parenthesis, e.g., fix(parser):</li>
        <li>A description MUST immediately follow the type/scope prefix. The description is a short description of the code changes, e.g., fix: array parsing issue when multiple spaces were contained in string.</li>
        <li>A longer commit body MAY be provided after the short description, providing additional contextual information about the code changes. The body MUST begin one blank line after the description.</li>
        <li>A footer MAY be provided one blank line after the body. The footer SHOULD contain additional issue references about the code changes (such as the issues it fixes, e.g., Fixes #13).</li>
        <li>Breaking changes MUST be indicated at the very beginning of the footer or body section of a commit. A breaking change MUST consist of the uppercase text BREAKING CHANGE, followed by a colon and a space.</li>
        <li>A description MUST be provided after the BREAKING CHANGE:, describing what has changed about the API, e.g., BREAKING CHANGE: environment variables now take precedence over config files.</li>
        <li>The footer MUST only contain BREAKING CHANGE, external links, issue references, and other meta-information.</li>
        <li>Types other than feat and fix MAY be used in your commit messages.</li>
      </ol>'
    end
  end
end
