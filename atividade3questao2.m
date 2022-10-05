function retorno = atividade3questao2(ns, ds)
 hs = deconv(ns,ds)
 a = polyval(ns,-10)
 a2 = polyval(ns,-5)
 a3 = polyval(ns,-3)
 a4 = polyval(ns,-1)

 b = polyval(ds,-10)
 b2 = polyval(ds,-5)
 b3 = polyval(ds,-3)
 b4 = polyval(ds,-1)

 c = polyval((a/b),-10)
 c2 = polyval((a2/b2),-5)
 c3 = polyval((a3/b3),-3)
 c4 = polyval((a4/b4),-1)
endfunction
