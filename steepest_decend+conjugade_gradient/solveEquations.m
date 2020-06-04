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
  resA1 = steepest_decend(a1,b1);
  resA2 = steepest_decend(a2,b2);
  disp("-----------steepest_decend-----------");
  disp("------------------A1-----------------");
  if(n>10)
    for i=1:5
	disp(resA1(i));
    endfor
    disp("-------------------------------------");
    for i=n/2-5:n/2
        disp(resA1(i));
    endfor
    disp("-------------------------------------");
    for i=n-5:n
        disp(resA1(i));
    endfor
    disp("-------------------------------------");
  endif
  disp("------------------A2-----------------");
  if(n>10)
    for i=1:5
	disp(resA2(i));
    endfor
    disp("-------------------------------------");
    for i=n/2-5:n/2
        disp(resA2(i));
    endfor
    disp("-------------------------------------");
    for i=n-5:n
        disp(resA2(i));
    endfor
  disp("-------------------------------------");
  endif
  resA1 = conjugade_gradient(a1,b1);
  resA2 = conjugade_gradient(a2,b2);
  disp("---------conjugade_gradient----------");
  disp("------------------A1-----------------");
  if(n>10)
    for i=1:5
	disp(resA1(i));
    endfor
    disp("-------------------------------------");
    for i=n/2-5:n/2
        disp(resA1(i));
    endfor
    disp("-------------------------------------");
    for i=n-5:n
        disp(resA1(i));
    endfor
  disp("-------------------------------------");
  endif
  disp("------------------A2-----------------");
  if(n>10)
    for i=1:5
	disp(resA2(i));
    endfor
    disp("-------------------------------------");
    for i=n/2-5:n/2
        disp(resA2(i));
    endfor
    disp("-------------------------------------");
    for i=n-5:n
        disp(resA2(i));
    endfor
  disp("-------------------------------------");
  endif
endfunction
