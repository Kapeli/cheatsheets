cheatsheet do
  title 'HTTP Header Fields'
  docset_file_name 'HTTP_Header_Fields'
  keyword 'http'
  source_url 'http://cheat.kapeli.com'
  
  style '
    td.td_command code
    {
      padding: 0px;
      box-shadow: none;
      border: none;
      background: none;
    }
  '
  
  # request headers
  category do

    id 'Requests'
    header 'Header Field Name'
    header 'Description'
    header 'Example'
    header 'Status'
    
    entry do
      td_notes 'Content-Types that are acceptable for the response'
      td_notes 'Accept: text/plain'
      td_notes 'Permanent'
      name 'Accept'
    end

    entry do
      td_notes 'Character sets that are acceptable'
      td_notes 'Accept-Charset: utf-8'
      td_notes 'Permanent' 
      name 'Accept-Charset'
    end

    entry do
      td_notes 'List of acceptable encodings'
      td_notes 'Accept-Encoding: gzip, deflate'
      td_notes 'Permanent'
      name 'Accept-Encoding'
    end

    entry do
      td_notes 'List of acceptable human languages for response'
      td_notes 'Accept-Language: en-US'
      td_notes 'Permanent'
      name 'Accept-Language'
    end

    entry do
      td_notes 'Authentication credentials for HTTP authentication'
      td_notes 'Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ=='
      td_notes 'Permanent'
      name 'Authorization'
    end

    entry do
      td_notes 'Used to specify directives that MUST be obeyed by all caching mechanisms along the request/response chain'
      td_notes 'Cache-Control: no-cache'
      td_notes 'Permanent'
      name 'Cache-Control'
    end

    entry do
      td_notes 'What type of connection the user-agent would prefer'
      td_notes 'Connection: keep-alive'
      td_notes 'Permanent'
      name 'Connection'
    end

    entry do
      td_notes 'The length of the request body in octets (8-bit bytes)'
      td_notes 'Content-Length: 348'
      td_notes 'Permanent'
      name 'Content-Length'
    end

    entry do
      td_notes 'A Base64-encoded binary MD5 sum of the content of the request body'
      td_notes 'Content-MD5: Q2hlY2sgSW50ZWdyaXR5IQ=='
      td_notes 'Permanent'
      name 'Content-MD5'
    end

    entry do
      td_notes 'The MIME type of the body of the request (used with POST and PUT requests)'
      td_notes 'Content-Type: application/json'
      td_notes 'Permanent'
      name 'Content-Type'
    end

    entry do
      td_notes 'The date and time that the message was sent (in "HTTP-date" format as defined by RFC 2616)'
      td_notes 'Date: Tue, 15 Nov 1994 08:12:31 GMT'
      td_notes 'Permanent'
      name 'Date'
    end

    entry do
      td_notes 'Indicates that particular server behaviors are required by the client'
      td_notes 'Expect: 100-continue'
      td_notes 'Permanent'
      name 'Expect'
    end

    entry do
      td_notes 'The email address of the user making the request'
      td_notes 'From: user@example.com'
      td_notes 'Permanent'
      name 'From'
    end

    entry do
      td_notes 'The domain name of the server (for virtual hosting), and the TCP port number on which the server is listening. The port number may be omitted if the port is the standard port for the service requested. Mandatory since HTTP/1.1. Although domain name are specified as case-insensitive, it is not specified whether the contents of the Host field should be interpreted in a case-insensitive manner and in practice some implementations of virtual hosting interpret the contents of the Host field in a case-sensitive manner.'
      td_notes 'Host: en.wikipedia.org'
      td_notes 'Permanent'
      name 'Host'
    end

    entry do
      td_notes 'Only perform the action if the client supplied entity matches the same entity on the server. This is mainly for methods like PUT to only update a resource if it has not been modified since the user last updated it.'
      td_notes 'If-Match: "737060cd8c284d8af7ad3082f209582d"'
      td_notes 'Permanent'
      name 'If-Match'
    end

    entry do
      td_notes 'Allows a 304 Not Modified to be returned if content is unchanged'
      td_notes 'If-Modified-Since: Sat, 29 Oct 1994 19:43:31 GMT'
      td_notes 'Permanent'
      name 'If-Modified-Since'
    end

    entry do
      td_notes 'Allows a 304 Not Modified to be returned if content is unchanged.'
      td_notes 'If-None-Match: "737060cd8c284d8af7ad3082f209582d"'
      td_notes 'Permanent'
      name 'If-None-Match'
    end

    entry do
      td_notes 'If the entity is unchanged, send me the part(s) that I am missing; otherwise, send me the entire new entity'
      td_notes 'If-Range: "737060cd8c284d8af7ad3082f209582d"'
      td_notes 'Permanent'
      name 'If-Range'
    end

    entry do
      td_notes 'Only send the response if the entity has not been modified since a specific time.'
      td_notes 'If-Unmodified-Since: Sat, 29 Oct 1994 19:43:31 GMT'
      td_notes 'Permanent'
      name 'If-Unmodified-Since'
    end

    entry do
      td_notes 'Limit the number of times the message can be forwarded through proxies or gateways.'
      td_notes 'Max-Forwards: 10'
      td_notes 'Permanent'
      name 'Max-Forwards'
    end

    entry do
      td_notes 'Implementation-specific headers that may have various effects anywhere along the request-response chain.'
      td_notes 'Pragma: no-cache'
      td_notes 'Permanent'
      name 'Pragma'
    end

    entry do
      td_notes 'Authorization credentials for connecting to a proxy.'
      td_notes 'Proxy-Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ=='
      td_notes 'Permanent'
      name 'Proxy-Authorization'
    end

    entry do
      td_notes 'Request only part of an entity. Bytes are numbered from 0.'
      td_notes 'Range: bytes=500-999'
      td_notes 'Permanent'
      name 'Range'
    end

    entry do
      td_notes 'This is the address of the previous web page from which a link to the currently requested page was followed. (The word “referrer” is misspelled in the RFC as well as in most implementations.)'
      td_notes 'Referer: http://en.wikipedia.org/wiki/Main_Page'
      td_notes 'Permanent'
      name 'Referer'
    end

    entry do
      td_notes 'The transfer encodings the user agent is willing to accept: the same values as for the response header Transfer-Encoding can be used, plus the "trailers" value (related to the "chunked" transfer method) to notify the server it expects to receive additional headers (the trailers) after the last, zero-sized, chunk.'
      td_notes 'TE: trailers, deflate'
      td_notes 'Permanent'
      name 'TE'
    end

    entry do
      td_notes 'The user agent string of the user agent'
      td_notes 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36'
      td_notes 'Permanent'
      name 'User-Agent'
    end

    entry do
      td_notes 'Informs the server of proxies through which the request was sent.'
      td_notes 'Via: 1.0 fred, 1.1 example.com (Apache/1.1)'
      td_notes 'Permanent'
      name 'Via'
    end

    entry do
      td_notes 'A general warning about possible problems with the entity body.'
      td_notes 'Warning: 199 Miscellaneous warning'
      td_notes 'Permanent'
      name 'Warning'
    end

    entry do
      td_notes 'An HTTP cookie previously sent by the server with Set-Cookie'
      td_notes 'Cookie: $Version=1; Skin=new;'
      td_notes 'Permanent: standard'
      name 'Cookie'
    end

    entry do
      td_notes 'Initiates a request for cross-origin resource sharing (asks server for an "Access-Control-Allow-Origin" response header) .'
      td_notes 'Origin: http://www.example-social-network.com'
      td_notes 'Permanent: standard'
      name 'Origin'
    end

    entry do
      td_notes 'Acceptable version in time'
      td_notes 'Accept-Datetime: Thu, 31 May 2007 20:35:00 GMT  '
      td_notes 'Provisional'
      name 'Accept-Datetime'
    end
  end # end request headers

  # response headers
  category do

    id 'Responses'
    header 'Header Field Name'
    header 'Description'
    header 'Example'
    header 'Status'
    
    entry do
      td_notes 'Content-Types that are acceptable for the response'
      td_notes 'Accept: text/plain'
      td_notes 'Permanent'
      name 'Accept'
    end
    
    entry do
      td_notes 'Specifying which web sites can participate in cross-origin resource sharing'
      td_notes 'Access-Control-Allow-Origin: *'
      td_notes 'Provisional'
      name 'Access-Control-Allow-Origin '
    end
    
    entry do
      td_notes 'Used in redirection, or when a new resource has been created. This refresh redirects after 5 seconds.'
      td_notes 'Refresh: 5; url=http://www.w3.org/pub/WWW/People.html'
      td_notes 'Proprietary/non-standard: a header extension introduced by Netscape and supported by most web browsers.'
      name 'Refresh'
    end
    
    entry do
      td_notes 'Gives the date/time after which the response is considered stale'
      td_notes 'Expires: Thu, 01 Dec 1994 16:00:00 GMT'
      td_notes 'Permanent: standard'
      name 'Expires'
    end
    
    entry do
      td_notes 'Set-Cookie: UserID=JohnDoe; Max-Age=3600; Version='
      td_notes 'An HTTP cookie'
      td_notes 'Permanent: standard'
      name 'Set-Cookie'
    end
    
    entry do
      td_notes 'A HSTS Policy informing the HTTP client how long to cache the HTTPS only policy and whether this applies to subdomains'
      td_notes 'Strict-Transport-Security: max-age=16070400; includeSubDomains'
      td_notes 'Permanent: standard'
      name 'Strict-Transport-Security'
    end
    
    entry do
      td_notes 'What partial content range types this server supports'
      td_notes 'Accept-Ranges: bytes'
      td_notes 'Permanent'
      name 'Accept-Ranges'
    end
    
    entry do
      td_notes 'The age the object has been in a proxy cache in seconds'
      td_notes 'Age: 12'
      td_notes 'Permanent'
      name 'Age'
    end
    
    entry do
      td_notes 'Valid actions for a specified resource. To be used for a 405 Method not allowed'
      td_notes 'Allow: GET, HEAD'
      td_notes 'Permanent'
      name 'Allow'
    end
    
    entry do
      td_notes 'Tells all caching mechanisms from server to client whether they may cache this object. It is measured in seconds'
      td_notes 'Cache-Control: max-age=3600'
      td_notes 'Permanent'
      name 'Cache-Control'
    end
    
    entry do
      td_notes 'Options that are desired for the connection'
      td_notes 'Connection: close'
      td_notes 'Permanent'
      name 'Connection'
    end
    
    entry do
      td_notes 'The type of encoding used on the data'
      td_notes 'Content-Encoding: gzip'
      td_notes 'Permanent'
      name 'Content-Encoding'
    end
    
    entry do
      td_notes 'The language the content is in'
      td_notes 'Content-Language: da'
      td_notes 'Permanent'
      name 'Content-Language'
    end
    
    entry do
      td_notes 'The length of the response body in octets (8-bit bytes)'
      td_notes 'Content-Length: 348'
      td_notes 'Permanent'
      name 'Content-Length'
    end
    
    entry do
      td_notes 'An alternate location for the returned data'
      td_notes 'Content-Location: /index.htm'
      td_notes 'Permanent'
      name 'Content-Location'
    end
    
    entry do
      td_notes 'A Base64-encoded binary MD5 sum of the content of the response'
      td_notes 'Content-MD5: Q2hlY2sgSW50ZWdyaXR5IQ=='
      td_notes 'Permanent'
      name 'Content-MD5'
    end
    
    entry do
      td_notes 'An opportunity to raise a "File Download" dialogue box for a known MIME type with binary format or suggest a filename for dynamic content. Quotes are necessary with special characters.'
      td_notes 'Content-Disposition: attachment; filename="fname.ext"'
      td_notes 'Permanent'
      name 'Content-Disposition'
    end
    
    entry do
      td_notes 'Where in a full body message this partial message belongs'
      td_notes 'Content-Range: bytes 21010-47021/47022'
      td_notes 'Permanent'
      name 'Content-Range'
    end
    
    entry do
      td_notes 'The MIME type of this content'
      td_notes 'Content-Type: text/html; charset=utf-8'
      td_notes 'Permanent'
      name 'Content-Type'
    end
    
    entry do
      td_notes 'The date and time that the message was sent (in "HTTP-date" format as defined by RFC 2616)'
      td_notes 'Date: Tue, 15 Nov 1994 08:12:31 GMT'
      td_notes 'Permanent'
      name 'Date'
    end
    
    entry do
      td_notes 'An identifier for a specific version of a resource, often a message digest'
      td_notes 'ETag: "737060cd8c284d8af7ad3082f209582d"'
      td_notes 'Permanent'
      name 'ETag'
    end
    
    entry do
      td_notes 'The last modified date for the requested object (in "HTTP-date" format as defined by RFC 2616)'
      td_notes 'Last-Modified: Tue, 15 Nov 1994 12:45:26 GMT'
      td_notes 'Permanent'
      name 'Last-Modified'
    end
    
    entry do
      td_notes 'Used to express a typed relationship with another resource, where the relation type is defined by RFC 5988'
      td_notes 'Link: </feed>; rel="alternate"'
      td_notes 'Permanent'
      name 'Link'
    end
    
    entry do
      td_notes 'Used in redirection, or when a new resource has been created.'
      td_notes 'Location: http://www.w3.org/pub/WWW/People.html'
      td_notes 'Permanent'
      name 'Location'
    end
    
    entry do
      td_notes 'This header is supposed to set P3P policy, in the form of P3P:CP="your_compact_policy". However, P3P did not take off, most browsers have never fully implemented it, a lot of websites set this header with fake policy text, that was enough to fool browsers the existence of P3P policy and grant permissions for third party cookies.'
      td_notes 'P3P: CP="This is not a P3P policy! See http://www.google.com/support/accounts/bin/answer.py?hl=en&answer=151657 for more info."'
      td_notes 'Permanent'
      name 'P3P'
    end
    
    entry do
      td_notes 'Implementation-specific headers that may have various effects anywhere along the request-response chain.'
      td_notes 'Pragma: no-cache'
      td_notes 'Permanent'
      name 'Pragma'
    end
    
    entry do
      td_notes 'Request authentication to access the proxy.'
      td_notes 'Proxy-Authenticate: Basic'
      td_notes 'Permanent'
      name 'Proxy-Authenticate'
    end
    
    entry do
      td_notes 'If an entity is temporarily unavailable, this instructs the client to try again later. Value could be a specified period of time (in seconds) or a HTTP-date'
      td_notes 'Retry-After: 120; Retry-After: Fri, 07 Nov 2014 23:59:59 GMT'
      td_notes 'Permanent'
      name 'Retry-After'
    end
    
    entry do
      td_notes 'A name for the server'
      td_notes 'Server: Apache/2.4.1 (Unix)'
      td_notes 'Permanent'
      name 'Server'
    end
    
    entry do
      td_notes 'The Trailer general field value indicates that the given set of header fields is present in the trailer of a message encoded with chunked transfer-coding.'
      td_notes 'Trailer: Max-Forwards'
      td_notes 'Permanent'
      name 'Trailer'
    end
    
    entry do
      td_notes 'The form of encoding used to safely transfer the entity to the user. Currently defined methods are: chunked, compress, deflate, gzip, identity.'
      td_notes 'Transfer-Encoding: chunked'
      td_notes 'Permanent'
      name 'Transfer-Encoding'
    end
    
    entry do
      td_notes 'Ask the server to upgrade to another protocol.'
      td_notes 'Upgrade: HTTP/2.0, SHTTP/1.3, IRC/6.9, RTA/x11'
      td_notes 'Permanent'
      name 'Upgrade'
    end
    
    entry do
      td_notes 'Tells downstream proxies how to match future request headers to decide whether the cached response can be used rather than requesting a fresh one from the origin server.'
      td_notes 'Vary: *'
      td_notes 'Permanent'
      name 'Vary'
    end
    
    entry do
      td_notes 'A general warning about possible problems with the entity body.'
      td_notes 'Warning: 199 Miscellaneous warning'
      td_notes 'Permanent'
      name 'Warning'
    end
    
    entry do
      td_notes 'Indicates the authentication scheme that should be used to access the requested entity.'
      td_notes 'WWW-Authenticate: Basic'
      td_notes 'Permanent'
      name 'WWW-Authenticate'
    end
    
    entry do
      td_notes 'The HTTP status of the response'
      td_notes 'Status: 200 OK'
      td_notes '?'
      name 'Status'
    end
  end # end respone headers

  # non-standard headers
  category do

    id 'Common Non-Standard Response Headers'
    header 'Header Field Name'
    header 'Description'
    header 'Example'
    
    entry do
      td_notes 'Clickjacking protection: "deny" - no rendering within a frame, "sameorigin" - no rendering if origin mismatch'
      td_notes 'X-Frame-Options: deny'
      name 'X-Frame-Options'
    end

    entry do
      td_notes 'Cross-site scripting (XSS) filter'
      td_notes 'X-XSS-Protection: 1; mode=block'
      name 'X-XSS-Protection'
    end

    entry do
      td_notes 'Content Security Policy definition.'
      td_notes 'X-WebKit-CSP: default-src "self"'
      name 'Content-Security-Policy, X-Content-Security-Policy, X-WebKit-CSP'
    end

    entry do
      td_notes ''
      td_notes ''
      name 'X-Content-Type-Options'
    end

    entry do
      td_notes 'Specifies the technology (e.g. ASP.NET, PHP, JBoss) supporting the web application (version details are often in X-Runtime, X-Version, or X-AspNet-Version)'
      td_notes 'X-Powered-By: PHP/5.4.0'
      name 'X-Powered-By'
    end

    entry do
      td_notes 'Recommends the preferred rendering engine (often a backward-compatibility mode) to use to display the content. Also used to activate Chrome Frame in Internet Explorer.'
      td_notes 'X-UA-Compatible: IE=EmulateIE7; X-UA-Compatible: IE=edge; X-UA-Compatible: Chrome=1'
      name 'X-UA-Compatible'
    end
  end # end common non-standard headers

end # end cheatsheet
