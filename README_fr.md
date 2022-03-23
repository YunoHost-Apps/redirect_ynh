# Redirect pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/redirect.svg)](https://dash.yunohost.org/appci/app/redirect) ![](https://ci-apps.yunohost.org/ci/badges/redirect.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/redirect.maintain.svg)  
[![Installer Redirect avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=redirect)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Redirect rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Cette application permet d'intégrée une tuile personalisée dans le portail utilisateur de YunoHost. Les cas d'usage typiques sont:
- **redirection 301/302 visible** : avoir une tuile d'app "virtuelle" qui se contente de rediriger vers une autre url ou un site externe
- **redirection invisible / reverse-proxy** : créer une tuile pour une application locale écoutant sur un port précis, ou bien un conteneur Docker, ou encore une app hébergée sur une autre machine

En terme technique: cette app se contente de rajouter le morceau de configuration NGINX approprié avec soit `redirect` ou `proxy_pass`, et la tuile YunoHost + configuration SSOwat correspondante.


**Version incluse :** 1.0.1~ynh1



## Avertissements / informations importantes

## Types de redirection

### Redirection visible

Le client sera redirigé vers une autre URL ou site externe

- `votre-domaine.com -> un-autre-domaine.net`
- `votre-domaine.com/foo -> un-autre-domaine.net/bar`

### Redirection invisible (a.k.a "reverse-proxy")

L'adresse du client restera inchangé dans le navigateur. Typiquement utilisé pour intéger dans YunoHost une application installée manuellement.
    
- `you-domain.com/foo -> http://172.0.0.1:8080/app`

**IMPORTANT:** il vous faudra peut-être bricoler manuellement `redirect.conf` dans la configuration nginx, en fonction de vos besoins.

**IMPORTANT:** Certaines apps ne supportent pas d'être redirigées depuis un chemin différent à cause du fonctionnement des liens relatifs ... Cela signifie que par exemple une app hébergée sur `http://127.0.0.1:5050/app/` DOIT être routé sur `http://domaine.tld/app/` et PAS http://domaine.tld/unautrechemin/. Par exemple: un conteneur Docker Odoo tourne sur `http://127.0.0.1:8069/`. Il ne sera pas capable de fonctionné correctement si il est routé sur `http://domaine.tld/odoo/` ! Il faut forcément l'installer à la racine d'un domaine, par exemple `http://odoo.domaine.tld/`

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