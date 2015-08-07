if Meteor.isClient
  Template.HousingIndex.helpers
    housings: -> Meteor.Housings.find {}

  Template.HousingIndex.events
    'click .housingItemContainer': -> Router.go "/logement/#{@_id}"
    'click .housingItemPrice': -> Meteor.call 'removeHousing', @_id
