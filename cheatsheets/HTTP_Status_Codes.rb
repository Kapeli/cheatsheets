cheatsheet do
  title 'HTTP Status Codes'
  docset_file_name 'HTTP_Status_Codes'
  keyword 'httpstatus'

  introduction "A list of HTTP status codes with explanation. This information was gleaned from [*List of HTTP status codes*](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes) on Wikipedia."

  category do
    id '1xx Informational'

    entry do
      command '100'
      name '100 Continue'
      notes 'The server has received the request headers, and that the client should proceed to send the request body.'
    end

    entry do
      command '101'
      name '101 Switching Protocols'
      notes 'The requester has asked the server to switch protocols and the server is acknowledging that it will do so.'
    end

    entry do
      command '102'
      name '102 Processing'
      notes 'The server has received and is processing the request, but no response is available yet.'
    end
  end

  category do
    id '2xx Success'

    entry do
      command '200'
      name '200 OK'
      notes 'The standard response for successful HTTP requests.'
    end

    entry do
      command '201'
      name '201 Created'
      notes 'The request has been fulfilled and a new resource has been created.'
    end

    entry do
      command '202'
      name '202 Accepted'
      notes 'The request has been accepted but has not been processed yet. This code does not guarantee that the request will process successfully.'
    end

    entry do
      command '203'
      name '203 Non-Authoritative Information'
      notes 'HTTP 1.1. The server successfully processed the request but is returning information from another source.'
    end

    entry do
      command '204'
      name '204 No Content'
      notes 'The server accepted the request but is not returning any content. This is often used as a response to a `DELETE` request.'
    end

    entry do
      command '205'
      name '205 Reset Content'
      notes 'Similar to a `204 No Content` response but this response requires the requester to reset the document view.'
    end

    entry do
      command '206'
      name '206 Partial Content'
      notes 'The server is delivering only a portion of the content, as requested by the client via a range header.'
    end

    entry do
      command '207'
      name '207 Multi-Status'
      notes 'WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918). The message body that follows is an XML message and can contain a number of separate response codes, depending on how many sub-requests were made.'
    end

    entry do
      command '208'
      name '208 Already Reported'
      notes 'WebDAV - [RFC 5842](https://tools.ietf.org/html/rfc5842). The members of a DAV binding have already been enumerated in a previous reply to this request, and are not being included again.'
    end

    entry do
      command '226'
      name '226 IM Used'
      notes '[RFC 3229](https://tools.ietf.org/html/rfc3229). The server has fulfilled a GET request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance.'
    end
  end

  category do
    id '3xx Redirection'

    entry do
      command '300'
      name '300 Multiple Choices'
      notes 'There are multiple options that the client may follow.'
    end

    entry do
      command '301'
      name '301 Moved Permanently'
      notes 'The resource has been moved and all further requests should reference its new URI.'
    end

    entry do
      command '302'
      name '302 Found'
      notes 'The HTTP 1.0 specification described this status as "Moved Temporarily", but popular browsers respond to this status similar to behavior intended for `303`. The resource can be retrieved by referencing the returned URI.'
    end

    entry do
      command '303'
      name '303 See Other'
      notes 'The resource can be retrieved by following other URI using the `GET` method. When received in response to a `POST`, `PUT`, or `DELETE`, it can usually be assumed that the server processed the request successfully and is sending the client to an informational endpoint.'
    end

    entry do
      command '304'
      name '304 Not Modified'
      notes 'The resource has not been modified since the version specified in `If-Modified-Since` or `If-Match` headers. The resource will not be returned in response body.'
    end

    entry do
      command '305'
      name '305 Use Proxy'
      notes 'HTTP 1.1. The resource is only available through a proxy and the address is provided in the response.'
    end

    entry do
      command '306'
      name '306 Switch Proxy'
      notes 'Deprecated in HTTP 1.1. Used to mean that subsequent requests should be sent using the specified proxy.'
    end

    entry do
      command '307'
      name '307 Temporary Redirect'
      notes 'HTTP 1.1. The request should be repeated with the URI provided in the response, but future requests should still call the original URI.'
    end

    entry do
      command '308'
      name '308 Permanent Redirect'
      notes 'Experimental. The request and all future requests should be repeated with the URI provided in the response. The HTTP method is not allowed to be changed in the subsequent request.'
    end
  end

  category do
    id '4xx Client Error'

    entry do
      command '400'
      name '400 Bad Request'
      notes 'The request could not be fulfilled due to the incorrect syntax of the request.'
    end

    entry do
      command '401'
      name '401 Unauthorized'
      notes 'The requestor is not authorized to access the resource. This is similar to `402` but is used in cases where authentication is expected but has failed or has not been provided.'
    end

    entry do
      command '402'
      name '402 Payment Required'
      notes 'Reserved for future use. Some web services use this as an indication that the client has sent an excessive number of requests.'
    end

    entry do
      command '403'
      name '403 Forbidden'
      notes "The request was formatted correctly but the server is refusing to supply the requested resource. Unlike `402`, authenticating will not make a difference in the server's response."
    end

    entry do
      command '404'
      name '404 Not Found'
      notes "The resource could not be found. This is often used as a catch-all for all invalid URIs requested of the server."
    end

    entry do
      command '405'
      name '405 Method Not Allowed'
      notes "The resource was requested using a method that is not allowed. For example, requesting a resource via a `POST` method when the resource only supports the `GET` method."
    end

    entry do
      command '406'
      name '406 Not Acceptable'
      notes "The resource is valid, but cannot be provided in a format specified in the `Accept` headers in the request."
    end

    entry do
      command '407'
      name '407 Proxy Authentication Required'
      notes "Authentication is required with the proxy before requests can be fulfilled."
    end

    entry do
      command '408'
      name '408 Request Timeout'
      notes "The server timed out waiting for a request from the client. The client is allowed to repeat the request."
    end

    entry do
      command '409'
      name '409 Conflict'
      notes "The request cannot be completed due to a conflict in the request parameters."
    end

    entry do
      command '410'
      name '410 Gone'
      notes "The resource is no longer available at the requested URI and no redirection will be given."
    end

    entry do
      command '411'
      name '411 Length Required'
      notes "The request did not specify the length of its content as required by the resource."
    end

    entry do
      command '412'
      name '412 Precondition Failed'
      notes "The server does not meet one of the preconditions specified by the client."
    end

    entry do
      command '413'
      name '413 Request Entity Too Large'
      notes "The request is larger than what the server is able to process."
    end

    entry do
      command '414'
      name '414 Request-URI Too Long'
      notes "The URI provided in the request is too long for the server to process. This is often used when too much data has been encoded into the URI of a `GET` request and a `POST` request should be used instead."
    end

    entry do
      command '415'
      name '415 Unsupported Media Type'
      notes "The client provided data with a media type that the server does not support."
    end

    entry do
      command '416'
      name '416 Requested Range Not Satisfiable'
      notes "The client has asked for a portion of the resource but the server cannot supply that portion."
    end

    entry do
      command '417'
      name '417 Expectation Failed'
      notes "The client has asked for a portion of the resource but the server cannot supply that portion."
    end

    entry do
      command '422'
      name '422 Unprocessable Entity'
      notes "WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918). The request was formatted correctly but cannot be processed in its current form. Often used when the specified parameters fail validation errors."
    end

    entry do
      command '423'
      name '423 Locked'
      notes "WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918). The requested resource was found but has been locked and will not be returned."
    end

    entry do
      command '424'
      name '424 Failed Dependency'
      notes "WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918). The request failed due to a failure of a previous request."
    end

    entry do
      command '426'
      name '426 Upgrade Required'
      notes "The client should repeat the request using an upgraded protocol such as TLS 1.0."
    end

    entry do
      command '429'
      name '429 Too Many Requests'
      notes "The client has sent too many requests to the server and is being rate limited."
    end
  end

  category do
    id '5xx Server Error'

    entry do
      command '500'
      name '500 Internal Server Error'
      notes "A generic status for an error in the server itself."
    end

    entry do
      command '501'
      name '501 Not Implemented'
      notes "The server cannot respond to the request. This usually implies that the server could possibly support the request in the future &mdash; otherwise a `4xx` status may be more appropriate."
    end

    entry do
      command '502'
      name '502 Bad Gateway'
      notes "The server is acting as a proxy and did not receive an acceptable response from the upstream server."
    end

    entry do
      command '503'
      name '503 Service Unavailable'
      notes "The server is down and is not accepting requests."
    end

    entry do
      command '504'
      name '504 Gateway Timeout'
      notes "The server is acting as a proxy and did not receive a response from the upstream server."
    end

    entry do
      command '505'
      name '505 HTTP Version Not Supported'
      notes "The server does not support the HTTP protocol version specified in the request."
    end

    entry do
      command '506'
      name '506 Variant Also Negotiates'
      notes "Transparent content negotiation for the request results in a circular reference."
    end

    entry do
      command '507'
      name '507 Insufficient Storage'
      notes "WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918). The user or server does not have sufficient storage quota to fulfill the request."
    end

    entry do
      command '508'
      name '508 Loop Detected'
      notes "WebDAV - [RFC 5842](https://tools.ietf.org/html/rfc5842). The server detected an infinite loop in the request."
    end

    entry do
      command '510'
      name '510 Not Extended'
      notes "Further extensions to the request are necessary for it to be fulfilled."
    end

    entry do
      command '511'
      name '511 Network Authentication Required'
      notes "[RFC 6585](https://tools.ietf.org/html/rfc6585). The client must authenticate with the network before sending requests."
    end
  end
end
