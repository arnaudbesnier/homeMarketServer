Meteor.Housings = new Mongo.Collection 'housings'
#Meteor.Places.remove({})

Meteor.Housings.attachSchema Meteor.Schemas.Housing

#Router.route '/', -> this.render 'Places'
Router.route '/', -> this.render 'Home'
Router.route '/logement/', -> this.render 'ad'

Router.route '/logement/:_id', ->
  housing = Meteor.Housings.findOne { _id: this.params._id }
  this.render 'Housing', { data: housing }

if Meteor.isClient
  Template.Home.helpers
    housings: -> Meteor.Housings.find {}
    count: -> Meteor.Housings.find({}).count()

#if Meteor.isServer
  # NOTE: Meteor JS API - http://www.meteorpedia.com/read/REST_API
