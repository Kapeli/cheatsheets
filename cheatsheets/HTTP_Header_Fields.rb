cheatsheet do
  title 'HTTP Header Fields'
  docset_file_name 'HTTP_Header_Fields'
  keyword 'http'
  source_url 'http://cheat.kapeli.com'

  style '
  td.description .name {
    text-align:right;
    white-space:nowrap;
  '
  # request headers
  category do

    id 'Requests'

    entry do
      td_notes <<-'END'
      Content types that are acceptable for the response

      ```
      Accept: text/plain
      ```
      Status: Permanent
      END
      name 'Accept'
      index_name 'Accept (Request)'
    end

    entry do
      td_notes <<-'END'
      Character sets that are acceptable

      ```
      Accept-Charset: utf-8
      ```
      Status: Permanent
      END
      name 'Accept-Charset'
      index_name 'Accept-Charset (Request)'
    end

    entry do
      td_notes <<-'END'
      List of acceptable encodings

      ```
      Accept-Encoding: gzip, deflate
      ```
      Status: Permanent
      END
      name 'Accept-Encoding'
      index_name 'Accept-Encoding (Request)'
    end

    entry do
      td_notes <<-'END'
      List of acceptable human languages for response

      ```
      Accept-Language: en-US
      ```
      Status: Permanent
      END
      name 'Accept-Language'
      index_name 'Accept-Language (Request)'
    end

    entry do
      td_notes <<-'END'
      Authentication credentials for HTTP authentication

      ```
      Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==
      ```
      Status: Permanent
      END
      name 'Authorization'
      index_name 'Authorization (Request)'
    end

    entry do
      td_notes <<-'END'
      Used to specify directives that MUST be obeyed by all caching mechanisms along the request/response chain

      ```
      Cache-Control: no-cache
      ```
      Status: Permanent
      END
      name 'Cache-Control'
      index_name 'Cache-Control (Request)'
    end

    entry do
      td_notes <<-'END'
      What type of connection the user-agent would prefer

      ```
      Connection: keep-alive
      ```
      Status: Permanent
      END
      name 'Connection'
      index_name 'Connection (Request)'
    end

    entry do
      td_notes <<-'END'
      The length of the request body in octets (8-bit bytes)

      ```
      Content-Length: 348
      ```
      Status: Permanent
      END
      name 'Content-Length'
      index_name 'Content-Length (Request)'
    end

    entry do
      td_notes <<-'END'
      A Base64-encoded binary MD5 sum of the content of the request body

      ```
      Content-MD5: Q2hlY2sgSW50ZWdyaXR5IQ==
      ```
      Status: Permanent
      END
      name 'Content-MD5'
      index_name 'Content-MD5 (Request)'
    end

    entry do
      td_notes <<-'END'
      The MIME type of the body of the request (used with `POST` and `PUT` requests)

      ```
      Content-Type: application/json
      ```
      Status: Permanent
      END
      name 'Content-Type'
      index_name 'Content-Type (Request)'
    end

    entry do
      td_notes <<-'END'
      The date and time that the message was sent (in `HTTP-date` format as defined by RFC 2616)

      ```
      Date: Tue, 15 Nov 1994 08:12:31 GMT
      ```
      Status: Permanent
      END
      name 'Date'
      index_name 'Date (Request)'
    end

    entry do
      td_notes <<-'END'
      Indicates that particular server behaviors are required by the client

      ```
      Expect: 100-continue
      ```
      Status: Permanent
      END
      name 'Expect'
      index_name 'Expect (Request)'
    end

    entry do
      td_notes <<-'END'
      The email address of the user making the request

      ```
      From: user@example.com
      ```
      Status: Permanent
      END
      name 'From'
      index_name 'From (Request)'
    end

    entry do
      td_notes <<-'END'
      The domain name of the server (for virtual hosting), and the TCP port number on which the server is listening. The port number may be omitted if the port is the standard port for the service requested. Mandatory since HTTP/1.1. Although domain name are specified as case-insensitive, it is not specified whether the contents of the Host field should be interpreted in a case-insensitive manner and in practice some implementations of virtual hosting interpret the contents of the Host field in a case-sensitive manner

      ```
      Host: en.wikipedia.org
      ```
      Status: Permanent
      END
      name 'Host'
      index_name 'Host (Request)'
    end

    entry do
      td_notes <<-'END'
      Only perform the action if the client supplied entity matches the same entity on the server. This is mainly for methods like `PUT` to only update a resource if it has not been modified since the user last updated it

      ```
      If-Match: "737060cd8c284d8af7ad3082f209582d"
      ```
      Status: Permanent
      END
      name 'If-Match'
      index_name 'If-Match (Request)'
    end

    entry do
      td_notes <<-'END'
      Allows a `304 Not Modified` to be returned if content is unchanged

      ```
      If-Modified-Since: Sat, 29 Oct 1994 19:43:31 GMT
      ```
      Status: Permanent
      END
      name 'If-Modified-Since'
      index_name 'If-Modified-Since (Request)'
    end

    entry do
      td_notes <<-'END'
      Allows a `304 Not Modified` to be returned if content is unchanged

      ```
      If-None-Match: "737060cd8c284d8af7ad3082f209582d"
      ```
      Status: Permanent
      END
      name 'If-None-Match'
      index_name 'If-None-Match (Request)'
    end

    entry do
      td_notes <<-'END'
      If the entity is unchanged, send me the part(s) that I am missing; otherwise, send me the entire new entity

      ```
      If-Range: "737060cd8c284d8af7ad3082f209582d"
      ```
      Status: Permanent
      END
      name 'If-Range'
      index_name 'If-Range (Request)'
    end

    entry do
      td_notes <<-'END'
      Only send the response if the entity has not been modified since a specific time

      ```
      If-Unmodified-Since: Sat, 29 Oct 1994 19:43:31 GMT
      ```
      Status: Permanent
      END
      name 'If-Unmodified-Since'
      index_name 'If-Unmodified-Since (Request)'
    end

    entry do
      td_notes <<-'END'
      Limit the number of times the message can be forwarded through proxies or gateways

      ```
      Max-Forwards: 10
      ```
      Status: Permanent
      END
      name 'Max-Forwards'
      index_name 'Max-Forwards (Request)'
    end

    entry do
      td_notes <<-'END'
      Implementation-specific headers that may have various effects anywhere along the request-response chain

      ```
      Pragma: no-cache
      ```
      Status: Permanent
      END
      name 'Pragma'
      index_name 'Pragma (Request)'
    end

    entry do
      td_notes <<-'END'
      Authorization credentials for connecting to a proxy

      ```
      Proxy-Authorization: Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==
      ```
      Status: Permanent
      END
      name 'Proxy-Authorization'
      index_name 'Proxy-Authorization (Request)'
    end

    entry do
      td_notes <<-'END'
      Request only part of an entity. Bytes are numbered from 0

      ```
      Range: bytes=500-999
      ```
      Status: Permanent
      END
      name 'Range'
      index_name 'Range (Request)'
    end

    entry do
      td_notes <<-'END'
      This is the address of the previous web page from which a link to the currently requested page was followed. The word “referrer” is misspelled in the RFC as well as in most implementations

      ```
      Referer: http://en.wikipedia.org/wiki/Main_Page
      ```
      Status: Permanent
      END
      name 'Referer'
      index_name 'Referer (Request)'
    end

    entry do
      td_notes <<-'END'
      The transfer encodings the user agent is willing to accept: the same values as for the response header `Transfer-Encoding` can be used, plus the `trailers` value (related to the `chunked` transfer method) to notify the server it expects to receive additional headers (the trailers) after the last, zero-sized, chunk

      ```
      TE: trailers, deflate
      ```
      Status: Permanent
      END
      name 'TE'
      index_name 'TE (Request)'
    end

    entry do
      td_notes <<-'END'
      The user agent string of the user agent

      ```
      User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36
      ```
      Status: Permanent
      END
      name 'User-Agent'
      index_name 'User-Agent (Request)'
    end

    entry do
      td_notes <<-'END'
      Informs the server of proxies through which the request was sent

      ```
      Via: 1.0 fred, 1.1 example.com (Apache/1.1)
      ```
      Status: Permanent
      END
      name 'Via'
      index_name 'Via (Request)'
    end

    entry do
      td_notes <<-'END'
      A general warning about possible problems with the entity body

      ```
      Warning: 199 Miscellaneous warning
      ```
      Status: Permanent
      END
      name 'Warning'
      index_name 'Warning (Request)'
    end

    entry do
      td_notes <<-'END'
      An HTTP cookie previously sent by the server with Set-Cookie

      ```
      Cookie: $Version=1; Skin=new;
      ```
      Status: Permanent - Standard
      END
      name 'Cookie'
      index_name 'Cookie (Request)'
    end

    entry do
      td_notes <<-'END'
      Initiates a request for cross-origin resource sharing (asks server for an `Access-Control-Allow-Origin` response header)

      ```
      Origin: http://www.example-social-network.com
      ```
      Status: Permanent - Standard
      END
      name 'Origin'
      index_name 'Origin (Request)'
    end

    entry do
      td_notes <<-'END'
      Acceptable version in time

      ```
      Accept-Datetime: Thu, 31 May 2007 20:35:00 GMT
      ```
      Status: Provisional
      END
      name 'Accept-Datetime'
      index_name 'Accept-Datetime (Request)'
    end
  end # end request headers

  # non-standard request headers
  category do

    id 'Common Non-Standard Request Headers'

    entry do
      td_notes <<-'END'
      Mainly used to identify Ajax requests. Some JavaScript frameworks send this field with value of `XMLHttpRequest`, such as jQuery.

      * `XMLHttpRequest` - Ajax request

      ```
      X-Requested-With: XMLHttpRequest
      ```
      END
      name 'X-Requested-With'
      index_name 'X-Requested-With (Request)'
    end
  end # end common non-standard request headers

  # response headers
  category do

    id 'Responses'

    entry do
      td_notes <<-'END'
      Content-Types that are acceptable for the response

      ```
      Accept: text/plain
      ```
      Status: Permanent
      END
      name 'Accept'
      index_name 'Accept (Response)'
    end

    entry do
      td_notes <<-'END'
      Specifying which web sites can participate in cross-origin resource sharing

      ```
      Access-Control-Allow-Origin: *
      ```
      Status: Provisional
      END
      name 'Access-Control-Allow-Origin '
      index_name 'Access-Control-Allow-Origin  (Response)'
    end

    entry do
      td_notes <<-'END'
      Used in redirection, or when a new resource has been created. This refresh redirects after 5 seconds:

      ```
      Refresh: 5; url=http://www.w3.org/pub/WWW/People.html
      ```
      Status: Proprietary/non-standard: a header extension introduced by Netscape and supported by most web browsers
      END
      name 'Refresh'
      index_name 'Refresh (Response)'
    end

    entry do
      td_notes <<-'END'
      Gives the date/time after which the response is considered stale

      ```
      Expires: Thu, 01 Dec 1994 16:00:00 GMT
      ```
      Status: Permanent - Standard
      END
      name 'Expires'
      index_name 'Expires (Response)'
    end

    entry do
      td_notes <<-'END'
      An HTTP cookie

      ```
      Set-Cookie: UserID=JohnDoe; Max-Age=3600; Version=
      ```
      Status: Permanent - Standard
      END
      name 'Set-Cookie'
      index_name 'Set-Cookie (Response)'
    end

    entry do
      td_notes <<-'END'
      A HSTS Policy informing the HTTP client how long to cache the HTTPS only policy and whether this applies to subdomains

      ```
      Strict-Transport-Security: max-age=16070400; includeSubDomains
      ```
      Status: Permanent - Standard
      END
      name 'Strict-Transport-Security'
      index_name 'Strict-Transport-Security (Response)'
    end

    entry do
      td_notes <<-'END'
      Specifies which patch document formats this server supports

      ```
      Accept-Patch: text/example;charset=utf-8
      ```
      Status: Permanent
      END
      name 'Accept-Patch'
      index_name 'Accept-Patch (Response)'
    end

    entry do
      td_notes <<-'END'
      What partial content range types this server supports

      ```
      Accept-Ranges: bytes
      ```
      Status: Permanent
      END
      name 'Accept-Ranges'
      index_name 'Accept-Ranges (Response)'
    end

    entry do
      td_notes <<-'END'
      The age the object has been in a proxy cache in seconds

      ```
      Age: 12
      ```
      Status: Permanent
      END
      name 'Age'
      index_name 'Age (Response)'
    end

    entry do
      td_notes <<-'END'
      Valid actions for a specified resource. To be used for a 405 Method not allowed

      ```
      Allow: GET, HEAD
      ```
      Status: Permanent
      END
      name 'Allow'
      index_name 'Allow (Response)'
    end

    entry do
      td_notes <<-'END'
      Tells all caching mechanisms from server to client whether they may cache this object. It is measured in seconds

      ```
      Cache-Control: max-age=3600
      ```
      Status: Permanent
      END
      name 'Cache-Control'
      index_name 'Cache-Control (Response)'
    end

    entry do
      td_notes <<-'END'
      Options that are desired for the connection

      ```
      Connection: close
      ```
      Status: Permanent
      END
      name 'Connection'
      index_name 'Connection (Response)'
    end

    entry do
      td_notes <<-'END'
      The type of encoding used on the data

      ```
      Content-Encoding: gzip
      ```
      Status: Permanent
      END
      name 'Content-Encoding'
      index_name 'Content-Encoding (Response)'
    end

    entry do
      td_notes <<-'END'
      The language the content is in

      ```
      Content-Language: da
      ```
      Status: Permanent
      END
      name 'Content-Language'
      index_name 'Content-Language (Response)'
    end

    entry do
      td_notes <<-'END'
      The length of the response body in octets (8-bit bytes)

      ```
      Content-Length: 348
      ```
      Status: Permanent
      END
      name 'Content-Length'
      index_name 'Content-Length (Response)'
    end

    entry do
      td_notes <<-'END'
      An alternate location for the returned data

      ```
      Content-Location: /index.htm
      ```
      Status: Permanent
      END
      name 'Content-Location'
      index_name 'Content-Location (Response)'
    end

    entry do
      td_notes <<-'END'
      A Base64-encoded binary MD5 sum of the content of the response

      ```
      Content-MD5: Q2hlY2sgSW50ZWdyaXR5IQ==
      ```
      Status: Permanent
      END
      name 'Content-MD5'
      index_name 'Content-MD5 (Response)'
    end

    entry do
      td_notes <<-'END'
      An opportunity to raise a "File Download" dialogue box for a known MIME type with binary format or suggest a filename for dynamic content. Quotes are necessary with special characters

      ```
      Content-Disposition: attachment; filename="fname.ext"
      ```
      Status: Permanent
      END
      name 'Content-Disposition'
      index_name 'Content-Disposition (Response)'
    end

    entry do
      td_notes <<-'END'
      Where in a full body message this partial message belongs

      ```
      Content-Range: bytes 21010-47021/47022
      ```
      Status: Permanent
      END
      name 'Content-Range'
      index_name 'Content-Range (Response)'
    end

    entry do
      td_notes <<-'END'
      The MIME type of this content

      ```
      Content-Type: text/html; charset=utf-8
      ```
      Status: Permanent
      END
      name 'Content-Type'
      index_name 'Content-Type (Response)'
    end

    entry do
      td_notes <<-'END'
      The date and time that the message was sent (in `HTTP-date` format as defined by RFC 2616)

      ```
      Date: Tue, 15 Nov 1994 08:12:31 GMT
      ```
      Status: Permanent
      END
      name 'Date'
      index_name 'Date (Response)'
    end

    entry do
      td_notes <<-'END'
      An identifier for a specific version of a resource, often a message digest

      ```
      ETag: "737060cd8c284d8af7ad3082f209582d"
      ```
      Status: Permanent
      END
      name 'ETag'
      index_name 'ETag (Response)'
    end

    entry do
      td_notes <<-'END'
      The last modified date for the requested object (in `HTTP-date` format as defined by RFC 2616)

      ```
      Last-Modified: Tue, 15 Nov 1994 12:45:26 GMT
      ```
      Status: Permanent
      END
      name 'Last-Modified'
      index_name 'Last-Modified (Response)'
    end

    entry do
      td_notes <<-'END'
      Used to express a typed relationship with another resource, where the relation type is defined by RFC 5988

      ```
      Link: </feed>; rel="alternate"
      ```
      Status: Permanent
      END
      name 'Link'
      index_name 'Link (Response)'
    end

    entry do
      td_notes <<-'END'
      Used in redirection, or when a new resource has been created

      ```
      Location: http://www.w3.org/pub/WWW/People.html
      ```
      Status: Permanent
      END
      name 'Location'
      index_name 'Location (Response)'
    end

    entry do
      td_notes <<-'END'
      This header is supposed to set P3P policy, in the form of `P3P:CP="your_compact_policy"`. However, P3P did not take off, most browsers have never fully implemented it, a lot of websites set this header with fake policy text, that was enough to fool browsers the existence of P3P policy and grant permissions for third party cookies

      ```
      P3P: CP="This is not a P3P policy! See http://www.google.com/support/accounts/bin/answer.py?hl=en&answer=151657 for more info."
      ```
      Status: Permanent
      END
      name 'P3P'
      index_name 'P3P (Response)'
    end

    entry do
      td_notes <<-'END'
      Implementation-specific headers that may have various effects anywhere along the request-response chain

      ```
      Pragma: no-cache
      ```
      Status: Permanent
      END
      name 'Pragma'
      index_name 'Pragma (Response)'
    end

    entry do
      td_notes <<-'END'
      Request authentication to access the proxy

      ```
      Proxy-Authenticate: Basic
      ```
      Status: Permanent
      END
      name 'Proxy-Authenticate'
      index_name 'Proxy-Authenticate (Response)'
    end

    entry do
      td_notes <<-'END'
      If an entity is temporarily unavailable, this instructs the client to try again later. Value could be a specified period of time (in seconds) or a HTTP-date

      ```
      Retry-After: 120; Retry-After: Fri, 07 Nov 2014 23:59:59 GMT
      ```
      Status: Permanent
      END
      name 'Retry-After'
      index_name 'Retry-After (Response)'
    end

    entry do
      td_notes <<-'END'
      A name for the server

      ```
      Server: Apache/2.4.1 (Unix)
      ```
      Status: Permanent
      END
      name 'Server'
      index_name 'Server (Response)'
    end

    entry do
      td_notes <<-'END'
      The Trailer general field value indicates that the given set of header fields is present in the trailer of a message encoded with chunked transfer-coding

      ```
      Trailer: Max-Forwards
      ```
      Status: Permanent
      END
      name 'Trailer'
      index_name 'Trailer (Response)'
    end

    entry do
      td_notes <<-'END'
      The form of encoding used to safely transfer the entity to the user. Currently defined methods are: chunked, compress, deflate, gzip, identity

      ```
      Transfer-Encoding: chunked
      ```
      Status: Permanent
      END
      name 'Transfer-Encoding'
      index_name 'Transfer-Encoding (Response)'
    end

    entry do
      td_notes <<-'END'
      Ask the server to upgrade to another protocol

      ```
      Upgrade: HTTP/2.0, SHTTP/1.3, IRC/6.9, RTA/x11
      ```
      Status: Permanent
      END
      name 'Upgrade'
      index_name 'Upgrade (Response)'
    end

    entry do
      td_notes <<-'END'
      Tells downstream proxies how to match future request headers to decide whether the cached response can be used rather than requesting a fresh one from the origin server

      ```
      Vary: *
      ```
      Status: Permanent
      END
      name 'Vary'
      index_name 'Vary (Response)'
    end

    entry do
      td_notes <<-'END'
      A general warning about possible problems with the entity body

      ```
      Warning: 199 Miscellaneous warning
      ```
      Status: Permanent
      END
      name 'Warning'
      index_name 'Warning (Response)'
    end

    entry do
      td_notes <<-'END'
      Indicates the authentication scheme that should be used to access the requested entity

      ```
      WWW-Authenticate: Basic
      ```
      Status: Permanent
      END
      name 'WWW-Authenticate'
      index_name 'WWW-Authenticate (Response)'
    end

    entry do
      td_notes <<-'END'
      The HTTP status of the response

      ```
      Status: 200 OK
      ```
      END
      name 'Status'
      index_name 'Status (Response)'
    end
  end # end respone headers

  # non-standard response headers
  category do

    id 'Common Non-Standard Response Headers'

    entry do
      td_notes <<-'END'
      Clickjacking protection:

      * `deny` - no rendering within a frame
      * `sameorigin` - no rendering if origin mismatch

      ```
      X-Frame-Options: deny
      ```
      END
      name 'X-Frame-Options'
      index_name 'X-Frame-Options (Response)'
    end

    entry do
      td_notes <<-'END'
      Cross-site scripting (XSS) filter

      ```
      X-XSS-Protection: 1; mode=block
      ```
      END
      name 'X-XSS-Protection'
      index_name 'X-XSS-Protection (Response)'
    end

    entry do
      td_notes <<-'END'
      Content Security Policy definition

      ```
      X-WebKit-CSP: default-src "self"
      ```
      END
      name 'Content-Security-Policy,<br>X-Content-Security-Policy,<br>X-WebKit-CSP'
      index_name 'Content-Security-Policy, X-Content-Security-Policy, X-WebKit-CSP (Responses)'
    end

    entry do
      td_notes <<-'END'
      The only defined value, `nosniff`, prevents Internet Explorer from MIME-sniffing a response away from the declared content-type. This also applies to Google Chrome, when downloading extensions

      ```
      X-Content-Type-Options: nosniff
      ```
      END
      name 'X-Content-Type-Options'
      index_name 'X-Content-Type-Options (Response)'
    end

    entry do
      td_notes <<-'END'
      Specifies the technology (e.g. ASP.NET, PHP, JBoss) supporting the web application (version details are often in X-Runtime, X-Version, or X-AspNet-Version)

      ```
      X-Powered-By: PHP/5.4.0
      ```
      END
      name 'X-Powered-By'
      index_name 'X-Powered-By (Response)'
    end

    entry do
      td_notes <<-'END'
      Recommends the preferred rendering engine (often a backward-compatibility mode) to use to display the content. Also used to activate Chrome Frame in Internet Explorer

      ```
      X-UA-Compatible: IE=EmulateIE7; X-UA-Compatible: IE=edge; X-UA-Compatible: Chrome=1
      ```
      END
      name 'X-UA-Compatible'
      index_name 'X-UA-Compatible (Response)'
    end
  end # end common non-standard response headers

end # end cheatsheet
