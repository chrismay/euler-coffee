class Ex1

  sumTo:(max) ->
    [1..max]
        .filter (x) ->
          x % 3 == 0 || x % 5 == 0
        .reduce ((x,y) -> x+y), 0

module.exports = Ex1
