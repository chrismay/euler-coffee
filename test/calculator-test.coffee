Calculator = require '../lib/calculator'

exports.CalculatorTest =

  '2 + 2 = 4': (test)->
    result= new Calculator("+",2,2).result()
    test.equal(result, 4)
    test.done()

  '4 - 2 = 2':(test)->
    result = new Calculator("-",4,2).result()
    test.equal(result,2)
    test.done()


