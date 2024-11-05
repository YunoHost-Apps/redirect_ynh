<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Redirect para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/redirect.svg)](https://ci-apps.yunohost.org/ci/apps/redirect/) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/redirect.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/redirect.maintain.svg)

[![Instalar Redirect con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=redirect)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Redirect de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

This application allows to integrate a custom tile in YunoHost's user portal.

There two typical use cases are covered:
- **basic, explicit redirection** : this is a "virtual" app tile that just redirects to another url or external website using HTTP code 302
- **reverse-proxy** : create an app tile to expose an app listening on a specific port, typically something that you manually installed (with or without Docker) locally or on another machine.


**Versión proporcionada:** 2.0~ynh5
## Documentación e recursos

- Web oficial da app: <https://en.wikipedia.org/wiki/Reverse_proxy>
- Tenda YunoHost: <https://apps.yunohost.org/app/redirect>
- Informar dun problema: <https://github.com/YunoHost-Apps/redirect_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/redirect_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
ou
sudo yunohost app upgrade redirect -u https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
