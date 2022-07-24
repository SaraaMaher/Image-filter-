function [Filter] = MeanFilter (W,H)
       Filter=[W,H];
       for x=1:W
         for y=1:H
           Filter(x,y)=1/(W*H);  
         endfor
       endfor
endfunction
