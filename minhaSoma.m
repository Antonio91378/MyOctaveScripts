function status = minhaSoma(a,b,c)
  if isa(a,'double') && isa(b,'double') && isa(c,'double')
    status = a + b + c;
  else
    fprintf('Error, um dos valores não é do tipo number\n')
  endif
endfunction

