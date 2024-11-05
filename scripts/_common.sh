#!/bin/bash

URL_REGEX_VALID='(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]'
URL_REGEX_SECURE='^(http://(127\.[0-9]+\.[0-9]+\.[0-9]+|localhost)|https://.*)(:[0-9]+)?(/.*)?$'

_validate_redirect_uri() {
    if [[ ! $target =~ $URL_REGEX_VALID ]]; then
        ynh_die "Invalid destination: $target" 1
    fi

    # Avoid uncrypted remote destination with reverse proxy mode
    # Indeed the SSO send the password in all requests in HTTP headers
    if [[ "$redirect_type" = "reverseproxy" ]] && [[ ! $target =~ $URL_REGEX_SECURE ]]; then
        ynh_print_warn "Reverseproxying using cleartext HTTP to a possibly external machine ($target) is insecure ... please be super careful about this."
    fi
}
