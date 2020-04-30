# Redirect App

**Add a link on your user panel redirecting to another page or app, which can be protected behind your panel for some**.

It could be an invisible redirect, an external link, another app on your local network, a reverse proxy to an app or a Docker container... Some apps can be even be protected behind your panel (meaning that you will have to log-in to access them). The only limit is your imagination - and Nginx ;).

This app only adds a Nginx configuration file with `redirect` or `proxy_pass` rule, and a YunoHost tile. Nothing more.

## Redirect type

### Visible redirect

Visitor's address bar will change. Helpfull to add a user link to another 
website

    you-domain.com -> another-domain.net
    you-domain.com/foo -> another-domain.net/bar

### Invisible (proxy) redirect

Visitor's address bar will remain the same. Mostly use to serve local webserver 
for a personnal application.
    
    you-domain.com/foo -> http://172.0.0.1:8080/app

### Limit access by IP
This option is only for proxy_pass.
Use this option for Public no need this in Private.

All rules is located in `/etc/nginx/conf.d/block_ip/`

**IMPORTANT:** the redirect.conf file might need to be updated according to your situation!

## Direct redirect

The standard public redirect can fail when trying to redirect a web application (or another domain). When redirecting one application to another domain, use this option.

**WARNING:** Many apps do not support being redirected to a different path due to relative links! This means that some apps being hosted for example on http://127.0.0.1:5050/app/ HAVE TO be redirected to http://domain.tld/app/ and NOT http://domain.tld/someotherapp/

*Concrete example:* the Odoo Docker container runs on http://127.0.0.1:8069/. You will not be able to redirect it to http://domain.tld/odoo/ ! You have to redirect it to the root, so for example http://odoo.domain.tld/

## Public or private redirect

In case of a private redirect, the app will be available to logged in users only. This could be useful if you want to protect behind the SSO an app from your local network or from the server (e.g., a Docker container or an app that does not have user management or password protection).

**IMPORTANT:** Make sure that the app you want to protect CANNOT be accessed by its port or another direct link. Otherwise, your app will only be protected in YunoHost but would still be available through its direct link. In the case of a Docker container, the port of the container will have to be local (e.g., -p 127.0.0.1:9000:9000).

## Case examples

- **Creating a tile for a Docker container** with a local port (e.g., -p 127.0.0.1:PORT:PORT): proxy redirect to http://127.0.0.1:PORT-OF-THE-CONTAINER/

- **Redirecting to an external website**: visible redirect to the URL

- [CozyCloud behind YunoHost?](https://forum.cozy.io/t/cozy-cloud-sous-yunohost/616/11)

- **Creating a tile and protecting apps that are difficult to package natively (or for prototyping)**

- **Pointing another domain to the same app**: Proxy, invisible direct. Select your domain and the redirect path, for example: www.myapp.com/ -> myapp.mydomain.com/


**_Feel free to [share your case examples and customized Nginx files on the forum](https://forum.yunohost.org/t/2182)._**

## Credits

Insprired by [scith](https://github.com/scith) work.
