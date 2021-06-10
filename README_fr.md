# Redirect pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/redirect.svg)](https://dash.yunohost.org/appci/app/redirect) ![](https://ci-apps.yunohost.org/ci/badges/redirect.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/redirect.maintain.svg)  
[![Installer Redirect avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=redirect)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Redirect rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Créer une redirection ou un proxy vers un autre emplacement

**Version incluse :** 1.0.0~ynh5



## Avertissements / informations importantes

**Add a link on your user panel redirecting to another page or app, which can be protected behind your panel for some**.

It could be an invisible redirect, an external link, another app on your local network, a reverse proxy to an app or a Docker container... Some apps can be even be protected behind your panel (meaning that you will have to log-in to access them). The only limit is your imagination - and NGINX ;).

This app only adds a Nginx configuration file with `redirect` or `proxy_pass` rule, and a YunoHost tile. Nothing more.

## Redirect type

### Visible redirect

Visitor's address bar will change. Helpfull to add a user link to another website

    you-domain.com -> another-domain.net
    you-domain.com/foo -> another-domain.net/bar

### Invisible (proxy) redirect

Visitor's address bar will remain the same. Mostly use to serve local webserver for a personnal application.
    
    you-domain.com/foo -> http://172.0.0.1:8080/app

**IMPORTANT:** the `redirect.conf` file might need to be updated according to your situation!

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


**_Feel free to [share your case examples and customized Nginx files on the forum](https://forum.yunohost.org/t/2182)._**

## Credits

Insprired by [scith](https://github.com/scith) work.

## Documentations et ressources

* Site officiel de l'app : https://github.com/YunoHost-Apps/redirect_ynh
* Documentation YunoHost pour cette app : https://yunohost.org/app_redirect
* Signaler un bug : https://github.com/YunoHost-Apps/redirect_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/redirect_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
ou
sudo yunohost app upgrade redirect -u https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps