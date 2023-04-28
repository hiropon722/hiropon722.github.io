def calc(score)
  result=0
  next1=0
  next2=0
  while score.length > 0 do
    flame = score.pop
    total = flame.inject(:+)
    if flame.length == 3
      result += total
      next1,next2 = flame
    elsif flame.length ==1
      result += 10 + next1 + next2
      next1,next2 = 10,next1
    elsif total ==10
      result += 10 + next1
      next1,next2 = flame
    else 
      result += total
      next1,next2 = flame
    end
  end
  return result
end


puts calc([
  [9, 1], [8, 2], [10], [5, 0], [3, 6],
  [4, 2], [7, 3], [6, 3], [10], [9, 1, 9]
])