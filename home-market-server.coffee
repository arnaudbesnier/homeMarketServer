Meteor.Places = new Mongo.Collection 'places'
#Meteor.Places.remove({})

Meteor.Places.attachSchema Meteor.Schemas.Place

Router.route '/', -> this.render 'Places'

Router.route '/place/:_id', ->
  place = Meteor.Places.findOne { _id: this.params._id }
  this.render 'Place', { data: place }

if Meteor.isClient
  Template.Places.helpers
    places: -> Meteor.Places.find {}
    count:  -> Meteor.Places.find({}).count()

#if Meteor.isServer
  # NOTE: Meteor JS API - http://www.meteorpedia.com/read/REST_API
