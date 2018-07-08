# This tool generates the Table_Of_Elements.rb cheatsheet. To run:
#
#  ruby gen_table_of_elements.rb > ../Table_Of_Elements.rb
#
# It downloads the periodic table data from Chris Andrejewski's project at
# https://github.com/andrejewski/periodic-table, and then processes it into
# a cheat sheet. 
#
# Enjoy,
# Dan Griscom
# griscom@suitable.com

require 'rubygems'
require 'open-uri'
require 'csv'

puts <<-HEREDOC
cheatsheet do
  title 'Table of Elements'
  docset_file_name 'Table_Of_Elements'
  keyword 'greek'
  source_url 'http://cheat.kapeli.com'
  
  style '
    td.td_notes {
      padding: 0px;
      box-shadow: none;
      border: none;
      background: none;
      text-align: center;
    }
    th {
      text-align: center;
    }
  '
  
  category do
    id 'Table of Elements'
    
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
  puts '    entry do'
  puts "      td_notes '#{line['atomicNumber']}'"
  puts "      td_notes '#{line[' symbol'].strip}'"
  puts "      td_notes '[#{name}](https://en.wikipedia.org/wiki/#{name.capitalize})'"
  puts "      td_notes '#{line[' atomicMass'].strip}'"
  if !line[' standardState']
    puts "      td_notes '(unknown)'"
  else
    puts "      td_notes '#{line[' standardState'].strip}'"
  end
  if !line['density']
    puts "      td_notes '(unknown)'"
  else
    puts "      td_notes '#{line['density'].strip}'"
  end
  puts "      td_notes '#{line[' yearDiscovered'].strip}'"
  puts '    end'
  puts ''
end

puts <<-HEREDOC
  end
    notes "
        * Based on period table data by [Chris Andrejewski](https://github.com/andrejewski/periodic-table)
        * Converted by [Daniel Griscom](http://suitable.com)
    "
    
end

HEREDOC
