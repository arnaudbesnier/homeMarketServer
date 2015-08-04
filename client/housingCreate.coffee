AutoForm.addHooks 'insertHousingForm',
  onSuccess: (formType, result) ->
    Router.go '/'
