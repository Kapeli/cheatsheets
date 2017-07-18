cheatsheet do
  title 'openssl'
  docset_file_name 'openssl'
  keyword 'openssl'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'CSR'

    entry do
      name 'Create a CSR with an existing private key'
      notes '
      ```
      openssl req -out CSR.csr -key privateKey.key -new
      ```
      '
    end
    entry do
      name 'Create a CSR with a brand new private key'
      notes '
      ```
      openssl req -out CSR.csr -new -newkey rsa:2048 -nodes -keyout privateKey.key
      ```'
    end
    entry do
      name 'Create a CSR from an existing certificate'
      notes '
      ```
      openssl x509 -x509toreq -in certificate.crt -out CSR.csr -signkey privateKey.key
      ```
      '
    end
    entry do
      name 'Check a CSR'
      notes '
      ```
      openssl req -text -noout -verify -in CSR.csr
      ```
      '
    end
  end

  category do
    id 'Certificates'
    entry do
      name 'Generate a self-signed certificate'
      notes '
      ```
      openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout privateKey.key -out certificate.crt
      ```
      '
    end
    entry do
      name 'Check a certificate'
      notes '
      ```
      openssl x509 -in certificate.crt -text -noout
      ```
      '
    end
    entry do
      name 'Convert to PEM (from .der, .cer or .crt)'
      notes '
      ```
      openssl x509 -inform der -in certificate.cer -out certificate.pem
      ```
      '
    end
    entry do
      name 'Get server certificate and chain'
      notes '
      ```
      openssl s_client -connect www.paypal.com:443
      ```
      '
    end
  end

  category do
    id 'Private Keys'
    entry do
      name 'Remove a passphrase from a private key'
      notes '
      ```
      openssl rsa -in privateKey.pem -out newPrivateKey.pem
      ```
      '
    end
    entry do
      name 'Check a private key'
      notes '
      ```
      openssl rsa -in privateKey.key -check
      ```
      '
    end
  end

  category do
    id 'PKCS#12 (.p12 or .pfx)'
    entry do
      name 'Check a PKCS#12 file'
      notes '
      ```
      openssl pkcs12 -info -in keyStore.p12
      ```
      '
    end
    entry do
      name 'Convert to PEM'
      notes '
      ```
      openssl pkcs12 -in keyStore.pfx -out keyStore.pem -nodes
      ```
      '
    end
  end

  category do
    id 'PEM'
    entry do
      name 'Convert to DER'
      notes '
      ```
      openssl x509 -outform der -in certificate.pem -out certificate.der
      ```
      '
    end
    entry do
      name 'Convert to PKCS#12'
      notes '
      ```
      openssl pkcs12 -export -out certificate.pfx -inkey privateKey.key -in certificate.crt -certfile CACert.crt
      ```
      '
    end
  end

  category do
    id 'Checking Certificate vs Private Key'
    entry do
      name 'Certificate signature'
      notes '
      ```
      openssl x509 -noout -modulus -in certificate.crt | openssl md5
      ```
      '
    end
    entry do
      name 'CSR signature'
      notes '
      ```
      openssl req -noout -modulus -in CSR.csr | openssl md5
      ```
      '
    end
    entry do
      name 'Private key signature'
      notes '
      ```
      openssl rsa -noout -modulus -in privateKey.key | openssl md5
      ```
      '
    end
  end

  notes <<-'END'
    * Created by [Greg Bataille](http://www.github.com/gbataille)
    * Inspired by the [SSLShopper cheat sheet](https://www.sslshopper.com/article-most-common-openssl-commands.html)
  END
end
