  #variables

  #Random matriz choosed:
  matrix = [78,98,45,12,98,32,74;78,45,71,0,98,74,42;74,95,31,74,98,41,96;74,54,95,74,32,41,477;74,98,56,17,48,9,711;74,41,74,32,65,19,0;63,6,9,4,5,7,3]
  originalMatrix = matrix;
  subMatrix = matrix;
  #detSumVector receives the accumulated det value from the submatrices.
  detSumVector = [];
  #submatricesVector will keep the historical of the submatrices
  submatricesVector = {};
  submatricesVector(1) = subMatrix;
  #Loop feature
  contador = 1;

#myRecDet(matrix, matrix, detSumVector, submatricesVector,contador)
