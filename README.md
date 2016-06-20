# Redirect App

Create redirect and add a link on user panel. Add a simple Nginx configuration
file with `redirect` or `proxy_pass` rule. Nothing more.

## Redirect type

### Visible redirect

Visitor's address bar will change. Helpfull to add a user link to another 
website

    you-domain.com -> another-domain.net
    you-domain.com/foo -> another-domain.net/bar

## Invisible (proxy) redirect

Visitor's address bar will remain the same. Mostly use to serve local webserver 
for a personnal application.
    
    you-domain.com/foo -> http://172.0.0.1:8080/app

## Credits

Insprired by [scith](https://github.com/scith) work.
