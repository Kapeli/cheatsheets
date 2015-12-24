cheatsheet do
  title 'HTTP Status Codes for Rails'
  docset_file_name 'HTTP_Status_Codes_Rails'
  keyword 'http'
  source_url 'http://cheat.kapeli.com'

  introduction <<-INTRO
HTTP status codes and their respective Rails symbol representations. For example, `:not_found` can be used instead of `404` in a render call:

```ruby
render file: '404.html.erb', status: :not_found
```
INTRO

  category do
    id '1xx Informational'

    entry do
      command ':continue'
      name '100 Continue'
      notes 'The server has received the request headers, and that the client should proceed to send the request body.'
    end

    entry do
      command ':switching_protocols'
      name '101 Switching protocols'
      notes 'The requester has asked the server to switch protocols and the server is acknowledging that it will do so.'
    end

    entry do
      command ':processing'
      name '102 Processing'
      notes 'The server has received and is processing the request, but no response is available yet.'
    end
  end

  category do
    id '2xx Success'

    entry do
      command ':ok'
      name '200 OK'
      notes 'The standard response for successful HTTP requests.'
    end

    entry do
      command ':created'
      name '201 Created'
      notes 'The request has been fulfilled and a new resource has been created.'
    end

    entry do
      command ':accepted'
      name '202 Accepted'
      notes 'The request has been accepted but has not been processed yet. This code does not guarantee that the request will process successfully.'
    end

    entry do
      command ':non_authoritative_information'
      name '203 Non-authoritative information'
      notes 'HTTP 1.1. The server successfully processed the request but is returning information from another source.'
    end

    entry do
      command ':no_content'
      name '204 No content'
      notes 'The server accepted the request but is not returning any content. This is often used as a response to a `DELETE` request.'
    end

    entry do
      command ':reset_content'
      name '205 Reset content'
      notes 'Similar to a `204 No Content` response but this response requires the requester to reset the document view.'
    end

    entry do
      command ':partial_content'
      name '206 Partial content'
      notes 'The server is delivering only a portion of the content, as requested by the client via a range header.'
    end

    entry do
      command ':multi_status'
      name '207 Multi-status'
      notes 'The message body that follows is an XML message and can contain a number of separate response codes, depending on how many sub-requests were made.

      WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918)'
    end

    entry do
      command ':already_reported'
      name '208 Already reported'
      notes 'The members of a DAV binding have already been enumerated in a previous reply to this request, and are not being included again.

      WebDAV - [RFC 5842](https://tools.ietf.org/html/rfc5842)'
    end

    entry do
      command ':im_used'
      name '226 IM used'
      notes 'The server has fulfilled a GET request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance.

      [RFC 3229](https://tools.ietf.org/html/rfc3229)'
    end
  end

  category do
    id '3xx Redirection'

    entry do
      command ':multiple_choices'
      name '300 Multiple choices'
      notes 'There are multiple options that the client may follow.'
    end

    entry do
      command ':moved_permanently'
      name '301 Moved permanently'
      notes 'The resource has been moved and all further requests should reference its new URI.'
    end

    entry do
      command ':found'
      name '302 Found'
      notes 'The HTTP 1.0 specification described this status as "Moved Temporarily", but popular browsers respond to this status similar to behavior intended for `303`. The resource can be retrieved by referencing the returned URI.'
    end

    entry do
      command ':see_other'
      name '303 See other'
      notes 'The resource can be retrieved by following other URI using the `GET` method. When received in response to a `POST`, `PUT`, or `DELETE`, it can usually be assumed that the server processed the request successfully and is sending the client to an informational endpoint.'
    end

    entry do
      command ':not_modified'
      name '304 Not modified'
      notes 'The resource has not been modified since the version specified in `If-Modified-Since` or `If-Match` headers. The resource will not be returned in response body.'
    end

    entry do
      command ':use_proxy'
      name '305 Use proxy'
      notes 'HTTP 1.1. The resource is only available through a proxy and the address is provided in the response.'
    end

    entry do
      command ':reserved'
      name '306 Switch proxy'
      notes 'Deprecated in HTTP 1.1. Used to mean that subsequent requests should be sent using the specified proxy.'
    end

    entry do
      command ':temporary_redirect'
      name '307 Temporary redirect'
      notes 'HTTP 1.1. The request should be repeated with the URI provided in the response, but future requests should still call the original URI.'
    end

    entry do
      command ':permanent_redirect'
      name '308 Permanent redirect'
      notes 'Experimental. The request and all future requests should be repeated with the URI provided in the response. The HTTP method is not allowed to be changed in the subsequent request.'
    end
  end

  category do
    id '4xx Client Error'

    entry do
      command ':bad_request'
      name '400 Bad request'
      notes 'The request could not be fulfilled due to the incorrect syntax of the request.'
    end

    entry do
      command ':unauthorized'
      name '401 Unauthorized'
      notes 'The requestor is not authorized to access the resource. This is similar to `402` but is used in cases where authentication is expected but has failed or has not been provided.'
    end

    entry do
      command ':payment_required'
      name '402 Payment required'
      notes 'Reserved for future use. Some web services use this as an indication that the client has sent an excessive number of requests.'
    end

    entry do
      command ':forbidden'
      name '403 Forbidden'
      notes "The request was formatted correctly but the server is refusing to supply the requested resource. Unlike `402`, authenticating will not make a difference in the server's response."
    end

    entry do
      command ':not_found'
      name '404 Not found'
      notes "The resource could not be found. This is often used as a catch-all for all invalid URIs requested of the server."
    end

    entry do
      command ':method_not_allowed'
      name '405 Method not allowed'
      notes "The resource was requested using a method that is not allowed. For example, requesting a resource via a `POST` method when the resource only supports the `GET` method."
    end

    entry do
      command ':not_acceptable'
      name '406 Not acceptable'
      notes "The resource is valid, but cannot be provided in a format specified in the `Accept` headers in the request."
    end

    entry do
      command ':proxy_authentication_required'
      name '407 Proxy authentication required'
      notes "Authentication is required with the proxy before requests can be fulfilled."
    end

    entry do
      command ':request_timeout'
      name '408 Request timeout'
      notes "The server timed out waiting for a request from the client. The client is allowed to repeat the request."
    end

    entry do
      command ':conflict'
      name '409 Conflict'
      notes "The request cannot be completed due to a conflict in the request parameters."
    end

    entry do
      command ':gone'
      name '410 Gone'
      notes "The resource is no longer available at the requested URI and no redirection will be given."
    end

    entry do
      command ':length_required'
      name '411 Length required'
      notes "The request did not specify the length of its content as required by the resource."
    end

    entry do
      command ':precondition_failed'
      name '412 Precondition failed'
      notes "The server does not meet one of the preconditions specified by the client."
    end

    entry do
      command ':request_entity_too_large'
      name '413 Request entity too large'
      notes "The request is larger than what the server is able to process."
    end

    entry do
      command ':request_uri_too_long'
      name '414 Request-URI too long'
      notes "The URI provided in the request is too long for the server to process. This is often used when too much data has been encoded into the URI of a `GET` request and a `POST` request should be used instead."
    end

    entry do
      command ':unsupported_media_type'
      name '415 Unsupported media type'
      notes "The client provided data with a media type that the server does not support."
    end

    entry do
      command ':requested_range_not_satisfiable'
      name '416 Requested range not satisfiable'
      notes "The client has asked for a portion of the resource but the server cannot supply that portion."
    end

    entry do
      command ':expectation_failed'
      name '417 Expectation failed'
      notes "The server cannot meet the requirements of the Expect request-header field."
    end

    entry do
      command ':unprocessable_entity'
      name '422 Unprocessable entity'
      notes "The request was formatted correctly but cannot be processed in its current form. Often used when the specified parameters fail validation errors.

      WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918)"
    end

    entry do
      command ':locked'
      name '423 Locked'
      notes "The requested resource was found but has been locked and will not be returned.

      WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918)"
    end

    entry do
      command ':failed_dependency'
      name '424 Failed dependency'
      notes "The request failed due to a failure of a previous request.

      WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918)"
    end

    entry do
      command ':upgrade_required'
      name '426 Upgrade required'
      notes "The client should repeat the request using an upgraded protocol such as TLS 1.0."
    end
  end

  category do
    id '5xx Server Error'

    entry do
      command ':internal_server_error'
      name '500 Internal server error'
      notes "A generic status for an error in the server itself."
    end

    entry do
      command ':not_implemented'
      name '501 Not implemented'
      notes "The server cannot respond to the request. This usually implies that the server could possibly support the request in the future &mdash; otherwise a `4xx` status may be more appropriate."
    end

    entry do
      command ':bad_gateway'
      name '502 Bad gateway'
      notes "The server is acting as a proxy and did not receive an acceptable response from the upstream server."
    end

    entry do
      command ':service_unavailable'
      name '503 Service unavailable'
      notes "The server is down and is not accepting requests."
    end

    entry do
      command ':gateway_timeout'
      name '504 Gateway timeout'
      notes "The server is acting as a proxy and did not receive a response from the upstream server."
    end

    entry do
      command ':http_version_not_supported'
      name '505 HTTP version not supported'
      notes "The server does not support the HTTP protocol version specified in the request."
    end

    entry do
      command ':variant_also_negotiates'
      name '506 Variant also negotiates'
      notes "Transparent content negotiation for the request results in a circular reference."
    end

    entry do
      command ':insufficient_storage'
      name '507 Insufficient storage'
      notes "The user or server does not have sufficient storage quota to fulfill the request.

      WebDAV - [RFC 4918](https://tools.ietf.org/html/rfc4918)"
    end

    entry do
      command ':loop_detected'
      name '508 Loop detected'
      notes "The server detected an infinite loop in the request.

      WebDAV - [RFC 5842](https://tools.ietf.org/html/rfc5842)"
    end

    entry do
      command ':not_extended'
      name '510 Not extended'
      notes "Further extensions to the request are necessary for it to be fulfilled."
    end

    entry do
      command ':network_authentication_required'
      name '511 Network authentication required'
      notes "The client must authenticate with the network before sending requests.

      [RFC 6585](https://tools.ietf.org/html/rfc6585)"
    end
  end
  notes <<-'END'
    * Based on [cheat.errtheblog.com](http://cheat.errtheblog.com/) and [List of HTTP status codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes) on Wikipedia.
  END
end
