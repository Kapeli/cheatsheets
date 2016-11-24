cheatsheet do
  title 'Netcat'
  docset_file_name 'Netcat'
  keyword 'netcat'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Usage'
    entry do
      name 'Normal syntax'
      notes <<-'END'
      ```
      nc [options] [host] [port]
      ```

        Arbitrary TCP and UDP connections and listens.
      END
    end
  end

  category do
    id 'General Options'
    entry do
      name 'Use IPv4 addressing only'
      command 'nc -4 [options] [host] [port]'
    end

    entry do
      name 'Use IPv6 addressing only'
      command 'nc -6 [options] [host] [port]'
    end

    entry do
      name 'UDP instead of TCP'
      command 'nc -u [options] [host] [port]'
    end

    entry do
      name 'Listen for an incoming connection'
      command 'nc -l [host] [port]'
    end

    entry do
      name 'Continue listening after client has disconnected'
      command 'nc -k -l [host] [port]'
    end

    entry do
      name 'No DNS lookups'
      command 'nc -n [host] [port]'
    end

    entry do
      name 'Use specific source port'
      command 'nc -p [source port] [host] [port]'
    end

    entry do
      name 'Use source IP'
      command 'nc -s [source ip] [host] [port]'
    end

    entry do
      name 'Apply \'n\' second timeout'
      command 'nc -w [timeout] [host] [port]'
    end

    entry do
      name 'Verbose output'
      command 'nc -v [host] [port]'
    end
  end

  category do
    id 'Client Examples'
    entry do
      name 'Transmit contents of file "filename.in"'
      command 'nc 192.168.0.1 5051 < filename.in'
    end

    entry do
      name 'Send incoming data to "filename.out"'
      command 'nc 192.168.0.1 5051 > filename.out'
    end
  end

  category do
    id "Server Examples"

    entry do
      command 'netcat -l 5050'
	    notes 'Listen for TCP connections (port 5050). Data received is directed to `STDOUT`. Data is captured and transmitted from `STDOUT`.'
    end

    entry do
      command 'netcat -l 5051 > filename.out'
      notes 'Data received directed to "filename.out"'
    end 

    entry do
      notes <<-'END'
      ```bash
      ( echo -ne "HTTP/1.1 200 OK
      Content-Length: $(wc -c <index.html)\r\n\r\n" ; cat index.html ) | nc -l 8080
      ```
      END
      name 'Single use web server listening on port 8080'
    end

    entry do
      notes <<-'END'
      ```bash
      while : ; do ( echo -ne "HTTP/1.1 200 OK\r\nContent-Length: $(wc -c <index.html)\r\n\r\n" ; cat index.html; ) | nc -l -p 8080 ; done
      ```
      END
      name 'Bash while loop restarts web server after each request'
    end
  end

    category do
      id "Simple Proxy"

      entry do
        notes <<-'END'
        ```
        mknod backpipe p ; nc -l [proxy port] < backpipe | nc [destination host] [destination port] > pipe
        ```

        Create a named pipe. Setup an a listener on proxy port. Forward requests from listener to a client which in-turn sends them onto the destination host. The client redirects the response from the destination host into the named pipe. The listener picks up the response from the named pipe and returns it. The named pipe thus allows the proxy to transmit data bi-directionally.
        END
      end
    end

  category do
    id "Port Scanning"

    entry do
      name 'Scan a single TCP port'
      command 'nc -zv hostname.com 80'
    end

    entry do
      name 'Scan a range of ports'
      command 'nc -zv hostname.com 80-84'
    end

    entry do
      name 'Scan multiple ports'
      command 'nc -zv hostname.com 80 84'
    end
  end
  notes "* Thanks to [biscuitNinja](http://duckduckhack.com/u/biscuitninja) and the [Netcat Cheat Sheet](https://duck.co/ia/view/netcat_cheat_sheet)."
end
