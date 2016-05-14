cheatsheet do
  title 'HTTP Status Codes'
  docset_file_name 'HTTP_Status_Codes'
  keyword 'http'
  source_url 'http://cheat.kapeli.com'

  category do
    id '1xx Informational'

    entry do
      name '100 Continue'
      notes 'The server has received the request headers, and that the client should proceed to send the request body.'
    end

    entry do
      name '101 Switching protocols'
      notes 'The requester has asked the server to switch protocols and the server is acknowledging that it will do so.'
    end

    entry do
      name '102 Processing'
      notes 'The server has received and is processing the request, but no response is available yet.'
    end
  end

  category do
    id '2xx Success'

    entry do
      name '200 OK'
      notes 'The standard response for successful HTTP requests.'
    end

    entry do
      name '201 Created'
      notes 'The request has been fulfilled and a new resource has been created.'
    end

    entry do
      name '202 Accepted'
      notes 'The request has been accepted but has not been processed yet. This code does not guarantee that the request will process successfully.'
    end

    entry do
      name '203 Non-authoritative information'
      notes 'HTTP 1.1. The server successfully processed the request but is returning information from another source.'
    end

    entry do
      name '204 No content'
      notes 'The server accepted the request but is not returning any content. This is often used as a response to a `DELETE` request.'
    end

    entry do
      name '205 Reset content'
      notes 'Similar to a `204 No Content` response but this response requires the requester to reset the document view.'
    end

    entry do
      name '206 Partial content'
      notes 'The server is delivering only a portion of the content, as requested by the client via a range header.'
    end

    entry do
      name '207 Multi-status'
      notes 'The message body that follows is an XML message and can contain a number of separate response codes, depending on how many sub-requests were made.

      WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918)'
    end

    entry do
      name '208 Already reported'
      notes 'The members of a DAV binding have already been enumerated in a previous reply to this request, and are not being included again.

      WebDAV - [RFC 5842](https://tools.ietf.org/html/rfc5842)'
    end

    entry do
      name '226 IM used'
      notes 'The server has fulfilled a GET request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance.

      [RFC 3229](https://tools.ietf.org/html/rfc3229)'
    end
  end

  category do
    id '3xx Redirection'

    entry do
      name '300 Multiple choices'
      notes 'There are multiple options that the client may follow.'
    end

    entry do
      name '301 Moved permanently'
      notes 'The resource has been moved and all further requests should reference its new URI.'
    end

    entry do
      name '302 Found'
      notes 'The HTTP 1.0 specification described this status as "Moved Temporarily", but popular browsers respond to this status similar to behavior intended for `303`. The resource can be retrieved by referencing the returned URI.'
    end

    entry do
      name '303 See other'
      notes 'The resource can be retrieved by following other URI using the `GET` method. When received in response to a `POST`, `PUT`, or `DELETE`, it can usually be assumed that the server processed the request successfully and is sending the client to an informational endpoint.'
    end

    entry do
      name '304 Not modified'
      notes 'The resource has not been modified since the version specified in `If-Modified-Since` or `If-Match` headers. The resource will not be returned in response body.'
    end

    entry do
      name '305 Use proxy'
      notes 'HTTP 1.1. The resource is only available through a proxy and the address is provided in the response.'
    end

    entry do
      name '306 Switch proxy'
      notes 'Deprecated in HTTP 1.1. Used to mean that subsequent requests should be sent using the specified proxy.'
    end

    entry do
      name '307 Temporary redirect'
      notes 'HTTP 1.1. The request should be repeated with the URI provided in the response, but future requests should still call the original URI.'
    end

    entry do
      name '308 Permanent redirect'
      notes 'Experimental. The request and all future requests should be repeated with the URI provided in the response. The HTTP method is not allowed to be changed in the subsequent request.'
    end

    entry do
      name '308 Resume Incomplete (Google)'
      notes 'This code is used in the Resumable HTTP Requests Proposal to resume aborted PUT or POST requests'
    end
  end

  category do
    id '4xx Client Error'

    entry do
      name '400 Bad request'
      notes 'The request could not be fulfilled due to the incorrect syntax of the request.'
    end

    entry do
      name '401 Unauthorized'
      notes 'The requestor is not authorized to access the resource. This is similar to `403` but is used in cases where authentication is expected but has failed or has not been provided.'
    end

    entry do
      name '402 Payment required'
      notes 'Reserved for future use. Some web services use this as an indication that the client has sent an excessive number of requests.'
    end

    entry do
      name '403 Forbidden'
      notes "The request was formatted correctly but the server is refusing to supply the requested resource. Unlike `401`, authenticating will not make a difference in the server's response."
    end

    entry do
      name '404 Not found'
      notes "The resource could not be found. This is often used as a catch-all for all invalid URIs requested of the server."
    end

    entry do
      name '405 Method not allowed'
      notes "The resource was requested using a method that is not allowed. For example, requesting a resource via a `POST` method when the resource only supports the `GET` method."
    end

    entry do
      name '406 Not acceptable'
      notes "The resource is valid, but cannot be provided in a format specified in the `Accept` headers in the request."
    end

    entry do
      name '407 Proxy authentication required'
      notes "Authentication is required with the proxy before requests can be fulfilled."
    end

    entry do
      name '408 Request timeout'
      notes "The server timed out waiting for a request from the client. The client is allowed to repeat the request."
    end

    entry do
      name '409 Conflict'
      notes "The request cannot be completed due to a conflict in the request parameters."
    end

    entry do
      name '410 Gone'
      notes "The resource is no longer available at the requested URI and no redirection will be given."
    end

    entry do
      name '411 Length required'
      notes "The request did not specify the length of its content as required by the resource."
    end

    entry do
      name '412 Precondition failed'
      notes "The server does not meet one of the preconditions specified by the client."
    end

    entry do
      name '413 Request entity too large'
      notes "The request is larger than what the server is able to process."
    end

    entry do
      name '414 Request-URI too long'
      notes "The URI provided in the request is too long for the server to process. This is often used when too much data has been encoded into the URI of a `GET` request and a `POST` request should be used instead."
    end

    entry do
      name '415 Unsupported media type'
      notes "The client provided data with a media type that the server does not support."
    end

    entry do
      name '416 Requested range not satisfiable'
      notes "The client has asked for a portion of the resource but the server cannot supply that portion."
    end

    entry do
      name '417 Expectation failed'
      notes "The server cannot meet the requirements of the Expect request-header field."
    end

    entry do
      name '421 Misdirected request'
      notes "The request was directed at a server that is not able to produce a response. This can be sent by a server that is not configured to produce responses for the combination of scheme and authority that are included in the request URI.

      HTTP/2 - [RFC 7540](http://tools.ietf.org/html/rfc7540#section-9.1.2)"
    end

    entry do
      name '422 Unprocessable entity'
      notes "The request was formatted correctly but cannot be processed in its current form. Often used when the specified parameters fail validation errors.

      WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918)"
    end

    entry do
      name '423 Locked'
      notes "The requested resource was found but has been locked and will not be returned.

      WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918)"
    end

    entry do
      name '424 Failed dependency'
      notes "The request failed due to a failure of a previous request.

      WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918)"
    end

    entry do
      name '426 Upgrade required'
      notes "The client should repeat the request using an upgraded protocol such as TLS 1.0."
    end

    entry do
      name '428 Precondition required'
      notes "The origin server requires the request to be conditional.

      Additional HTTP Status Codes - [RFC 6585](http://tools.ietf.org/html/rfc6585#section-3)"
    end

    entry do
      name '429 Too many requests'
      notes "The user has sent too many requests in a given amount of time (\"rate limiting\").

      Additional HTTP Status Codes - [RFC 6585](http://tools.ietf.org/html/rfc6585#section-4)"
    end

    entry do
      name '431 Request header fields too large'
      notes "The server is unwilling to process the request because its header fields are too large.

      Additional HTTP Status Codes - [RFC 6585](http://tools.ietf.org/html/rfc6585#section-5)"
    end

    entry do
      name '440 Login Timeout (Microsoft)'
      notes "A Microsoft extension. Indicates that your session has expired."
    end

    entry do
      name '444 No Response (Nginx)'
      notes "Used in Nginx logs to indicate that the server has returned no information to the client and closed the connection (useful as a deterrent for malware)."
    end

    entry do
      name '449 Retry With (Microsoft)'
      notes "A Microsoft extension. The request should be retried after performing the appropriate action."
    end

    entry do
      name '450 Blocked by Windows Parental Controls (Microsoft)'
      notes "A Microsoft extension. This error is given when Windows Parental Controls are turned on and are blocking access to the given webpage."
    end

    entry do
      name '451 Unavailable For Legal Reasons (Internet draft)'
      notes "Defined in the internet draft [\"A New HTTP Status Code for Legally-restricted Resources\"](http://tools.ietf.org/html/draft-tbray-http-legally-restricted-status-05). Intended to be used when resource access is denied for legal reasons, e.g. censorship or government-mandated blocked access. A reference to the 1953 dystopian novel Fahrenheit 451, where books are outlawed."
    end

    entry do
      name '451 Redirect (Microsoft)'
      notes "Used in Exchange ActiveSync if there either is a more efficient server to use or the server cannot access the users' mailbox."
    end

    entry do
      name '494 Request Header Too Large (Nginx)'
      notes "Nginx internal code similar to 431 but it was introduced earlier in version 0.9.4 (on January 21, 2011)."
    end
    entry do
      name '495 Cert Error (Nginx)'
      notes "Nginx internal code used when SSL client certificate error occurred to distinguish it from 4XX in a log and an error page redirection."
    end
    entry do
      name '496 No Cert (Nginx)'
      notes "Nginx internal code used when client didn't provide certificate to distinguish it from 4XX in a log and an error page redirection."
    end
    entry do
      name '497 HTTP to HTTPS (Nginx)'
      notes "Nginx internal code used for the plain HTTP requests that are sent to HTTPS port to distinguish it from 4XX in a log and an error page redirection."
    end
    entry do
      name '498 Token expired/invalid (Esri)'
      notes "Returned by ArcGIS for Server. A code of 498 indicates an expired or otherwise invalid token."
    end
    entry do
      name '499 Client Closed Request (Nginx)'
      notes "Used in Nginx logs to indicate when the connection has been closed by client while the server is still processing its request, making server unable to send a status code back."
    end
    entry do
      name '499 Token required (Esri)'
      notes "Returned by ArcGIS for Server. A code of 499 indicates that a token is required (if no token was submitted)."
    end
  end

  category do
    id '5xx Server Error'

    entry do
      name '500 Internal server error'
      notes "A generic status for an error in the server itself."
    end

    entry do
      name '501 Not implemented'
      notes "The server cannot respond to the request. This usually implies that the server could possibly support the request in the future &mdash; otherwise a `4xx` status may be more appropriate."
    end

    entry do
      name '502 Bad gateway'
      notes "The server is acting as a proxy and did not receive an acceptable response from the upstream server."
    end

    entry do
      name '503 Service unavailable'
      notes "The server is down and is not accepting requests."
    end

    entry do
      name '504 Gateway timeout'
      notes "The server is acting as a proxy and did not receive a response from the upstream server."
    end

    entry do
      name '505 HTTP version not supported'
      notes "The server does not support the HTTP protocol version specified in the request."
    end

    entry do
      name '506 Variant also negotiates'
      notes "Transparent content negotiation for the request results in a circular reference."
    end

    entry do
      name '507 Insufficient storage'
      notes "The user or server does not have sufficient storage quota to fulfill the request.

      WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918)"
    end

    entry do
      name '508 Loop detected'
      notes "The server detected an infinite loop in the request.

      WebDAV - [RFC 5842](https://tools.ietf.org/html/rfc5842)"
    end

    entry do
      name '509 Bandwidth Limit Exceeded (Apache bw/limited extension)'
      notes "This status code is not specified in any RFCs. Its use is unknown."
    end

    entry do
      name '510 Not extended'
      notes "Further extensions to the request are necessary for it to be fulfilled."
    end

    entry do
      name '511 Network authentication required'
      notes "The client must authenticate with the network before sending requests.

      [RFC 6585](https://tools.ietf.org/html/rfc6585)"
    end

    entry do
      name '520 Unknown Error (Microsoft / CloudFlare)'
      notes "This status code is not specified in any RFC and is returned by certain services, for instance Microsoft Azure and CloudFlare servers: \"The 520 error is essentially a \"catch-all\" response for when the origin server returns something unexpected or something that is not tolerated/interpreted (protocol violation or empty response).\""
    end
    
    entry do
      name '521 Web Server Is Down (CloudFlare)'
      notes "The origin server has refused the connection from CloudFlare."
    end
    
    entry do
      name '522 Connection Timed Out (CloudFlare)'
      notes "CloudFlare could not negotiate a TCP handshake with the origin server."
    end

    entry do
      name '523 Origin Is Unreachable (CloudFlare)'
      notes "CloudFlare could not reach the origin server; for example, if the DNS records for the origin server are incorrect."
    end

    entry do
      name '524 A Timeout Occurred (CloudFlare)'
      notes "CloudFlare was able to complete a TCP connection to the origin server, but did not receive a timely HTTP response."
    end

    entry do
      name '525 SSL Handshake Failed (CloudFlare)'
      notes "CloudFlare could not negotiate a SSL/TLS handshake with the origin server."
    end

    entry do
      name '526 Invalid SSL Certificate (CloudFlare)'
      notes "CloudFlare could not validate the SSL/TLS certificate that the origin server presented."
    end
  end

  notes <<-'END'
    * Based on [cheat.errtheblog.com](http://cheat.errtheblog.com/) and [List of HTTP status codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes) on Wikipedia.
  END
end
