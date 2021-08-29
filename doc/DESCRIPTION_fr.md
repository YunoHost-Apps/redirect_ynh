Cette application permet d'intégrée une tuile personalisée dans le portail utilisateur de YunoHost. Les cas d'usage typiques sont:
- **redirection 301/302 visible** : avoir une tuile d'app "virtuelle" qui se contente de rediriger vers une autre url ou un site externe
- **redirection invisible / reverse-proxy** : créer une tuile pour une application locale écoutant sur un port précis, ou bien un conteneur Docker, ou encore une app hébergée sur une autre machine

En terme technique: cette app se contente de rajouter le morceau de configuration NGINX approprié avec soit `redirect` ou `proxy_pass`, et la tuile YunoHost + configuration SSOwat correspondante.
