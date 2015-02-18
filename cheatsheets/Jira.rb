cheatsheet do
  title 'Jira'
  docset_file_name 'Jira'
  keyword 'jira'
  source_url 'https://jira.atlassian.com/secure/ViewKeyboardShortcuts!default.jspa'

  category do
    id 'Global Shortcuts'

    entry do
      command 'gd'
      name 'Go to Dasboard'
    end

    entry do
      command 'gp'
      name 'Browse to a Project'
    end

    entry do
      command 'ga'
      name 'Go to Agile'
    end

    entry do
      command 'gi'
      name 'Find Issues'
    end

    entry do
      command 'gg'
      name 'Administration Quick Search'
    end

    entry do
      command '/'
      name 'Quick Search'
    end

    entry do
      command 'c'
      name 'Create an Issue'
    end

    entry do
      command '.'
      name 'Quick Operations'
    end

    entry do
      command '?'
      name 'Open shortcut help'
    end

    entry do
      command 'Ctrl+Alt+S'
      name 'Form Submit'
    end
  end

  category do
    id 'Navigating Issues'

    entry do
      command 'o'
      name 'View selected issue'
    end

    entry do
      command 'Enter'
      name 'View selected issue'
    end

    entry do
      command 'j'
      name 'Next Issue'
    end

    entry do
      command 'k'
      name 'Previous Issue'
    end

    entry do
      command '['
      name 'Dock/Undock the FIlters Panel'
    end

    entry do
      command 'n'
      name 'Next Activity'
    end

    entry do
      command 'p'
      name 'Previous Activity'
    end

    entry do
      command 'f'
      name 'Focus search field'
    end

    entry do
      command 'u'
      name 'Search for issues'
    end

    entry do
      command 't'
      name 'Switch filter view'
    end

    entry do
      command 'z'
      name 'Detail View Order by'
    end
  end

  category do
    id 'Issue Actions'

    entry do
      command 'e'
      name 'Edit issue'
    end

    entry do
      command 'a'
      name 'Assign issue'
    end

    entry do
      command 'm'
      name 'Comment on issue'
    end

    entry do
      command 'l'
      name 'Edit issue labels'
    end

    entry do
      command ','
      name 'Just to fields for editing'
    end

    entry do
      command 'i'
      name 'Assign to me'
    end
  end

  category do
    id 'Agile Shortcuts'

    entry do
      command '1'
      name 'Plan mode'
    end

    entry do
      command '2'
      name 'Work mode'
    end

    entry do
      command '3'
      name 'Report mode'
    end

    entry do
      command 'z'
      name 'Presentation mode'
    end

    entry do
      command 'n'
      name 'Next column'
    end

    entry do
      command 'p'
      name 'Previous column'
    end

    entry do
      command 't'
      name 'Hide/show detail view'
    end

    entry do
      command '-'
      name 'Toggle all swimlanes'
    end

    entry do
      command 'st'
      name 'Send to top'
    end

    entry do
      command 'sb'
      name 'Send to bottom'
    end
  end

  notes <<-'END'
    * Created by [Mike Tierney](https://github.com/miketierney)
  END
end
