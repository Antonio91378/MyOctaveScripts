function retorno = detMatFunction( detSumVector,ReducedMatrix )
  subTempMatrix = ReducedMatrix;
  matrixSize = size(subTempMatrix,1);
  originalSubTempMatrix = subTempMatrix;
  for l = 1:matrixSize
    subTempMatrix = originalSubTempMatrix;
    Mij = subTempMatrix(1,l);
    #building the temporary 2x2 matrix
    subTempMatrix(1,:) = [];
    subTempMatrix(:,l) = [];
    subTempMatrixSize = size(subTempMatrix,1);
    if(subTempMatrixSize == 2)
      prevDet = Det2X2(subTempMatrix);
      func = ((-1)^(l-1)*(Mij)*(prevDet));
      detSumVector(end + 1) = func;
    endif
  endfor
  retorno = detSumVector;
endfunction
