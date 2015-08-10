if Meteor.isClient
  Template.HousingShow.events
    'click .delete': ->
      Meteor.call 'removeHousing', @_id
      Router.go "/"
