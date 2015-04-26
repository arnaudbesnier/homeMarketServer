Places = new Mongo.Collection 'places'

if Meteor.isClient
  Template.places.helpers
    places: -> Places.find {}
    count:  -> Places.find({}).count()

if Meteor.isServer
  Meteor.startup ->
    # code to run on server at startup

    # NOTE: Meteor JS API - http://www.meteorpedia.com/read/REST_API

    searchData = ->
      console.log '=> Search data'

    cron = new Meteor.Cron
      events:
        "* * * * *": searchData
