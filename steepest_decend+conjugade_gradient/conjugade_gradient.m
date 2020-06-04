function ret = conjugade_gradient(A,b)
  n=length(A);
  e = 0.5*10^(-4);
  x = zeros(n,1);
  r = b;
  p = r;
  a = ((transpose(r)*r)/(transpose(p)*A*p));
  x += a*p;
  oldr = b;
  r -= a*A*p;
  k = 1;
  while(abs(r(k))>e && k<n)
    k++;
    q = (transpose(r)*r)/(transpose(oldr)*oldr);
    p = r + q*p;
    a = ((transpose(r)*r)/(transpose(p)*A*p));
    x += a*p;
    oldr = r;
    r -= a*A*p;	#(5x5)*(5x1)
    #r -= quickMult(a*A,p);
  endwhile
  disp(k);
  ret = x;
endfunction
