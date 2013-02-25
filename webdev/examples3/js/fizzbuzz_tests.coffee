$().ready ->

  module "Fizzbuzz library test"
  test "1==1", ->
    equal fizzbuzz(1), 1

  test "2==2", ->
    equal fizzbuzz(2), 2 

  test "9==fizz", ->
    equal fizzbuzz(9), "fizz"

  test "10==buzz", ->
    equal fizzbuzz(10), "buzz"

  test "14==bizz", ->
    equal fizzbuzz(14), "bizz"

  test "15==fizzbuzz", ->
    equal fizzbuzz(15), "fizzbuzz"

  test "105==fizzbuzzbizz", ->
    equal fizzbuzz(105), "fizzbuzzbizz"

  test "106==106", ->
    equal fizzbuzz(106), 106

