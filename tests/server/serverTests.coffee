if Meteor.isServer
  Tinytest.add 'notification helpers', (test) ->
    initialCount = Notifications.find().count()
    Meteor.call 'notifyWarn', 'warn', 'this is warning', '1'
    test.equal Notifications.find().count(), initialCount + 1
    warn = Notifications.findOne {}, { $sort: { createdAt: -1 } }
    test.equal 'warn', warn.type
    test.equal 'warn', warn.title
    test.equal 'this is warning', warn.content
