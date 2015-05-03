Meteor.Places = new Mongo.Collection 'places'
#Meteor.Places.remove({})

Schemas = {}

Schemas.Place = new SimpleSchema
  sourceName:
    type:  String,
    label: 'Source website'
  sourceLink:
    type: String
    label: 'Source ad link'

Meteor.Places.attachSchema Schemas.Place

if Meteor.isClient
  Template.places.helpers
    places: -> Meteor.Places.find {}
    count:  -> Meteor.Places.find({}).count()

#if Meteor.isServer
  # NOTE: Meteor JS API - http://www.meteorpedia.com/read/REST_API
