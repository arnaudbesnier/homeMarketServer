Places = new Mongo.Collection("places");

if (Meteor.isClient) {
  // counter starts at 0
  Session.setDefault('counter', 0);

  Template.places.helpers({
    places: function() {
      return Places.find({});
    },
    count: function() {
      return Places.find({}).count();
    }
  })
}

if (Meteor.isServer) {
  Meteor.startup(function () {
    // code to run on server at startup
  });
}
