/**
Extracts all the nodes with a source class and appends them into a destination node.
*/
var RevealToc = (function () {
  function extractData(destination) {
    var toExtract = document.querySelectorAll("h2");
    var destinationElem = document.getElementById('toc');
    if (!destinationElem) {
      return;
    }
    var i;
    for (i = 0; i < toExtract.length; i++) {
      var li = document.createElement('li');
      li.innerHTML = toExtract[i].innerHTML;
      console.log(toExtract[i].innerHTML);
      destinationElem.appendChild(li);
    }
  }
  return extractData();
})();