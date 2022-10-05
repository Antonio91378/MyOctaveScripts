function retorno = Validation1(matrix)
    if(size(matrix,2) != size(matrix,1))
      fprintf("Error: invalid matrix");
    else
      retorno = true;
    endif
endfunction
