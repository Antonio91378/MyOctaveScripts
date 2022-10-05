function retorno = Ramanujan(convergNumber)
  constante = (2*2^(0.5)*9801^(-1))
  termoGrandeSomatorio = 0
  while(convergNumber >= 0)
    termoGrandeSomatorio = termoGrandeSomatorio + (factorial(4*convergNumber)*(1103+(26390*convergNumber))*((factorial(convergNumber))^4*((396)^(4*convergNumber))))
    convergNumber = convergNumber - 1
  endwhile
  retorno = ((termoGrandeSomatorio*constante)^(-1))
endfunction
