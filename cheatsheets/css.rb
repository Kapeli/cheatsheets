cheatsheet do
  title 'CSS'
  docset_file_name 'CSS' 
  keyword 'css' 

  introduction 'CSS cheat sheet'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'Selectors'

    entry do
      command '.class'
      name 'Selects all elements with .class' 
    end
    entry do
      command '#id'
      name 'Selects all elements with #id' 
    end
    entry do
    	command 'div, p'
      name 'Selects all <div> AND <p> elements'
    end
    entry do
    	command 'div > p'
      name 'Selects all <p> elements that are direct descendants of a <div> element'
    end
    entry do
      command '*'
      name 'Selects all elements'
    end
  end

  notes 'Created by Robert M. Münch'
end
