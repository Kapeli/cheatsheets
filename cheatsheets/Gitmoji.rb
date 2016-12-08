cheatsheet do
  title 'Gitmoji'
  docset_file_name 'Gitmoji'
  keyword 'gitmoji'
  source_url 'http://cheat.kapeli.com'

    category do
    id 'Adding & Releasing'
      entry do
        command ':tada:'
        name '🎉 Initial commit'
      end
      entry do
        command ':sparkles:'
        name '✨ Introducing new features'
      end
      entry do
        command ':hankey:'
        name '💩 Writing bad code that needs to be improved'
      end
      entry do
        command ':white_check_mark:'
        name '✅ Adding tests'
      end
      entry do
        command ':construction_worker:'
        name '👷 Adding CI build system'
      end
      entry do
        command ':twisted-rightwards-arrows:'
        name '🔀 Merging branches'
      end
      entry do
        command ':rewind:'
        name '⏪ Reverting changes'
      end
      entry do
        command ':memo:'
        name '📝 Writing docs'
      end
      entry do
        command ':page_facing_up:'
        name '📄 Adding or updating license'
      end
      entry do
        command ':chart_with_upwards_trend:'
        name '📈 Adding analytics or tracking code'
      end
      entry do
        command ':bookmark:'
        name '🔖 Releasing / Version tags'
      end
    end

    category do
    id 'Dependencies'
      entry do
        command ':heavy_minus_sign:'
        name '➖ Removing a dependency'
      end
      entry do
        command ':heavy_plus_sign:'
        name '➕ Adding a dependency'
      end
      entry do
        command ':arrow_down:'
        name '🔽 Downgrading dependencies'
      end
      entry do
        command ':arrow_up:'
        name '🔼 Upgrading dependencies'
      end
      entry do
        command ':package:'
        name '📦 Updating compiled files or packages'
      end
    end

    category do
    id 'Fixes'
      entry do
        command ':pencil2:'
        name '✏️ Fixing typos'
      end
      entry do
        command ':bug:'
        name '🐛 Fixing a bug'
      end
      entry do
        command ':ambulance:'
        name '🚑 Critical hotfix'
      end
      entry do
        command ':lock:'
        name '🔒 Fixing security issues'
      end
      entry do
        command ':rotating_light:'
        name '🚨 Removing linter warnings'
      end
      entry do
        command ':alien:'
        name '👽 Updating code due to external API changes'
      end
      entry do
        command ':green_heart:'
        name '💚 Fixing CI Build'
      end
      entry do
        command ':apple:'
        name '🍎 Fixing something on macOS'
      end
      entry do
        command ':penguin:'
        name '🐧 Fixing something on Linux'
      end
      entry do
        command ':checkered_flag:'
        name '🏁 Fixing something on Windows'
      end
    end

    category do
    id 'Miscellaneous'
      entry do
        command ':art:'
        name '🎨 Improving structure / format of the code'
      end
      entry do
        command ':zap:'
        name '⚡ Improving performance'
      end
      entry do
        command ':lipstick:'
        name '💄 Updating the UI and style files'
      end
      entry do
        command ':wrench:'
        name '🔧 Changing configuration files'
      end
      entry do
        command ':truck:'
        name '🚚 Moving or renaming files'
      end
      entry do
        command ':hammer:'
        name '🔨 Heavy refactoring'
      end
      entry do
        command ':construction:'
        name '🚧 Work in progress'
      end
      entry do
        command ':rocket:'
        name '🚀 Deploying stuff'
      end
      entry do
        command ':fire:'
        name '🔥 Removing code or files'
      end
      entry do
        command ':globe_with_meridians:'
        name '🌐 Internationalization and localization'
      end
      entry do
        command ':whale:'
        name '🐳 Work about Docker'
      end
    end


  notes '* Based on https://gitmoji.carloscuesta.me and https://github.com/carloscuesta/gitmoji
  * Available as CLI: https://github.com/carloscuesta/gitmoji-cli
  '

end
