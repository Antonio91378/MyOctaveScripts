  #variables
  matrix = [45,55,77,7474,89;255,44,14,11,417;71,1,417,1,77;75,7,17,7,17;47,17,7,17,34];
  #matrix =[78,4,62;12,84,1;62,9,2]
  originalMatrix = matrix;
  matrixSize = size(matrix,1);
  subMatrix = matrix;
  #detSumVector receives the accumulated det value from the submatrices.
  detSumVector = [];
  #submatricesVector will keep the historical of the submatrices
  submatricesVector = {};
  submatricesVector(1) = subMatrix;
  #Loop feature
  contador = 1;
 #myRecDet(matrix, matrix, detSumVector, submatricesVector,contador)

