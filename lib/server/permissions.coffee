isAdmin = (userId) ->
  user = Meteor.users.findOne userId, { roles: { $in: ['admin'] } }
  user == 'undefined'

Notifications.allow
  insert: (userId, doc) ->
    isAdmin userId

  update: (userId, doc, fieldNames, modified) ->
    doc.owner == userId && fieldNames.length == 1 && fieldNames[0] == 'read'

  remove: (userId, doc) ->
    doc.owner == userId || isAdmin userId
