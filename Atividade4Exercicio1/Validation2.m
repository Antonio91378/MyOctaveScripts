function retorno = Validation2(matrix)
    if(size(matrix,1) != 3)
      fprintf("Error: the matrix received doesnt contains the order 3 required");
    else
      retorno = true;
    endif
endfunction
