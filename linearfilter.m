function [outImg] = linearfilter (I,Filter,postprocess)
  
  
 [w , h,D ] = size(Filter)
 [wi , hi, D] = size (I);
 outImg = zeros(wi,hi);
 rows_floor = floor(w/2);
 cols_floor = floor (h/2); 
 new_padding = zeros(wi+(2*rows_floor) , hi+(2*cols_floor));
 
 startRowIndex = rows_floor +1;
 startColIndex = cols_floor +1
 
 new_padding(startRowIndex:startRowIndex+wi-1, startColIndex:startColIndex+hi-1) = I;
 tmp=0;
 
 for r =1 : wi-w
   for c = 1 : hi-h
     
     tmp = new_padding(r: r+ w-1 , c : c+ h-1);
     sumx = sum(sum((tmp.*Filter)));
      if strcmp(postprocess, 'cutoff')
            sumx=uint8(sumx);
        elseif strcmp(postprocess , 'absolute')
            sumx = abs(sumx);
        end
     outImg(r,c) = sumx;
   endfor  
endfor

    
endfunction
