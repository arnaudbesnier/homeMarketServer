Meteor.Places = new Mongo.Collection 'places'
#Meteor.Places.remove({})

Meteor.Places.attachSchema Meteor.Schemas.Place

if Meteor.isClient
  Template.places.helpers
    places: -> Meteor.Places.find {}
    count:  -> Meteor.Places.find({}).count()

#if Meteor.isServer
  # NOTE: Meteor JS API - http://www.meteorpedia.com/read/REST_API
