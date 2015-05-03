Meteor.startup ->
  cheerio = Meteor.npmRequire 'cheerio'

  SOURCE_NAME = 'seloger.com'
  urlSource   = 'http://www.seloger.com/immobilier/locations/immo-paris-75/bien-appartement/?LISTING-LISTpg='

  retrieveAdLinksInSource = ->
    retrieveAdLinksInPage "#{urlSource}#{index}" for index in [1..1] #200]

  retrieveAdLinksInPage = (url) ->
    console.log "<SCRAP> #{url}"
    result = Meteor.http.get url
    $ = cheerio.load result.content

    $('.listing_infos > h2 > a').each (i, elem) ->
      link = $(this).attr('href').split('?')[0]
      console.log '=> elem ' + link

      Meteor.Places.insert(
        sourceName: SOURCE_NAME
        sourceLink: link
      , (msg) ->
        console.log '<DUPLICATE ENTRY> ' + msg
      )

  new Meteor.Cron
    events:
      "* * * * *": retrieveAdLinksInSource
