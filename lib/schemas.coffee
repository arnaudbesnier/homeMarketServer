Meteor.Schemas = {}

Meteor.Schemas.Housing = new SimpleSchema
  type:
    type: String
    label: 'Type de logement'
    allowedValues: ['Maison', 'Appartement']
    defaultValue: ''
  size:
    type: Number
    label: 'Dimension'
    defaultValue: 0
  furnished:
    type: Boolean
    label: 'Meublé'
    defaultValue: false
  numberRoom:
    type: Number
    label: 'Nombre de pièces'
    defaultValue: 0
  numberBedroom:
    type: Number
    label: 'Nombre de chambres'
    defaultValue: 0
  description:
    type: String
    label: 'Description'
    defaultValue: ''
  addressStreet:
    type: String
    label: 'Rue'
    defaultValue: ''
  addressZipcode:
    type: String
    regEx: /^[0-9]{5}$/
    label: 'Code Postal'
    defaultValue: ''
  addressCity:
    type: String
    label: 'Ville'
    defaultValue: ''
  heatingType:
    type: String
    label: 'Type de chauffage'
    allowedValues: ['électricité', 'gaz']
    defaultValue: ''
  heatingShare:
    type: String
    label: 'Type de chauffage'
    allowedValues: ['individuel', 'collectif']
    defaultValue: ''
  energyPerformance:
    type: String
    label: 'Performance énergétique'
    allowedValues: ['A', 'B', 'C', 'D', 'E', 'F', 'G']
    defaultValue: ''
  GESEmission:
    type: String
    label: 'Emissions de GES'
    allowedValues: ['A', 'B', 'C', 'D', 'E', 'F', 'G']
    defaultValue: ''
  priceRent:
    type: Number
    label: 'Loyer'
    defaultValue: 0
  priceCharges:
    type: Number
    label: 'Charges'
    defaultValue: 0
  priceDeposit:
    type: Number
    label: 'Caution'
    defaultValue: 0
  dateDisponibility:
    type: Date
    label: 'Date de disponibilité'
    defaultValue: new Date()
  dateCreated:
    type: Date
    label: 'Date de création'
    denyUpdate: true
    autoValue: ->
      new Date if this.isInsert
  datePublished:
    type: Date
    label: 'Date de publication'
    optional: true
