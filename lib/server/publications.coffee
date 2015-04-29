Meteor.publish 'notifications', ->
  Notifications.find { ownerId: this.userId }
