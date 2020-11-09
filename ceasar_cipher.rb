def caesar_cipher(string, shift)
    returnS = ""
  
    if(shift < -26 || shift > 26)
      return("Invalid Shift must be between -26 & 26")
    else
      string.each_char{|x| returnS += letterShift(x,shift)}
      return returnS
    end
  end
  
  def letterShift(letter, shiftNum)
    lowers = ('a'..'z').to_a()
  
    uppers = ('A'..'Z').to_a()
  
    if(lowers.find_index(letter) != nil)
      index = lowers.find_index(letter)
      if(index + shiftNum < 26)
          return(lowers[index + shiftNum])
      else
          return( lowers[(0 - (26 - (index+shiftNum))).abs])
      end
    elsif
      index = uppers.find_index(letter)
      if(index + shiftNum < 26)
          return(uppers[index + shiftNum])
      else
          return( uppers[(0 - (26 - (index+shiftNum))).abs])
      end
    else
      return letter
  
    end
        
  end
  
  puts caesar_cipher('Uif tpqipnpsf rvbsufscbdl tujmm ofbsmz tfou Nfoups up uif Ejwjtjpo J tubuf dibnqjpotijq hbnf.',-1)
  
  
  