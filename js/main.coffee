do ->
  createConfigurator = ->
    configurator = (fieldName, value) ->
      obj[fieldName] = value
      return configurator
      
    configurator.result = obj = {}
    
    return configurator

  _ = createConfigurator()
  console.log _("age", 25)("name", "sergii").result

