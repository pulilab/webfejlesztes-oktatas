$().ready ->

  module "Helyek keresése callback-kel"
  asyncTest "the proper url is called", ->
    locationStr = "Budap"
    handler = $.mockjax({
      url: /^http:\/\/autocomplete\.wunderground\.com\/aq$/,
      data: {
        query: locationStr,
        format: "json"
      },
      urlParams: ['location'],
      status: 200,
      contentType: 'text/json',
      response: (settings) ->
        ok true, "The mock was called"
        @responseText = {'ok': 'ok'}
        @response = null
        start()
        return
    })
    Weather.getLocation(locationStr, (data) ->
      console.log(data)
    )
    $.mockjaxClear handler 

  asyncTest "the callback is called", ->
    expect(1)
    locationStr = "Pecs"
    handler = $.mockjax({
      url: /^http:\/\/autocomplete\.wunderground\.com\/aq$/,
      data: {
        query: locationStr,
        format: "json"
      },
      urlParams: ['location'],
      status: 200,
      contentType: 'text/json',
      responseText: { "RESULTS": [
        {
          "name": "Pecs, Hungary", 
          "type": "city", 
          "c": "HU",
          "zmw": "00000.1.12942",
          "tz": "Europe/Budapest",
          "tzs": "CET",
          "l": "/q/zmw:00000.1.12942"
        },
        {
          "name": "Pecsvarad, Hungary", 
          "type": "city", 
          "c": "HU",
          "zmw": "00000.11.12942",
          "tz": "Europe/Budapest",
          "tzs": "CET",
          "l": "/q/zmw:00000.11.12942"
        }
      ]
      }
    })
    Weather.getLocation(locationStr, (data) ->
      equal(data.RESULTS[0].name, "Pecs, Hungary")
      start()
      return
      )
    $.mockjaxClear(handler)

  module "Időjárás lekérése adott helyhez"
  asyncTest "The callback is called", ->
    $.mockjax({
      url: /^http:\/\/api\.wunderground\.com\/api\/[a-zA-Z0-9]+\/forecast\/lang:HU\/q\/.*\.json$/
      responseText: {
        "response": {
          "version": "0.1"
          ,"termsofService": "http://www.wunderground.com/weather/api/d/terms.html"
          ,"features": {
          "forecast": 1
          }
        }
          ,
        "forecast":{
          "txt_forecast": {
          "date":"1:00 AM CET",
          "forecastday": [
          ]
          },
          "simpleforecast": {
            "forecastday": [
            ]
          }
        }
      }
    })
    Weather.getWeather('zmw:00000.1.12942', (data) ->
      ok data.response, "a response kulcs létezik"
      ok data.forecast, "a forecast kulcs létezik"
      start()
      )

  return