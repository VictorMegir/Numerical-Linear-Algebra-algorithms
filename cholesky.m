function L = cholesky(A)
  n = length(A);
  L = zeros(n);
  for i=1:n
    sum=0;
     for k=i-2:i-1
      if(k>=1)
        sum+=L(i,k)*L(i,k);
      endif
     endfor
     L(i,i) = sqrt(A(i, i) - sum);
     for j=(i + 1):n
       sum=0;
       for k=i-2:i-1
         if(k>=1)
            sum+=L(i,k)*L(j,k);
         endif
       endfor
       L(j, i) = (A(j, i) - sum)/L(i,i);
     endfor
  endfor
endfunction