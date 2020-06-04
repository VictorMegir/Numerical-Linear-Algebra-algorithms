function ret = steepest_decend(A,b)
  n=length(A);
  e = 0.5*10^(-4);
  x = zeros(n,1);
  r = b;
  k = 1;
  while(norm(r)>e && k<n)
    k++;
    a = (transpose(r)*r)/(transpose(r)*A*r);
    x += a*r;
    r = b - A*x;  #(5x5)*(5x1)
    #r = b - quickMult(A,x);
  endwhile
  disp(k);
  ret = x;
endfunction
