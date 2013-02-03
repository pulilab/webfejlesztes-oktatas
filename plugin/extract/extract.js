/**
Extracts all the nodes with a source class and appends them into a destination node.
*/
var RevealExtract = (function () {
  function extractData(destination, source) {
    var toExtract = document.querySelectorAll(source);
    var destinationElem = document.getElementById(destination);
    var i;
    for (i = 0; i < toExtract.length; i++) {
      destinationElem.appendChild(toExtract[i].cloneNode(true));
    }
  }
  return extractData;
})();