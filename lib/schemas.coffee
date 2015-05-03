Meteor.Schemas = {}

Meteor.Schemas.Place = new SimpleSchema
  sourceName:
    type:  String,
    label: 'Source website'
  sourceLink:
    type:   String
    label:  'Source ad link'
    unique: true
