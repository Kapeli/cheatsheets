# This tool generates the Chemical_Elements.rb cheatsheet. To run:
#
#  ruby generate.rb
#
# It downloads the periodic table data from Chris Andrejewski's project at
# https://github.com/andrejewski/periodic-table, and then processes it into
# a cheat sheet, writing it to Chemical_Elements.rb in the cheatsheets
# directory.
#
# Enjoy,
# Dan Griscom
# griscom@suitable.com

require 'rubygems'
require 'open-uri'
require 'csv'

puts "Working..."

$text = ""

def addText(newText)
   $text << newText
end

def addLine(newText)
    addText newText + "\n"
end

addText <<-HEREDOC
cheatsheet do
  title 'Chemical Elements'
  docset_file_name 'Chemical_Elements'
  keyword 'elements'
  source_url 'http://cheat.kapeli.com'
  
  style '
    td.td_notes {
      text-align: center;
    }
    th {
      text-align: center;
    }
  '
  
  category do
    id 'Chemical Elements'
    
    header 'Atomic<br>number'
    header 'Symbol'
    header 'Name'
    header 'Atomic<br>mass'
    header 'State<br>at <a href="https://en.wikipedia.org/wiki/Standard_conditions_for_temperature_and_pressure">STP</a>'
    header 'Density<br>at <a href="https://en.wikipedia.org/wiki/Standard_conditions_for_temperature_and_pressure">STP</a>'
    header 'Discovered'

HEREDOC

CSV.new(open('https://raw.githubusercontent.com/andrejewski/periodic-table/master/data.csv'), :headers => :first_row).each do |line|
  name = line[' name'].strip.downcase
  addLine '    entry do'
  addLine "      td_notes '#{line['atomicNumber']}'"
  addLine "      td_notes '#{line[' symbol'].strip}'"
  addLine "      td_notes '[#{name}](https://en.wikipedia.org/wiki/#{name.capitalize})'"
  addLine "      td_notes '#{line[' atomicMass'].strip}'"
  if !line[' standardState']
    addLine "      td_notes '(unknown)'"
  else
    addLine "      td_notes '#{line[' standardState'].strip}'"
  end
  if !line['density']
    addLine "      td_notes '(unknown)'"
  else
    addLine "      td_notes '#{line['density'].strip}'"
  end
  addLine "      td_notes '#{line[' yearDiscovered'].strip}'"
  addLine "      index_name '#{name}'"
  addLine "      extra_index_name '#{line['atomicNumber']}'"
  addLine '    end'
  addLine ''
end

addText <<-HEREDOC
  end
    notes "
        * Based on period table data by [Chris Andrejewski](https://github.com/andrejewski/periodic-table)
        * Converted by [Daniel Griscom](http://suitable.com)
    "
    
end

HEREDOC

File.write('../../cheatsheets/Chemical_Elements.rb', $text)

puts "Done"
