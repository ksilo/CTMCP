% 2.Cube Root
/*
Write a declarative program to calculate cube roots
using Newton’s method.
*/

local
   fun {CubeRoot X}
      fun {Improve Guess}
	 (X/(Guess*Guess)+2.0*Guess)/3.0
      end
      fun {GoodEnough Guess}
	 {Abs X-Guess*Guess*Guess}/X < 0.00001
      end
      fun {CubeRootIter Guess}
	 if {GoodEnough Guess} then Guess
	 else
	    {CubeRootIter {Improve Guess}}
	 end
      end
   in
      {CubeRootIter 1.0}
   end
in
   {Browse {CubeRoot 27.0}}
   {Browse {CubeRoot 10287.0}}
end

