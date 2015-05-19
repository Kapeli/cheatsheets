cheatsheet do
  title 'Unix File Permissions'
  docset_file_name 'Unix_File_Permissions'
  keyword 'ufp'


  style '
.td_command p {
      font-size: 1.2em;
      margin-top:-4px;
  }
'

  category do
    id 'Permissions'
    header 'Octal'
    header 'Symbol'
    header 'Permission'

    entry do
      td_command '0'           
      td_command '---'
      name 'No Permissions'
    end

    entry do
      td_command '1'  
      td_command '--x'
      name 'Execute'
    end


    entry do
      td_command '2'  
      td_command '-w-'
      name 'Write'
    end

    entry do
      td_command '3'  
      td_command '-wx'
      name 'Write & Execute'
    end

    entry do
      td_command '4'  
      td_command 'r--'
      name 'Read'
    end

    entry do
      td_command '5'
      td_command 'r-x'
      name 'Read & Execute'
    end


    entry do
      td_command '6'
      td_command 'rw-'
      name 'Read & Write'
    end

    entry do
      td_command '7'
      td_command 'rwx'
      name 'Read, Write & Execute'
    end
  end

  category do
    id 'File Types'

    entry do
      command '-'
      name 'Regular file'
      notes 'Example: ```-rw-r--r--   1 root     0 1 January 00:00 file```'
    end

    entry do
      command 'd'
      name 'Directory' 
      notes 'Example: ```drwxr-xr-x  3 root  staff  102 1 January 00:00 .```'
    end
  end

  notes <<-'END'
  * Based on the article [Understanding and Setting UNIX File Permissions](http://www.ics.uci.edu/computing/linux/file-security.php)
  * Converted by [Wesley Hill](https://github.com/hako)
    END
end
