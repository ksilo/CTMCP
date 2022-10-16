/* 1. Absolute value of real numbers.
   
   We would like to deﬁne a function Abs that calculates the absolute value of a real number.
   The following deﬁnition does work:
				   fun {Abs X} if X<0 then ˜X else X end end
   Why not? How would you correct it? Hint: the problem is trivial.

Solution:
	  
   Real Numbers - all rational and irrational numbers.
   Simplest fix would be to use float numbers if we want to combine both int and float
   we have to use conditionals */

local
   fun {Abs X}
      if {IsFloat X} andthen X<0.0 then ~X
      elseif X<0 then ~X
      else X
      end
   end
in
   {Browse {Abs ~1}}
   {Browse {Abs ~1.0}}
end
