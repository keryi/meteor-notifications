@Notifications = new Meteor.Collection 'notifications'
@Schemas = {}

Schemas.Notifications = new SimpleSchema
  type:
    type: String
    allowedValues: ['error', 'warn', 'success', 'info']

  title:
    type: String

  content:
    type: String
    optional: true

  read:
    type: Boolean
    defaultValue: false

  createdAt:
    type: Date
    autoValue: ->
      if this.isInsert
        new Date()

  ownerId:
    type: String
    # regEx: SimpleSchema.RegEx.Id

Notifications.attachSchema Schemas.Notifications
