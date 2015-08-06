if Meteor.isClient
  Template.HousingIndex.helpers
    housings: -> Meteor.Housings.find {}

  Template.HousingIndex.events
    'click .housingItemPrice': -> Meteor.call 'removeHousing', @_id
