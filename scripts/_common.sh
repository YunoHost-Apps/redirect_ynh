#!/bin/bash

URL_REGEX_VALID='(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]'
URL_REGEX_SECURE='^(http://(127\.[0-9]+\.[0-9]+\.[0-9]+|localhost)|https://.*)(:[0-9]+)?(/.*)?$'

_validate_redirect_uri() {
    if [[ ! $target =~ $URL_REGEX_VALID ]]; then
        ynh_die "Invalid destination: $target" 1
    fi

    # Avoid uncrypted remote destination with reverse proxy mode
    # Indeed the SSO send the password in all requests in HTTP headers
    if [[ "$redirect_type" = "proxy" ]] && [[ ! $target =~ $URL_REGEX_SECURE ]]; then
        ynh_die "For secure reason, you can't use an unencrypted http remote destination couple with ssowat for your reverse proxy: $target" 1
    fi
}

_add_dummy_service() {
    cat << EOF > /etc/systemd/system/whatever.service
[Unit]
Description=Whatever
After=network.target

[Service]
WorkingDirectory=/redirect/
ExecStart=python3 -m http.server -b 127.0.0.1 1234
PrivateTmp=true

[Install]
WantedBy=multi-user.target
EOF

    mkdir -p /redirect
    echo "helloworld" > /redirect/index.html
    systemctl daemon-reload
    ynh_systemd_action --service_name=whatever --action=enable
    ynh_systemd_action --service_name=whatever --action=restart

    true
}
