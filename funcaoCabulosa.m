function retorno = funcaoCabulosa(x)
  soma =0;
  for i=1:length(x)
    if(~rem(x(i),2))
    soma = x(i) + soma;
    endif
  endfor
  retorno = soma;
endfunction

