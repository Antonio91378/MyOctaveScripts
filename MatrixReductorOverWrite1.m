function retorno = MatrixReductorOverWrite1(matrix,submatricesVector,contador)
  # Here I have two responsabilities, the fist is to reduce the original matrix. After this,
  # I will create the cell that will contain the list of matrices that was fragmented.
  while(size(matrix,1) >= 3)
    submatricesVector(contador) = matrix;
    matrix(1,:) = [];
    matrix(:,1) = [];
    contador = contador + 1;
  endwhile
  retorno = submatricesVector;
endfunction
