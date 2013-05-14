class Ex2

  fibsLessThan:(limit) ->@fibsLessThanRec limit, [1,2]

  fibsLessThanRec:(limit, fibs) ->
    nextFib = fibs
      .slice(-2)
      .reduce ((x,a)->x+a), 0

    if nextFib > limit
      fibs.filter (x)->x<limit
    else
      @fibsLessThanRec limit, fibs.concat [nextFib]

  sumTo:(limit) ->
    @fibsLessThanRec(limit,[1,2])
      .filter((x)->x%2 ==0)
      .reduce ((a,x)->a+x),0

module.exports = Ex2
