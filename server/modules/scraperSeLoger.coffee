Meteor.startup ->
  # cheerio = Meteor.npmRequire 'cheerio'

  # SOURCE_NAME = 'seloger.com'
  # urlSource   = 'http://www.seloger.com/immobilier/locations/immo-paris-75/bien-appartement/?LISTING-LISTpg='

  # retrieveAdLinksInSource = ->
  #   retrieveAdLinksInPage "#{urlSource}#{index}" for index in [1..2] #200]

  # retrieveAdLinksInPage = (url) ->
  #   console.log "<SCRAP> #{url}"
  #   result = Meteor.http.get url
  #   $ = cheerio.load result.content

  #   $('.listing_infos > h2 > a').each (i, elem) ->
  #     link = $(this).attr('href').split('?')[0]
  #     console.log '=> elem ' + link

  #     Meteor.Places.insert(
  #       sourceName: SOURCE_NAME
  #       sourceLink: link
  #     , (message) ->
  #       console.log "<DUPLICATE ENTRY> #{message}"  if message
  #     )

  # retrieveAdData = ->
  #   console.log '=> COUNT: ' + Meteor.Places.find({ published: false }).count()
  #   Meteor.Places.find({ published: false, completed: false }).forEach (place) ->
  #     placeLink = place.sourceLink
  #     console.log placeLink
  #     result = Meteor.http.get placeLink
  #     $ = cheerio.load result.content

  #     description =  $('.description').first().text()
  #     price       =  Math.round(Number($('#price').first().text().split('€')[0].replace(/[^\d,.]/, '').replace(',', '.')))

  #     console.log ' DESCRIPTION > ' + description
  #     console.log ' PRICE > ' + price

  #     Meteor.Places.update place._id, { $set: {
  #       description: description,
  #       price:       price
  #     }}

  # retrieveAds = ->
  #   places = Meteor.Places.find().fetch()
  #   for place1 of places
  #     console.log place1.sourceName

  # new Meteor.Cron
  #   events:
  #     #"* * * * *": retrieveAdLinksInSource
  #     "* * * * *": retrieveAdData
