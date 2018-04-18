cheatsheet do
  title 'Unix File Permissions'
  docset_file_name 'Unix_File_Permissions'
  keyword 'ufp'
  source_url 'http://cheat.kapeli.com'

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
      name 'No permissions'
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
      name 'Write and execute'
    end

    entry do
      td_command '4'
      td_command 'r--'
      name 'Read'
    end

    entry do
      td_command '5'
      td_command 'r-x'
      name 'Read and execute'
    end

    entry do
      td_command '6'
      td_command 'rw-'
      name 'Read and write'
    end

    entry do
      td_command '7'
      td_command 'rwx'
      name 'Read, write and execute'
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
      notes 'Example: ```drwxr-xr-x  3 root  staff  102 1 January 00:00```'
    end

    entry do
      command 'l'
      name 'Symbolic link'
      notes 'Example: ```lrwxrwxrwx 1 root root           4 1 January 00:00 rtc -> rtc0```'
    end

    entry do
      command 'b'
      name 'Block special device'
      notes 'Example: ```brw-rw---- 1 root disk      1   0 1 January 00:00  ram0```'
    end

    entry do
      command 'c'
      name 'Character device'
      notes 'Example: ```crw-rw-rw- 1 root root      1   3 1 January 00:00  null```'
    end

    entry do
      command 's'
      name 'Unix socket'
      notes 'Example: ```srw-rw-rw- 1 root       root          0 1 January 00:00  acpid.socket```'
    end

    entry do
      command 'p'
      name 'Named pipe'
      notes 'Example: ```prw-r--r-- 1 root root 0 1 January 00:00  pipe```'
    end
  end

  category do
    id 'Special Mode Bits'
    entry do
      name "`setuid` (Set User ID)"
      notes "When the setuid permission is set on an executable file, a process that runs this file is granted access based on the owner of the file (usually root) \n\nThis special permission allows a user to access files and directories that are normally only available to the owner.  \n\n Example: The setuid permission on the passwd command makes it possible for a user to change passwords, assuming the permissions of the root ID: \n\n``-r-sr-sr-x   3 root     sys       104580 Sep 16 12:02 /usr/bin/passwd``"
    end
    entry do
      name "`setgid` (Set Group ID)"
      notes "The set-group identification (setgid) permission is similar to setuid, except that the process's effective group ID (GID) is changed to the group owner of the file. \n\n Example: The /usr/bin/mail command has setgid permissions: \n\n``-r-x--s--x   1 root     mail       63628 Sep 16 12:01 /usr/bin/mail``"
    end
    entry do
      name 'Sticky Bit'
      notes "The sticky bit is a permission bit that protects the files within a directory. \n\n If the directory has the sticky bit set, a file can be deleted only by the owner of the file, the owner of the directory, or by root. \n\n Example: This special permission prevents a user from deleting other users' files from public directories such as /tmp: \n\n``drwxrwxrwt 7  root  sys   400 Sep  3 13:37 tmp``"
    end
    entry do
      command '--S------'
      name 'setuid is set, but user (owner) execute permission is not set'
    end
    entry do
      command '--s------'
      name 'setuid and user execute persmission are both set'
    end
    entry do
      command '-----S---'
      name 'setgid is set, but group execute permission is not set'
    end
    entry do
      command '-----s---'
      name 'setgid and group execute permission are both set'
    end
    entry do
      command '--------T'
      name 'sticky bit is set, but other execute permission is not set'
    end
    entry do
      command '--------t'
      name 'sticky bit and other execute permission are both set'
    end
    entry do
      notes 'Note: Use setuid, and setgid with caution, incorrect use of setuid, and setgid can pose a security risk.'
    end
  end

  notes <<-'END'
  * Based on these articles:
    + [Understanding and Setting UNIX File Permissions](http://www.ics.uci.edu/computing/linux/file-security.php)
    + [Linux File Permissions, chmod, & umask](http://www.tutonics.com/2012/12/linux-file-permissions-chmod-umask.html)
    + [How to use SETUID SETGID and Stickybit Permissions](http://www.unixrock.com/2013/09/how-to-use-setuid-setgid-and-stickybit.html)
    + [Special File Permissions (setuid, setgid and Sticky Bit)](http://docs.oracle.com/cd/E19683-01/816-4883/secfile-69/index.html)
  * Converted by [Wesley Hill](https://github.com/hako)
  END
end
