Ex1 = require '../lib/ex1'

exports.Ex1Test =

  setUp: (callback) ->
    @ex1 = new Ex1
    callback()

  'sum of multiples of five and three to ten is 23': (test)->
    result= @ex1.sumTo(9)
    test.equal(result, 23)
    test.done()

  'sum of multiples of five and three to 999 is 233168': (test)->
    result = @ex1.sumTo(999)
    test.equal(result, 233168)
    test.done()

