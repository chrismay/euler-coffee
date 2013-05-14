Ex2 = require '../lib/ex2'

exports.Ext2Test=

  setUp:(callback) ->
    @ex2 = new Ex2
    callback()

  "fibs less than 2 is [1]":(test)->
    result = @ex2.fibsLessThan 2,[1,2]
    test.deepEqual result, [1]
    test.done()

  "fibs less than 11 is [1,2,3,5,8]":(test)->
    result=@ex2.fibsLessThan 11, [1,2,3,5,8]
    test.deepEqual result, [1,2,3,5,8]
    test.done()

  "sum of even fibs to 9 is 10":(test) ->
    result = @ex2.sumTo 9
    test.equal result, 10
    test.done()

  "sum of even fibs to 4000000 is 4613732":(test) ->
    result = @ex2.sumTo 4000000
    test.equal result, 4613732
    test.done()

