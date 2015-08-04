Template.ad.events
  'submit .new-ad': (event) ->
    # Prevent default browser form submit
    event.preventDefault()

    target = event.target

    Meteor.Housings.insert
      type: target.type.value
      size: target.size.value
      numberRoom: target.numberRoom.value
      numberBedroom: target.numberBedroom.value
      furnished: target.furnished.value is 'true'
      description: target.description.value
      heatingType: target.heatingType.value
      heatingShare: target.heatingShare.value
      energyPerformance: target.energyPerformance.value
      GESEmission: target.GESEmission.value
      addressStreet: target.addressStreet.value
      addressZipcode: target.addressZipcode.value
      addressCity: target.addressCity.value
      priceRent: target.priceRent.value
      priceCharges: target.priceCharges.value
      priceDeposit: target.priceDeposit.value
      dateDisponibility: target.dateDisponibility.value

    Router.go '/'
