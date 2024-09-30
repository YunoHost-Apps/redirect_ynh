<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Redirect para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/redirect.svg)](https://ci-apps.yunohost.org/ci/apps/redirect/) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/redirect.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/redirect.maintain.svg)

[![Instalar Redirect con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=redirect)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarRedirect rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

This application allows to integrate a custom tile in YunoHost's user portal.

There two typical use cases are covered:
- **basic, explicit redirection** : this is a "virtual" app tile that just redirects to another url or external website using HTTP code 302
- **reverse-proxy** : create an app tile to expose an app listening on a specific port, typically something that you manually installed (with or without Docker) locally or on another machine.


**Versión actual:** 2.0~ynh4
## Documentaciones y recursos

- Sitio web oficial: <https://en.wikipedia.org/wiki/Reverse_proxy>
- Catálogo YunoHost: <https://apps.yunohost.org/app/redirect>
- Reportar un error: <https://github.com/YunoHost-Apps/redirect_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [rama `testing`](https://github.com/YunoHost-Apps/redirect_ynh/tree/testing).

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
o
sudo yunohost app upgrade redirect -u https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
