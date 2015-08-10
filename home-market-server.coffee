Meteor.Housings = new Mongo.Collection 'housings'
#Meteor.Housings.remove({})

Meteor.Housings.attachSchema Meteor.Schemas.Housing
Meteor.Housings.helpers
  priceMonthly: ->
    "#{@priceRent + @priceCharges} €"
  title: ->
    "#{@type} #{@numberRoom} pièce#{if @numberRoom > 1 then 's' else ''} - #{@size} m²"

Router.route '/', -> @render 'Home'
Router.route '/logement/nouveau', -> @render 'HousingForm'

# TODO: Authentication
#https://scotch.io/tutorials/building-a-slack-clone-in-meteor-js-part-3-authentication-and-security

Router.route '/logement/:_id', ->
  housing = Meteor.Housings.findOne { _id: this.params._id }
  this.render 'HousingShow', { data: housing }

if Meteor.isClient
  Template.Home.helpers
    count: -> Meteor.Housings.find({}).count()
    accountCount: -> Meteor.users.find({}).count()

Meteor.methods
  removeHousing: (id) -> Meteor.Housings.remove id

Meteor.Housings.allow
  'insert': -> return true
