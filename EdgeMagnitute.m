function [k1] = EdgeMagnitute (I)
      x=linearfilter(I,Sobelfilter('H'),'absolute');
      y=linearfilter(I,Sobelfilter('V'),'absolute');
      k1=abs(x+y);
  
endfunction
