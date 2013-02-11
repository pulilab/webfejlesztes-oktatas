var gomb, outputContainer;
var counter = 0;

function createNewOutput(msg) {
	var li = document.createElement('li');
	li.innerHTML = msg;
	outputContainer.appendChild(li);
}

function onClick(ev) {
	createNewOutput( ++counter + '. kattintás');
}

function setUp() {
	gomb = document.getElementById('gomb');
	outputContainer = document.getElementById('output');
	gomb.addEventListener('click', onClick);
}

document.addEventListener('DOMContentLoaded', setUp);