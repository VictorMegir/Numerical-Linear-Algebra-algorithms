function solveEquations(n)
  b1=zeros(n,1);
  b1(1,1)=3;
  b1(n,1)=3;
  b1(2,1)=-1;
  b1(n-1,1)=-1;
  #disp(b1);
   
  b2=ones(n,1);
  b2(1,1)=4;
  b2(n,1)=4;
  b2(2,1)=0;
  b2(n-1,1)=0;
  #disp(b2);
  
  a1=zeros(n,n);
  for i=1:n;
    a1(i,i)=6;
    a2(i,i)=7;
    if(i>1)
      a1(i,i-1)=-4;
      a2(i,i-1)=-4;
      if(i>2)
        a1(i,i-2)=1;
        a2(i,i-2)=1;
      endif
    endif
     if(i<=n-1)
      a1(i,i+1)=-4;
      a2(i,i+1)=-4;
      if(i<=n-2)
        a1(i,i+2)=1;
        a2(i,i+2)=1;
      endif
    endif
     
  endfor
  #disp(a1);
  #disp(a2);
  
  y1=zeros(n,1);
  x1=zeros(n,1);
  L1=cholesky(a1);
  
  y2=zeros(n,1);
  x2=zeros(n,1);
  L2=cholesky(a2);
  
  y1=inv(L1)*b1;
  x1=transpose(inv(L1))*y1;
  
  y2=inv(L2)*b2;
  x2=transpose(inv(L2))*y2;
  printf("--------A1--------\n");
  if(n<100)   
    for i=1:n;
        printf("%.16f\n",x1(i,1));
    endfor
    printf("--------A2--------\n");
    for i=1:n;
        printf("%.16f\n",x2(i,1));
    endfor
  else
    for i=5:10;
        printf("%.16f\n",x1(i,1));
    endfor
    for i=1:3; 
      printf(".\n");
    endfor
     for i=n/2:n/2+5;
        printf("%.16f\n",x1(i,1));
    endfor
     for i=1:3; 
      printf(".\n");
    endfor
     for i=n-5:n;
        printf("%.16f\n",x1(i,1));
    endfor
    
    printf("--------A2--------\n");
    for i=5:10;
        printf("%.16f\n",x2(i,1));
    endfor
    for i=1:3; 
      printf(".\n");
    endfor
     for i=n/2:n/2+5;
        printf("%.16f\n",x2(i,1));
    endfor
     for i=1:3; 
      printf(".\n");
    endfor
     for i=n-5:n;
        printf("%.16f\n",x2(i,1));
    endfor
  endif
endfunction