<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Redirect voor Yunohost

[![Integratieniveau](https://dash.yunohost.org/integration/redirect.svg)](https://ci-apps.yunohost.org/ci/apps/redirect/) ![Mate van functioneren](https://ci-apps.yunohost.org/ci/badges/redirect.status.svg) ![Onderhoudsstatus](https://ci-apps.yunohost.org/ci/badges/redirect.maintain.svg)

[![Redirect met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=redirect)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Redirect snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

This application allows to integrate a custom tile in YunoHost's user portal.

There two typical use cases are covered:
- **basic, explicit redirection** : this is a "virtual" app tile that just redirects to another url or external website using HTTP code 302
- **reverse-proxy** : create an app tile to expose an app listening on a specific port, typically something that you manually installed (with or without Docker) locally or on another machine.


**Geleverde versie:** 2.1~ynh1
## Documentatie en bronnen

- Officiele website van de app: <https://en.wikipedia.org/wiki/Reverse_proxy>
- YunoHost-store: <https://apps.yunohost.org/app/redirect>
- Meld een bug: <https://github.com/YunoHost-Apps/redirect_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/redirect_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
of
sudo yunohost app upgrade redirect -u https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
