**Ajoutez un lien sur votre panneau d'utilisateur redirigeant vers une autre page ou application, qui peut être protégée derrière votre panneau pour certains**.

Il peut s'agir d'une redirection invisible, d'un lien externe, d'une autre application sur votre réseau local, d'un reverse proxy vers une application ou un conteneur Docker... Certaines applications peuvent même être protégées derrière votre panneau (ce qui signifie que vous devrez vous connecter- pour y accéder). La seule limite est votre imagination - et NGINX ;).

Cette application ajoute uniquement un fichier de configuration NGINX avec la règle `redirect` ou `proxy_pass` et une tuile YunoHost. Rien de plus.

## Type de redirection

### Redirection visible

La barre d'adresse du visiteur va changer. Utile pour ajouter un lien utilisateur vers un autre site Web

    votre-domaine.com -> autre-domaine.net
    vous-domaine.com/foo -> autre-domaine.net/bar

### Redirection invisible (proxy)

La barre d'adresse du visiteur restera la même. Principalement utilisé pour servir le serveur Web local pour une application personnelle.
    
    vous-domaine.com/foo -> http://172.0.0.1:8080/app

**IMPORTANT :** le fichier `redirect.conf` devra peut-être être mis à jour en fonction de votre situation !

**AVERTISSEMENT :** De nombreuses applications ne prennent pas en charge la redirection vers un chemin différent en raison de liens relatifs ! Cela signifie que certaines applications hébergées par exemple sur http://127.0.0.1:5050/app/ DOIVENT être redirigées vers http://domain.tld/app/ et NON vers http://domain.tld/someotherapp/

*Exemple concret :* le conteneur Odoo Docker fonctionne sur http://127.0.0.1:8069/. Vous ne pourrez pas le rediriger vers http://domain.tld/odoo/ ! Il faut le rediriger vers la racine, donc par exemple http://odoo.domain.tld/

## Redirection publique ou privée

En cas de redirection privée, l'application sera disponible uniquement pour les utilisateurs connectés. Cela peut être utile si vous souhaitez protéger derrière le SSO une application de votre réseau local ou du serveur (par exemple, un conteneur Docker ou une application qui n'a pas de gestion des utilisateurs ou de protection par mot de passe).

**IMPORTANT :** Assurez-vous que l'application que vous souhaitez protéger NE PEUT PAS être accessible via son port ou un autre lien direct. Sinon, votre application ne sera protégée que dans YunoHost mais sera toujours disponible via son lien direct. Dans le cas d'un conteneur Docker, le port du conteneur devra être local (par exemple, -p 127.0.0.1:9000:9000).

## Exemples de cas

- **Création d'une tuile pour un conteneur Docker** avec un port local (par exemple, -p 127.0.0.1:PORT:PORT) : redirection proxy vers http://127.0.0.1:PORT-OF-THE-CONTAINER/

- **Redirection vers un site externe** : redirection visible vers l'URL

- [CozyCloud derrière YunoHost ?](https://forum.cozy.io/t/cozy-cloud-sous-yunohost/616/11)

- **Créer une vignette et protéger les applications difficiles à packager nativement (ou pour le prototypage)**


**_N'hésitez pas à [partager vos exemples de cas et vos fichiers Nginx personnalisés sur le forum](https://forum.yunohost.org/t/2182)._**

## Crédits

Inspiré du travail de [scith](https://github.com/scith). 
