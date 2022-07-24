function [filter] = Sobelfilter (Mask)
   if(Mask=='V')
        filter=[-1,0,1;-2,0,2;-1,0,1]; 
   endif
   if (Mask=='H')
       filter=[-1,-2,-1;0,0,0;1,2,1];
   endif
endfunction
