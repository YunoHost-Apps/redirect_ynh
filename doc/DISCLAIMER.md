## Redirect type

### Visible redirect

The client will be redirected to another url or external website

- `your-domain.com -> another-domain.net`
- `your-domain.com/foo -> another-domain.net/bar`

### Invisible redirect (a.k.a "reverse-proxy")

Visitor's address bar will remain the same. Typically used to integrate into YunoHost a manually-installed app into the portal.
    
- `you-domain.com/foo -> http://172.0.0.1:8080/app`

**IMPORTANT:** you may have to further tweak the `redirect.conf` in the nginx configuration, depending on your needs!

**IMPORTANT:** Many apps do not support being redirected to a different path due to relative links! This means that some apps being hosted for example on http://127.0.0.1:5050/app/ MUST be redirected to http://domain.tld/app/ and NOT http://domain.tld/someotherapp/. For example : an Odoo Docker container runs on http://127.0.0.1:8069/. You will not be able to redirect it to http://domain.tld/odoo/ ! You have to redirect it to the root, so for example http://odoo.domain.tld/
