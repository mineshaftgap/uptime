Uptime Email2 plugin
======================

This Uptime (https://github.com/fzaninotto/uptime) plugin is a more recent implementation of the default email plugin.

To use the plugin, first install it using npm while in the Uptime directory:

```sh
$ npm install uptime-email2
```

Then to enable it, add it to the `plugins/index.js`, as follows:

```js
// in plugins/index.js
exports.init = function() {
  require('uptime-email2').init();
}
```

Customize the settings in the `config/production.yaml` configuration file, adding a `email2` section, as in the example below:

```yaml
email2:
  event:
    up:
      - 'http://localhost:8082'
      - 'https://www.example.com/do/something'
    down:
      - 'https://www.example.com/warn/somebody'
    paused:
    restarted:
  dashboardUrl: 'http://localhost:8082'
```