function retorno = myRecDet(matrix, originalMatrix, detSumVector, submatricesVector,contador)
  #validation - 1 => is it a square matrix ?
  Validation1(matrix);


  #Save the original matrix value
  if(contador == 1)
    originalMatrix = matrix;
  endif


  #Take care about the size of the matrix received
  if(size(matrix,1) > 2)
    submatricesVector = MatrixReductorOverWrite1(matrix,submatricesVector,contador);
  elseif(size(matrix,1) == 2)
    submatricesVector(1) = matrix;
    retorno = Det2X2(matrix);
    return;
  else
    retorno = matrix(1);
    return;
  endif


  subMatrix = cell2mat(submatricesVector(end));
  detSumVector = detMatFunction(detSumVector, subMatrix);
  detSumVectorNew = sum(detSumVector);
  detSumVector = [];
  detSumVector(end + 1) = detSumVectorNew;


  if (length(submatricesVector) > 1)
    lengthPosition = (length(submatricesVector));
    for z = 1:(lengthPosition - 1)
      subTempMatrix = cell2mat(submatricesVector(end - z));
      matrixSize = size(subTempMatrix,1);
      originalSubTempMatrix = subTempMatrix;
      for l = 1:matrixSize
        subTempMatrix = originalSubTempMatrix;
        Mij = subTempMatrix(1,l);
        subTempMatrix(1,:) = [];
        subTempMatrix(:,l) = [];
        subTempMatrixSize = size(subTempMatrix,1);
        #declarando func
        func = 0;
        if(subTempMatrixSize == 2)
          prevDet = Det2X2(subTempMatrix);
          func = ((-1)^(l-1)*(Mij)*(prevDet));
        elseif(subTempMatrixSize > 2 && l == 1)
          prevDet = sum(detSumVector);
          detSumVector = [];
          func = ((-1)^(l-1)*(Mij)*(prevDet));
        else
          submatricesVectorEmpty = {};
          detSumVectorEmpty = [];
          counterRestarted = 1;
          prevDet = myRecDet(subTempMatrix, subTempMatrix, detSumVectorEmpty, submatricesVectorEmpty,counterRestarted);
          func = ((-1)^(l-1)*(Mij)*(prevDet));
        endif
        detSumVector(end + 1) = func;
      endfor
    endfor
    retorno = sum(detSumVector);
  else
    retorno = detSumVector;
  endif
endfunction
