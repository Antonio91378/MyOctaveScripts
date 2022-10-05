function SupAreaVolumeCilindro(raio,altura)
  circunferencia = 2*pi*raio
  areaBase = pi*raio^2
  areaCorpo = circunferencia * altura
  areaTotal = 2*(areaBase)+ areaCorpo
  volume = areaBase * altura
  printf("O volume do cilindro é : %d m³ e a area total é %d m².",volume,areaTotal)
endfunction

