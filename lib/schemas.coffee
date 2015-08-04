Meteor.Schemas = {}

Meteor.Schemas.Housing = new SimpleSchema
  type:
    type: String
    label: ''
    defaultValue: ''
  size:
    type: Number
    label: ''
    defaultValue: 0
  numberRoom:
    type: Number
    label: ''
    defaultValue: 0
  numberBedroom:
    type: Number
    label: ''
    defaultValue: 0
  furnished:
    type: Boolean
    label: ''
    defaultValue: false
  description:
    type: String
    label: ''
    defaultValue: ''
  heatingType:
    type: String
    label: ''
    defaultValue: ''
  heatingShare:
    type: String
    label: ''
    defaultValue: ''
  energyPerformance:
    type: String
    label: ''
    defaultValue: ''
  GESEmission:
    type: String
    label: ''
    defaultValue: ''
  addressStreet:
    type: String
    label: ''
    defaultValue: ''
  addressZipcode:
    type: String
    label: ''
    defaultValue: ''
  addressCity:
    type: String
    label: ''
    defaultValue: ''
  priceRent:
    type: Number
    label: ''
    defaultValue: 0
  priceCharges:
    type: Number
    label: ''
    defaultValue: 0
  priceDeposit:
    type: Number
    label: ''
    defaultValue: 0
  dateDisponibility:
    type: Date
    label: ''
    defaultValue: new Date()
  dateCreated:
    type: Date
    label: ''
    defaultValue: new Date()
  datePublished:
    type: Date
    label: ''
    optional: true
