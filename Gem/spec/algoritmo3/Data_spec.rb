require '/home/linux/Área de Trabalho/Curso DEV/Test_RSpec_Desenvolvedor/gem_algoritmos_dev/lib/algoritmo3/Data'


  describe 'data_para_dias' do
    it 'converte a data no formato D/M/Y para dias corretamente' do
      expect(data_para_dias('07/09/2023')).to eq(738672) # 7 dia + 9 meses * 30 + 2023 anos * 365
      expect(data_para_dias('01/01/1980')).to eq(722731) # 1 dia + 1 meses * 30 + 1980 anos * 365
      expect(data_para_dias('31/12/2022')).to eq(738421) # 31 dias + 12 meses * 30 + 2022 anos * 365
     end
    
  end
  

  describe 'proxima_data' do
    it 'encontra a próxima data mais próxima da matriz de datas com suposição de 30 dias por mês e 365 dias por ano' do
      arr = ['22/04/1980', '01/03/1985', '23/5/1990', '04/12/1995']
      expect(proxima_data(arr, '12/03/1995')).to eq('04/12/1995')
      expect(proxima_data(arr, '01/01/1980')).to eq('22/04/1980')
    end
  
    it 'retorna -1 se não houver data próxima' do
      arr = ['22/04/1980', '04/12/1995', '01/3/1985', '23/05/1990']
      expect(proxima_data(arr, '04/04/2025')).to eq('-1')
    end
  end
  
