do =>
  createConfigurator = ->
    obj = {}
    createArguments = (x, y)->
      createArguments.result = obj
      obj[x] = y
      arguments.callee

  _ = createConfigurator()
  console.log _("age", 25)("name", "sergii").result

