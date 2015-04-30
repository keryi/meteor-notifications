notify = (type, title, content, ownerId) ->
  Notifications.insert
    type: type
    title: title
    content: content
    ownerId: ownerId

Meteor.methods
  notifyWarn: (title, content, ownerId) ->
    notify 'warn', title, content, ownerId

  notifyError: (title, content, ownerId) ->
    notify 'error', title, content, ownerId

  notifyInfo: (title, content, ownerId) ->
    notify 'info', title, content, ownerId

  notifySuccess: (title, content, ownerId) ->
    notify 'success', title, content, ownerId
