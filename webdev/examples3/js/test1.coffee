class Name
	@container: document.getElementById('container')
	@names: []
	@sayHello: -> 
		@addToDom 'Hello ' + @names.join(',')

	@addToDom: (txt) ->
		newLi = document.createElement('li')
		newLi.innerHTML = txt
		Name.container.appendChild(newLi)

	constructor: (name) ->
		@name = name
		Name.names.push name
	sayHello: ->
		Name.addToDom "Szia " + @name

Viktor = new Name "Viktor"
Ricsi = new Name "Ricsi"

Name.sayHello()
Ricsi.sayHello()