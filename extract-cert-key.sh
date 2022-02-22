#!/bin/sh
openssl pkcs12 -info -in volt.p12 -out private_key.key -nodes -nocerts
openssl pkcs12 -info -in volt.p12 -out certificate.cert -nokeys
