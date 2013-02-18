$().ready ->
  container = $ "#container"
    
  module "Bulitesztek"
  test "1===1.0", ->
    equal(1.1, 1)

  module "Osztály szintű sayHello"
  test "Minden név kikerül", ->
    firstLi = container.children[0]
    equal(firstLi.innerHTML, "Hello Viktor, Ricsi")

  module "Instance szintű sayHello"
  test "Az adott név kikerül", ->
    secondLi = container.children[1]
    equal(secondLi.innerHTML, "Szia Ricsi!")

#$(document).ready(function(){
    #module("BPM Query Parts")
    #test("Test a simple filter", function(){
        #var part = new bpm.queryPart('mainContributor').addTerm('Louis Armstrong', "~10")
        #equal(part.toString(), 'mainContributor:("Louis Armstrong"~10)')
    #})
    #test("Wrong field throws an error", function(){
        #raises(function(){new bpm.queryPart('MyField')})
    #})
