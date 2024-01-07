Cette application permet d'intégrée une tuile personalisée dans le portail utilisateur de YunoHost.

Ces deux cas d'usage sont gérés:
- **redirection basique, explicite** : il s'agit de créer une tuile "virtuelle" qui redirige vers une autre URL ou site web externe (HTTP code 302)
- **reverse-proxy** : créer une tuile pour une application locale qui écoute sur un port donné, typiquement quelque chose que vous avez installé manuellement (avec ou sans Docker), sur cette machine ou sur une autre machine.
