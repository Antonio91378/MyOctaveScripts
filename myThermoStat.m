function status = myThermoStat(temp,TempDesejada)
  if (temp < (TempDesejada + 5))
    fprintf('Aquecer\n')
  else
    fprintf('Resfriar\n')
  endif
endfunction

