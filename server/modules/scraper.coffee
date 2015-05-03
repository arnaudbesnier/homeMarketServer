Meteor.startup ->
  cheerio = Meteor.npmRequire 'cheerio'

  scrapSeloger = ->
    urlList = 'http://www.seloger.com/immobilier/locations/immo-paris-75/bien-appartement/?LISTING-LISTpg='
    retrieveAdsUrls "#{urlList}#{index}" for index in [1..1] #200]

  retrieveAdsUrls = (url) ->
    console.log "<SCRAP> #{url}"
    result = Meteor.http.get url
    $ = cheerio.load result.content

    $('.listing_infos > h2 > a').each (i, elem) ->
      link = $(this).attr('href').split('?')[0]
      #console.log '=> elem ' + link

      Meteor.Places.insert(
        website: 'seloger.com'
        link:    link
      , ->
        console.log '<DUPLICATE ENTRY>'
      )

  new Meteor.Cron
    events:
      "* * * * *": scrapSeloger
