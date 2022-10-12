% 3. Making Computing the Fibonacci Numbers Fast

% 1. recursive implementation of Fib
local
   fun {FibR N}
      if N==0 then 0
      elseif N==1 then 1
      else {FibR N-2}+{FibR N-1}
      end
   end
in
   {Browse {FibR 7}}
end

% 2. tail-recursive implementation of Fib
local
   fun {FibTR I F1 F2}
      if I==0 then F1+F2
      else
	 {FibTR I-1 F2 F1+F2}
      end
   end Fib1 in
   fun {Fib1 N}
      case N of 0 then 0
      [] 1 then 1
      else
	 {FibTR N-2 0 1}
      end
   end
   {Browse {Fib1 7}}
end


