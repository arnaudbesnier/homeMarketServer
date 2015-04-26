Places = new Mongo.Collection 'places'

if Meteor.isClient
  Template.places.helpers
    places: -> Places.find {}
    count:  -> Places.find({}).count()

if Meteor.isServer
  Meteor.startup ->
    # code to run on server at startup

    # NOTE: Meteor JS API - http://www.meteorpedia.com/read/REST_API

    cheerio = Meteor.npmRequire 'cheerio'

    getData = ->
      result = Meteor.http.get("https://twitter.com/Royal_Arse/status/538330380273979393")
      $ = cheerio.load(result.content)
      $('#stream-items-id > li:nth-child(n) > div > div > p').text()

    searchData = ->
      console.log '=> Search data ' + getData()

    cron = new Meteor.Cron
      events:
        "* * * * *": searchData
