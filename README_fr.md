<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Redirect pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/redirect.svg)](https://ci-apps.yunohost.org/ci/apps/redirect/) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/redirect.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/redirect.maintain.svg)

[![Installer Redirect avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=redirect)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Redirect rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Cette application permet d'intégrer une tuile personalisée dans le portail utilisateur de YunoHost.

Ces deux cas d'usage sont gérés:
- **redirection basique, explicite** : il s'agit de créer une tuile "virtuelle" qui redirige vers une autre URL ou site web externe (HTTP code 302)
- **reverse-proxy** : créer une tuile pour une application locale qui écoute sur un port donné, typiquement quelque chose que vous avez installé manuellement (avec ou sans Docker), sur cette machine ou sur une autre machine.


**Version incluse :** 2.0~ynh4
## Documentations et ressources

- Site officiel de l’app : <https://en.wikipedia.org/wiki/Reverse_proxy>
- YunoHost Store : <https://apps.yunohost.org/app/redirect>
- Signaler un bug : <https://github.com/YunoHost-Apps/redirect_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/redirect_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
ou
sudo yunohost app upgrade redirect -u https://github.com/YunoHost-Apps/redirect_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
