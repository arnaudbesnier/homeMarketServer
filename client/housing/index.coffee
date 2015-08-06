if Meteor.isClient
  Template.HousingIndex.helpers
    housings: -> Meteor.Housings.find {}
