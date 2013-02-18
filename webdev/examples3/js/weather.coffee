class Weather
  @key = ""

  @getLocation: (query, callback) ->
    url = "http://autocomplete.wunderground.com/aq"
    $.ajax({
      dataType: "jsonp",
      context: window,
      jsonp: "cb",
      data: {
        query: query,
        format: "json"
      }
      type: 'get',
      url: url,
      data: null,
      success: callback,
      crossDomain: true
    })

  @getWeather: (location, callback) ->
    url = "http://api.wunderground.com/api/" + @key + "/forecast/lang:HU/q/" + location + ".json"
    $.ajax({
      dataType: "jsonp",
      url: url,
      data: null,
      success: callback,
      crossDomain: true
    })

window.Weather = Weather