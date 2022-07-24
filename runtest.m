function [x] = runtest()
      I=imread("I.bmP");
      I=im2double(I);
      x=0;
      
      outputImage1=linearfilter(I,MeanFilter(3,11),'none');
      %outputImage2=linearfilter(I,MeanFilter(13,5),'none');
      %outputImage3=linearfilter(I,Sobelfilter('V'),'absolute');
      %outputImage4=linearfilter(I,Sobelfilter('H'),'absolute');
      %outputImage5=EdgeMagnitute(I);
      %outputImage6=linearfilter(I,LaplacianFilter(),'cutoff');
      %outputImage7=linearfilter(I,gauss2(4),'none');
      #l=imread("LinearFilter(I,Gauss2(4)).bmp");
      #g=outputImage-l;
      figure,imshow(outputImage1),title("Mean 1");
      %figure,imshow(outputImage2),title("Mean 2");
      %figure,imshow(outputImage6),title("LaplacianFilter");
      %figure,imshow(outputImage3),title("sobel v");
      %figure,imshow(outputImage4),title("sobel h");
      %figure,imshow(outputImage7),title("gaus");
      %figure,imshow(outputImage5),title("edge");
      #  figure,imshow(g),title("x");
       # sum(sum(outputImage-l))
endfunction
