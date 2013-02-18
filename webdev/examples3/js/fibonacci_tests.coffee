$().ready ->

  module "Fibonacci generátor"
  test "0==0", ->
    equal fibonacci(0), 0 
  test "1==1", ->
    equal fibonacci(1), 1 

  test "2==1", ->
    equal fibonacci(2), 1

  test "5==5", ->
    equal fibonacci(5), 5

  test "7==13", ->
    equal fibonacci(7), 13
