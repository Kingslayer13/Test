do =>
  limited = (time, func) ->
    isCalled = no
    func = time and time = 20 if time?()
    ->
      @args = arguments
      if not isCalled
        isCalled = yes
        setTimeout((=>
          func.apply(@, @args)
          isCalled = no
          this),
          time)
      this

  searchFriend = limited(500, (name)->console.log name + "found")
  searchFriend (num) for num in [1...10]

  document.getElementById("search-friend").addEventListener("keyup", limited(2000, -> console.log @value))
  this


