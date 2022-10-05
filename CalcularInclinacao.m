function CalcularInclinacao(x1,y1,x2,y2)
  deltax = (x1 - x2)
  if(deltax < 0)
    deltax = deltax * (-1)
  endif
  deltay = (y1 - y2)
  if(deltay < 0)
    deltay = deltay * (-1)
  endif

  tangenteB = deltay/deltax
  printf("a inclinacao da reta formada pelos dois pontos, com base no eixo x, e de %d graus",rad2deg(atan(tangenteB)))

endfunction
