This application allows to integrate a custom tile in YunoHost's user portal. Typical use cases include:
- **visible 301/302 redirect** : having a "virtual" app tile that's just a redirection to another url or external website
- **invisible redirect / reverse-proxy** : creating an app tile for a local app listening on a specific port, or a Docker container, or an app hosted on another machine

In technical terms: this app only adds a NGINX configuration snippet with either `redirect` or `proxy_pass` rule, and a YunoHost tile + appropriate SSOwat configuration.
