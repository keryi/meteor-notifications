Template.notifications_button.helpers
  unreadNotificationCount: ->
    Notifications.find({ read: false }).count()

  hasNotification: ->
    Notifications.find().count() > 0

Template.notifications.helpers
  unreadNotifications: ->
    Notifications.find { read: false }, { $sort: { createdAt: -1 } }

readNotification = ->
  alert this._id
  
Template.notification.events
  'click .media.notif-body': readNotification
