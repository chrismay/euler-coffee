class Calculator
  constructor:(@operatorName, @x, @y)->

  result:()->
    operators={
      "+":(x,y)->x+y
      "-":(x,y)->x-y
    }
    op = operators[@operatorName]
    op(@x,@y)



module.exports=Calculator
  
