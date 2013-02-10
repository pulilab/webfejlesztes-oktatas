$().ready ->
  container = $ "#container"
    
  module "Bulitesztek"
  test "1===1.0", ->
      equal(1.1, 1)

  module "Osztály szintű sayHello"
  test "Minden név kikerül", ->
        equal(1,1)

#$(document).ready(function(){
    #module("BPM Query Parts")
    #test("Test a simple filter", function(){
        #var part = new bpm.queryPart('mainContributor').addTerm('Louis Armstrong', "~10")
        #equal(part.toString(), 'mainContributor:("Louis Armstrong"~10)')
    #})
    #test("Wrong field throws an error", function(){
        #raises(function(){new bpm.queryPart('MyField')})
    #})