cheatsheet do
  title 'SIP Response Codes'
  docset_file_name 'SIP_Response_Codes'
  keyword 'sip'
  source_url 'http://cheat.kapeli.com'

  category do
    id '1xx Provisional'

    entry do
      name '100 Trying'
      notes 'Extended search being performed may take a significant time so a forking proxy must send a 100 Trying response.'
    end

    entry do
      name '180 Ringing'
      notes 'Destination user agent received INVITE, and is alerting user of call.'
    end

    entry do
      name '181 Call is Being Forwarded'
      notes 'Servers can optionally send this response to indicate a call is being forwarded.'
    end
    
    entry do
      name '182 Queued'
      notes 'Indicates that the destination was temporarily unavailable, so the server has queued the call until the destination is available. A server may send multiple 182 responses to update progress of the queue.'
    end
    
    entry do
      name '183 Session in Progress'
      notes 'This response may be used to send extra information for a call which is still being set up.'
    end
    
    entry do
      name '199 Early Dialog Terminated'
      notes 'Can be used by User Agent Server to indicate to upstream SIP entities (including the User Agent Client (UAC)) that an early dialog has been terminated.'
    end
  end

  category do
    id '2xx Successful'

    entry do
      name '200 OK'
      notes 'Indicates the request was successful.'
    end

    entry do
      name '202 Accepted'
      notes '(Deprecated) Indicates that the request has been accepted for processing, but the processing has not been completed.'
    end

    entry do
      name '203 Non-authoritative information'
      notes 'HTTP 1.1. The server successfully processed the request but is returning information from another source.'
    end

    entry do
      name '204 No Notification'
      notes 'Indicates the request was successful, but the corresponding response will not be received.'
    end
  end

  category do
    id '3xx Redirection'

    entry do
      name '300 Multiple choices'
      notes 'The address resolved to one of several options for the user or client to choose between, which are listed in the message body or the message`s Contact fields.'
    end

    entry do
      name '301 Moved permanently'
      notes 'The original Request-URI is no longer valid, the new address is given in the Contact header field, and the client should update any records of the original Request-URI with the new value.'
    end

    entry do
      name '302 Moved Temporarily'
      notes 'The client should try at the address in the Contact field. If an Expires field is present, the client may cache the result for that period of time.'
    end

    entry do
      name '305 Use proxy'
      notes 'The Contact field details a proxy that must be used to access the requested destination.'
    end

    entry do
      name '380 Alternative Service'
      notes 'The call failed, but alternatives are detailed in the message body.'
    end
  end

  category do
    id '4xx Client Failure'

    entry do
      name '400 Bad request'
      notes 'The request could not be understood due to malformed syntax.'
    end

    entry do
      name '401 Unauthorized'
      notes 'The request requires user authentication. This response is issued by UASs and registrars.'
    end

    entry do
      name '402 Payment required'
      notes 'Reserved for future use.'
    end

    entry do
      name '403 Forbidden'
      notes 'The server understood the request, but is refusing to fulfil it.'
    end

    entry do
      name '404 Not found'
      notes 'The server has definitive information that the user does not exist at the domain specified in the Request-URI. This status is also returned if the domain in the Request-URI does not match any of the domains handled by the recipient of the request.'
    end

    entry do
      name '405 Method not allowed'
      notes 'The method specified in the Request-Line is understood, but not allowed for the address identified by the Request-URI.'
    end

    entry do
      name '406 Not acceptable'
      notes 'The resource identified by the request is only capable of generating response entities that have content characteristics but not acceptable according to the Accept header field sent in the request.'
    end

    entry do
      name '407 Proxy authentication required'
      notes 'The request requires user authentication. This response is issued by proxys.'
    end

    entry do
      name '408 Request timeout'
      notes 'Couldnt find the user in time. The server could not produce a response within a suitable amount of time, for example, if it could not determine the location of the user in time. The client MAY repeat the request without modifications at any later time.'
    end

    entry do
      name '409 Conflict'
      notes "(Deprecated) User already registered. Deprecated by omission from later RFCs and by non-registration with the IANA."
    end

    entry do
      name '410 Gone'
      notes 'The user existed once, but is not available here any more.'
    end

    entry do
      name '411 Length required'
      notes '(Deprecated) The server will not accept the request without a valid Content-Length. Deprecated by omission from later RFCs and by non-registration with the IANA.'
    end

    entry do
      name '412 Conditional Request failed'
      notes 'The given precondition has not been met.'
    end

    entry do
      name '413 Request entity too large'
      notes 'Request body too large.'
    end

    entry do
      name '414 Request-URI too long'
      notes 'The server is refusing to service the request because the Request-URI is longer than the server is willing to interpret.' 
    end

    entry do
      name '415 Unsupported media type'
      notes 'Request body in a format not supported.'
    end

    entry do
      name '416 Unsupported URI Scheme'
      notes 'Request-URI is unknown to the server.' 
    end

    entry do
      name '417 Unknown Resource-Priority'
      notes 'There was a resource-priority option tag, but no Resource-Priority header.'
    end

    entry do
      name '420 Bad Extension'
      notes 'Bad SIP Protocol Extension used, not understood by the server.'
    end

    entry do
      name '421 Extension Required'
      notes 'The server needs a specific extension not listed in the Supported header.'
    end

    entry do
      name '422 Session Interval Too Small'
      notes 'The received request contains a Session-Expires header field with a duration below the minimum timer.'
    end

    entry do
      name '423 Interval Too Brief'
      notes 'Expiration time of the resource is too short.'
    end

    entry do
      name '424 Bad Location Information'
      notes "The request's location content was malformed or otherwise unsatisfactory."
    end

    entry do
      name '428 Use Identity Header'
      notes "The server policy requires an Identity header, and one has not been provided."
    end

    entry do
      name '428 Use Identity Header'
      notes "The server policy requires an Identity header, and one has not been provided."
    end

    entry do
      name '429 Provide Referrer Identity'
      notes "The server did not receive a valid Referred-By token on the request.."
    end

    entry do
      name '430 Flow Failed'
      notes "A specific flow to a user agent has failed, although other flows may succeed. This response is intended for use between proxy devices, and should not be seen by an endpoint (and if it is seen by one, should be treated as a 400 Bad Request response)"
    end

    entry do
      name '430 Anonymity Disallowed'
      notes "The request has been rejected because it was anonymous."
    end

    entry do
      name '436 Bad Identity-Info'
      notes "The request has an Identity-Info header, and the URI scheme in that header cannot be dereferenced."
    end

    entry do
      name '437 Unsupported Certificate'
      notes "The server was unable to validate a certificate for the domain that signed the request."
    end

    entry do
      name '438 Invalid Identity Header'
      notes "The server obtained a valid certificate that the request claimed was used to sign the request, but was unable to verify that signature."
    end

    entry do
      name '439 First Hop Lacks Outbound Support'
      notes 'The first outbound proxy the user is attempting to register through does not support the "outbound" feature of RFC 5626, although the registrar does.'
    end

    entry do
      name '470 Consent Needed'
      notes "The source of the request did not have the permission of the recipient to make such a request."
    end

    entry do
      name '480 Temporarily Unavailable'
      notes "Callee currently unavailable."
    end

    entry do
      name '481 Call/Transaction Does Not Exist'
      notes "Server received a request that does not match any dialog or transaction."
    end

    entry do
      name '482 Loop Detected'
      notes "Server has detected a loop."
    end

    entry do
      name '483 Too Many Hops'
      notes "Max-Forwards header has reached the value '0'."
    end

    entry do
      name '484 Address Incomplete'
      notes "Request-URI incomplete."
    end

    entry do
      name '485 Ambiguous'
      notes "Request-URI is ambiguous."
    end

    entry do
      name '486 Busy Here'
      notes "Callee is busy."
    end

    entry do
      name '487 Request Terminated'
      notes "Request has terminated by bye or cancel."
    end

    entry do
      name '488 Not Acceptable Here'
      notes "Some aspect of the session description or the Request-URI is not acceptable."
    end

    entry do
      name '489 Bad Event'
      notes "The server did not understand an event package specified in an Event header field."
    end

    entry do
      name '491 Request Pending'
      notes "Server has some pending request from the same dialog."
    end

    entry do
      name '493 Undecipherable'
      notes "Request contains an encrypted MIME body, which recipient can not decrypt."
    end

    entry do
      name '494 Security Agreement Required'
      notes "The server has received a request that requires a negotiated security mechanism, and the response contains a list of suitable security mechanisms for the requester to choose between, or a digest authentication challenge."
    end
  end

  category do
    id '5xx Server Failure'

    entry do
      name '500 Internal server error'
      notes "The server could not fulfill the request due to some unexpected condition."
    end

    entry do
      name '501 Not implemented'
      notes "The server does not have the ability to fulfill the request, such as because it does not recognize the request method. (Compare with 405 Method Not Allowed, where the server recognizes the method but does not allow or support it.)"
    end

    entry do
      name '502 Bad gateway'
      notes "The server is acting as a gateway or proxy, and received an invalid response from a downstream server while attempting to fulfill the request."
    end

    entry do
      name '503 Service unavailable'
      notes 'The server is undergoing maintenance or is temporarily overloaded and so cannot process the request. A "Retry-After" header field may specify when the client may reattempt its request.'
    end

    entry do
      name '504 Server Time-out'
      notes "The server attempted to access another server in attempting to process the request, and did not receive a prompt response."
    end

    entry do
      name '505 HTTP version not supported'
      notes "The SIP protocol version in the request is not supported by the server."
    end

    entry do
      name '513 Message Too Large'
      notes "The request message length is longer than the server can process."
    end

    entry do
      name '580 Precondition Failure'
      notes "The server is unable or unwilling to meet some constraints specified in the offer."
    end
  end
 
  category do 
    id '6xx Global Failure'

    entry do
      name '600 Busy Everywhere'
      notes "All possible destinations are busy. Unlike the 486 response, this response indicates the destination knows there are no alternative destinations (such as a voicemail server) able to accept the call."
    end

    entry do
      name '603 Decline'
      notes "The destination does not wish to participate in the call, or cannot do so, and additionally the destination knows there are no alternative destinations (such as a voicemail server) willing to accept the call."
    end

    entry do
      name '604 Does Not Exist Anywhere'
      notes "The server has authoritative information that the requested user does not exist anywhere."
    end

    entry do
      name '606 Not Acceptable'
      notes "The user's agent was contacted successfully but some aspects of the session description such as the requested media, bandwidth, or addressing style were not acceptable."
    end
  end
  notes <<-'END'
    * Based on [List of SIP status codes](http://en.wikipedia.org/wiki/List_of_SIP_response_codes)
  END
end
