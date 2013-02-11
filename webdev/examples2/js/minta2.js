var myHandler = {
	gomb: null,
	outputContainer: null,
	counter: 0,
	createNewOutput: function (msg) {
		var li = document.createElement('li');
		li.innerHTML = msg;
		myHandler.outputContainer.appendChild(li);
	},
	onClick: function() {
		myHandler.createNewOutput( ++myHandler.counter + '. kattintás' );
	},
	setUp: function() {
		myHandler.gomb = document.getElementById('gomb');
		myHandler.outputContainer = document.getElementById('output');
		myHandler.gomb.addEventListener('click', myHandler.onClick);
	}
}

document.addEventListener('DOMContentLoaded', myHandler.setUp);