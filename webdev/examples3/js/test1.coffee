class Name
	@names: []
	@sayHello: -> 
		console.log 'Hello ' + (name for name in @names)

	constructor: (name) ->
		@name = name
		Name.names.push name
	sayHello: ->
		console.log "Szia " + @name

Viktor = new Name "Viktor"
Ricsi = new Name "Ricsi"

Name.sayHello()
Ricsi.sayHello()