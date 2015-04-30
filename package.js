Package.describe({
  name: 'keryi:meteor-notification-bs3',
  version: '0.1.0',
  summary: 'A simple notification using bootstrap 3 for meteor',
  git: 'https://github.com/keryi/meteor-notifications-bs3.git',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.1.0.2');

  api.use([
    'coffeescript',
    'templating',
    'tracker',
    'alanning:roles@1.2.13',
    'aldeed:collection2@2.3.3',
    'aldeed:simple-schema@1.3.2',
    'random'
  ]);

  api.addFiles([
    'lib/both/collections.coffee'
  ], ['client', 'server']);

  api.addFiles([
    'lib/client/notifications.html',
    'lib/client/notifications.coffee',
    'lib/client/subscriptions.coffee',
    'lib/client/notifications.css'
  ], 'client');

  api.addFiles([
    'lib/server/permissions.coffee',
    'lib/server/publications.coffee',
    'lib/server/methods.coffee'
  ], 'server');
});

Package.onTest(function(api) {
  api.use([
    'tinytest@1.0.0',
    'coffeescript'
  ]);
  api.use('keryi:meteor-notification-bs3');
  api.addFiles([
    'tests/client/clientTests.coffee',
    'tests/server/serverTests.coffee'
  ], ['client', 'server']);
});
