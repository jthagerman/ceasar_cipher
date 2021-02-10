#lib/ceasar_cipher.rb

class Ceasar_cipher
    def initialize(string, shift)
      @return_string = ""
    
      if(shift < -26 || shift > 26)
        @return_string = "Invalid Shift must be between -26 & 26"
      else
        string.each_char{|x| @return_string += letterShift(x,shift)}

        return @return_string.to_s
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

    def to_s
      return @return_string
    end
end

a = Ceasar_cipher.new('Uif tpqipnpsf rvbsufscbdl tujmm ofbsmz tfou Nfoups up uif Ejwjtjpo J tubuf dibnqjpotijq hbnf.',-1)
puts a
b = Ceasar_cipher.new("hello", 5000)
puts b