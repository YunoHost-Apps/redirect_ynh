<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Redirect YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/redirect.svg)](https://ci-apps.yunohost.org/ci/apps/redirect/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/redirect.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/redirect.maintain.svg)

[![Instalatu Redirect YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=redirect)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Redirect YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

This application allows to integrate a custom tile in YunoHost's user portal.

There two typical use cases are covered:
- **basic, explicit redirection** : this is a "virtual" app tile that just redirects to another url or external website using HTTP code 302
- **reverse-proxy** : create an app tile to expose an app listening on a specific port, typically something that you manually installed (with or without Docker) locally or on another machine.


**Paketatutako bertsioa:** 2.1~ynh1
## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://en.wikipedia.org/wiki/Reverse_proxy>
- YunoHost Denda: <https://apps.yunohost.org/app/redirect>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/redirect_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/redirect_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
edo
sudo yunohost app upgrade redirect -u https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
