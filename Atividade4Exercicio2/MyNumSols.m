function activity4E2 = myNumSols(A,b)
  #validation - 1 => is it a square matrix ?
  if(size(A,1) != size(b,1))
    fprintf("Error Exception: The matrices are not compatible");
    return
  endif
  x = zeros(size(A,1),size(b,2));
  xSols = [];
  while
endfunction
