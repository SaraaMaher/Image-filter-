function [k1] = gauss(Size,Sig)
  GaussMask = ones(Size, Size);
  x= -1 * floor(Size/2);
  sigpower = Sig.^2;
  squarebracket = (1 ./(2 .* (pi) .* sigpower));
  secondpart = 2 .* sigpower;
      for i=1:Size
         y= -1 * floor(Size/2);      
        for j=1:Size 
          exponintialpart = exp( (-1 .*(  (x .^2) .+ (y.^2)) ) ./ secondpart );
          GaussMask(i, j) =  squarebracket .* exponintialpart;
          y=y+1;
        endfor
        x =x+1;
      endfor
      totalsum = sum(sum(GaussMask));
      GaussMask = GaussMask /totalsum;
      k1=GaussMask;
endfunction
