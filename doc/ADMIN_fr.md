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
