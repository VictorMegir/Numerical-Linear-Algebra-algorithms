function ret = quickMult(A,B)
  n = length(A);
  x = B;
  for i=1:n
    for j=i-2:i-1
      if(i>2)
        x(i)=A(i,j)*B(i);
      endif
    endfor
  endfor
ret = x;
endfunction
