cheatsheet do
  title 'WebSocket Status Codes'
  docset_file_name 'WebSocket_Status_Codes'
  keyword 'ws'
  source_url 'http://cheat.kapeli.com'

  introduction 'WebSocket status codes, per RFC 6455'

  category do
    id 'Defined Status Codes'

    entry do
      name '1000 `CLOSE_NORMAL`'
      notes '1000 indicates a normal closure, meaning that the purpose for ' \
        'which the connection was established has been fulfilled.'
    end

    entry do
      name '1001 `CLOSE_GOING_AWAY`'
      notes '1001 indicates that an endpoint is "going away", such as a ' \
        'server going down or a browser having navigated away from a page.'
    end

    entry do
      name '1002 `CLOSE_PROTOCOL_ERROR`'
      notes '1002 indicates that an endpoint is terminating the connection ' \
        'due to a protocol error.'
    end

    entry do
      name '1003 `CLOSE_UNSUPPORTED`'
      notes '1003 indicates that an endpoint is terminating the connection ' \
        'because it has received a type of data it cannot accept (e.g., an ' \
        'endpoint that understands only text data MAY send this if it ' \
        'receives a binary message).'
    end

    entry do
      name '1004'
      notes 'Reserved. The specific meaning might be defined in the future.'
    end

    entry do
      name '1005 `CLOSED_NO_STATUS`'
      notes '1005 is a reserved value and MUST NOT be set as a status code ' \
        'in a Close control frame by an endpoint.  It is designated for use ' \
        'in applications expecting a status code to indicate that no status ' \
        'code was actually present.'
    end

    entry do
      name '1006 `CLOSE_ABNORMAL`'
      notes '1006 is a reserved value and MUST NOT be set as a status code ' \
        'in a Close control frame by an endpoint.  It is designated for use ' \
        'in applications expecting a status code to indicate that the ' \
        'connection was closed abnormally, e.g., without sending or ' \
        'receiving a Close control frame.'
    end

    entry do
      name '1007 _Unsupported payload_'
      notes '1007 indicates that an endpoint is terminating the connection ' \
        'because it has received data within a message that was not ' \
        'consistent with the type of the message (e.g., non-UTF-8 [RFC3629] ' \
        'data within a text message).'
    end

    entry do
      name '1008 _Policy violation_'
      notes '1008 indicates that an endpoint is terminating the connection ' \
        'because it has received a message that violates its policy.  This ' \
        'is a generic status code that can be returned when there is no ' \
        'other more suitable status code (e.g., 1003 or 1009) or if there ' \
        'is a need to hide specific details about the policy.'
    end

    entry do
      name '1009 `CLOSE_TOO_LARGE`'
      notes '1009 indicates that an endpoint is terminating the connection ' \
        'because it has received a message that is too big for it to ' \
        'process.'
    end

    entry do
      name '1010 _Mandatory extension_'
      notes '1010 indicates that an endpoint (client) is terminating the ' \
        'connection because it has expected the server to negotiate one or ' \
        "more extension, but the server didn't return them in the response " \
        'message of the WebSocket handshake.  The list of extensions that ' \
        'are needed SHOULD appear in the /reason/ part of the Close frame. ' \
        'Note that this status code is not used by the server, because it ' \
        'can fail the WebSocket handshake instead.'
    end

    entry do
      name '1011 _Server error_'
      notes '1011 indicates that a server is terminating the connection ' \
        'because it encountered an unexpected condition that prevented it ' \
        'from fulfilling the request.'
    end

    entry do
      name '1012 _Service restart_'
      notes '1012 indicates that the server / service is restarting.'
    end

    entry do
      name '1013 _Try again later_'
      notes '1013 indicates that a temporary server condition forced ' \
        "blocking the client's request."
    end

    entry do
      name '1014 _Bad gateway_'
      notes '1014 indicates that the server acting as gateway received an ' \
        'invalid response'
    end

    entry do
      name '1015 _TLS handshake fail_'
      notes '1015 is a reserved value and MUST NOT be set as a status code ' \
        'in a Close control frame by an endpoint.  It is designated for use ' \
        'in applications expecting a status code to indicate that the ' \
        'connection was closed due to a failure to perform a TLS handshake ' \
        "(e.g., the server certificate can't be verified)."
    end
  end

    category do
    id 'Reserved Status Code Ranges'

    entry do
      name '0-999'
      notes 'Status codes in the range 0-999 are not used.'
    end

    entry do
      name '1000-2999'
      notes 'Status codes in the range 1000-2999 are reserved for definition ' \
        'by this protocol, its future revisions, and extensions specified in ' \
        'a permanent and readily available public specification.'
    end

    entry do
      name '3000-3999'
      notes 'Status codes in the range 3000-3999 are reserved for use by ' \
        'libraries, frameworks, and applications.  These status codes are ' \
        'registered directly with IANA.  The interpretation of these codes ' \
        'is undefined by this protocol.'
    end

    entry do
      name '4000-4999'
      notes 'Status codes in the range 4000-4999 are reserved for private ' \
        "use and thus can't be registered.  Such codes can be used by prior " \
        'agreements between WebSocket applications.  The interpretation of ' \
        'these codes is undefined by this protocol.'
    end
  end

  notes <<-'END'
    - Based on [RFC 6455](https://datatracker.ietf.org/doc/html/rfc6455#section-7.4) & [Luka967's docs](https://github.com/Luka967/websocket-close-codes).
  END
end
