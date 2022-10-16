% 4. Producing Power Functions
declare
fun {PowFactory X}
   fun {PowAcc N A}
      if N==0 then A
      else {PowAcc N-1 X*A}
      end
   end
   fun {Pow N}
      {PowAcc N 1}
   end
in
   Pow
end


P2={PowFactory 2}
P5={PowFactory 5}
{Browse {P2 4}}
{Browse {P2 7}}
{Browse {P5 3}}
{Browse {P5 6}}

% External reference for Pow: PowAcc, CE: {Pow ->p, PowAcc -> pa}
% External reference for PowAcc: PowAcc and X, CE: {PowAcc -> pa, X -> x}
