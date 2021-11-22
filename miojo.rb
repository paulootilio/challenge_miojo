def prepareMiojo(miojoT, hourglassT1, hourglassT2)
  miojoTime = miojoT
  hourglassTime1 = hourglassT1
  hourglassTime2 = hourglassT2
  remainderTime = 0
  fullTime = 0

  while remainderTime != miojoTime
    if hourglassTime1 >= hourglassTime2
      remainderTime = hourglassTime1 - hourglassTime2
      hourglassTime1 = remainderTime
      fullTime += hourglassTime2
      hourglassTime2 = hourglassT2
    else
      remainderTime = hourglassTime2 - hourglassTime1
      hourglassTime2 = remainderTime
      fullTime += hourglassTime1
      hourglassTime1 = hourglassT1
    end
    return "Não é possível cozinhar no tempo exato" if remainderTime == 0
  end
  fullTime += remainderTime
end

puts prepareMiojo(3, 5, 7)
