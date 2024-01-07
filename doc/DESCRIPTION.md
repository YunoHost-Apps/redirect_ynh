This application allows to integrate a custom tile in YunoHost's user portal.

There two typical use cases are covered:
- **basic, explicit redirection** : this is a "virtual" app tile that just redirects to another url or external website using HTTP code 302
- **reverse-proxy** : create an app tile to expose an app listening on a specific port, typically something that you manually installed (with or without Docker) locally or on another machine.
