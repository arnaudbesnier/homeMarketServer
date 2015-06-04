Meteor.Schemas = {}

Meteor.Schemas.Place = new SimpleSchema
  sourceName:
    type:  String
    label: 'Source website'
  sourceLink:
    type:   String
    label:  'Source ad link'
    unique: true
  price:
    type:         Number
    label:        'Monthly price for the rental'
    defaultValue: 0
  size:
    type:         Number
    label:        'Home size in meters square'
    defaultValue: 0
  roomsNumber:
    type:         Number
    label:        'Number of rooms'
    defaultValue: 0
  bedroomsNumber:
    type:         Number
    label:        'Number of bedrooms'
    defaultValue: 0
  description:
    type:         String
    label:        'Home description'
    defaultValue: ''
  completed:
    type:         Boolean
    label:        'Set to true if the ad is completed'
    defaultValue: false
  published:
    type:         Boolean
    label:        'Set to true if the ad is published'
    defaultValue: false
  opened:
    type:         Boolean
    label:        'Set to true if the ad is opened'
    defaultValue: true
