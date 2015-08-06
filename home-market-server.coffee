Meteor.Housings = new Mongo.Collection 'housings'
#Meteor.Places.remove({})

Meteor.Housings.attachSchema Meteor.Schemas.Housing

Router.route '/', -> this.render 'Home'
Router.route '/logement/nouveau', -> this.render 'insertHousingForm'

# TODO: Authentication
#https://scotch.io/tutorials/building-a-slack-clone-in-meteor-js-part-3-authentication-and-security

Router.route '/logement/:_id', ->
  housing = Meteor.Housings.findOne { _id: this.params._id }
  this.render 'Housing', { data: housing }

if Meteor.isClient
  Template.Home.helpers
    housings: -> Meteor.Housings.find {}
    count: -> Meteor.Housings.find({}).count()
    accountCount: -> Meteor.users.find({}).count()

  Template.Home.events
    'click .delete': -> Meteor.call 'removeHousing', @_id

Meteor.methods
  removeHousing: (id) -> Meteor.Housings.remove id

Meteor.Housings.allow
  'insert': -> return true
