
 
  # Converte a data no formato D/M/Y para uma representação em dias
  def data_para_dias(data)
    dia, mes, ano = data.split('/').map(&:to_i)
    dia + (mes * 30) + (ano * 365)  # Suposição de meses com 30 dias e anos com 365 dias
  end
  
  
  def proxima_data(arr, consulta)
    consulta_dias = data_para_dias(consulta)
    datas_convertidas = arr.map { |data| data_para_dias(data) }
  
    # Filtra as datas que são maiores ou iguais à consulta e encontra a menor delas
    datas_maiores_ou_iguais = datas_convertidas.select { |data| data >= consulta_dias }
  
    if datas_maiores_ou_iguais.empty?
      '-1'
    else
      data_proxima = datas_maiores_ou_iguais.min
      arr[datas_convertidas.index(data_proxima)]
    end
  end
  
  
  #  Datas fornecidas
  #  arr = ['22/4/1985', '1/3/1990', '23/5/2000', '4/12/2020']
  #  consultas = ['12/3/1995']
  
  # Exemplo demonstrando valor -1, caso não haja data próxima
  # arr = ['22/4/1233', '4/12/1933','1/3/1633', '23/5/1565']
  # consultas = ['4/4/2423']

  # Para cada consulta, imprime a próxima data mais próxima da matriz arr
  #  consultas.each do |consulta|
  #  puts proxima_data(arr, consulta)
  #  end
  