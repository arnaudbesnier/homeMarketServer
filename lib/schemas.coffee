Meteor.Schemas = {}

Meteor.Schemas.Place = new SimpleSchema
  sourceName:
    type:  String,
    label: 'Source website'
  sourceLink:
    type:   String
    label:  'Source ad link'
    unique: true
  price:
    type:  Number
    label: 'Monthly price for the rental'
  price:
    type:  Number
    label: 'Home size in meters square'
  roomsNumber:
    type:  Number
    label: 'Number of rooms'
  bedroomsNumber:
    type:  Number
    label: 'Number of bedrooms'
  description:
    type:  String
    label: 'Home description'
  published:
    type:         Boolean
    label:        'Set to true if the ad is published'
    defaultValue: false
  opened:
    type:         Boolean
    label:        'Set to true if the ad is opened'
    defaultValue: true
