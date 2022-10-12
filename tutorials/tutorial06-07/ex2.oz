% 2. Computing Binary Logarithms

% brute-force
declare
fun {Pwr X R N}
   if N==1 then X
   elseif N==R then X
   else {Pwr 2*X R+1 N}
   end
end

fun {Val N L}
   if N>={Pwr 2 1 L} andthen N<{Pwr 2 1 L+1} then L
      else {Val N L+1} end
end

fun {BinLog N}
   {Val N 1}
end
    
{Browse {BinLog 8}}

% simplification: observing the pattern

fun {Test N L L2}
   if 2*L2>N then L
   else {Test N L+1 2*L2}
   end
end

fun {BinLog1 N}
   {Test N 0 1}
end

{Browse {BinLog1 8}}