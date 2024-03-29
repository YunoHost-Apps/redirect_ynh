<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# Redirect per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/redirect.svg)](https://dash.yunohost.org/appci/app/redirect) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/redirect.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/redirect.maintain.svg)

[![Installa Redirect con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=redirect)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare Redirect su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

This application allows to integrate a custom tile in YunoHost's user portal.

There two typical use cases are covered:
- **basic, explicit redirection** : this is a "virtual" app tile that just redirects to another url or external website using HTTP code 302
- **reverse-proxy** : create an app tile to expose an app listening on a specific port, typically something that you manually installed (with or without Docker) locally or on another machine.


**Versione pubblicata:** 2.0~ynh3
## Documentazione e risorse

- Sito web ufficiale dell’app: <https://en.wikipedia.org/wiki/Reverse_proxy>
- Store di YunoHost: <https://apps.yunohost.org/app/redirect>
- Segnala un problema: <https://github.com/YunoHost-Apps/redirect_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/redirect_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
o
sudo yunohost app upgrade redirect -u https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
