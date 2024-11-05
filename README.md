<!--
N.B.: This README was automatically generated by <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
It shall NOT be edited by hand.
-->

# Redirect for YunoHost

[![Integration level](https://dash.yunohost.org/integration/redirect.svg)](https://ci-apps.yunohost.org/ci/apps/redirect/) ![Working status](https://ci-apps.yunohost.org/ci/badges/redirect.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/redirect.maintain.svg)

[![Install Redirect with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=redirect)

*[Read this README in other languages.](./ALL_README.md)*

> *This package allows you to install Redirect quickly and simply on a YunoHost server.*  
> *If you don't have YunoHost, please consult [the guide](https://yunohost.org/install) to learn how to install it.*

## Overview

This application allows to integrate a custom tile in YunoHost's user portal.

There two typical use cases are covered:
- **basic, explicit redirection** : this is a "virtual" app tile that just redirects to another url or external website using HTTP code 302
- **reverse-proxy** : create an app tile to expose an app listening on a specific port, typically something that you manually installed (with or without Docker) locally or on another machine.


**Shipped version:** 2.0~ynh5
## Documentation and resources

- Official app website: <https://en.wikipedia.org/wiki/Reverse_proxy>
- YunoHost Store: <https://apps.yunohost.org/app/redirect>
- Report a bug: <https://github.com/YunoHost-Apps/redirect_ynh/issues>

## Developer info

Please send your pull request to the [`testing` branch](https://github.com/YunoHost-Apps/redirect_ynh/tree/testing).

To try the `testing` branch, please proceed like that:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
or
sudo yunohost app upgrade redirect -u https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
