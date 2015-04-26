Places = new Mongo.Collection 'places'

if Meteor.isClient
  # counter starts at 0
  Session.setDefault 'counter', 0

  Template.places.helpers
    places: -> Places.find {}
    count:  -> Places.find({}).count()

if Meteor.isServer
  Meteor.startup ->
    # code to run on server at startup
