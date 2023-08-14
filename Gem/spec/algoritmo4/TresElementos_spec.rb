require '/home/linux/Área de Trabalho/Curso DEV/Test_RSpec_Desenvolvedor/gem_algoritmos_dev/lib/algoritmo4/TresElementos'

describe 'encontrar_tres_maiores_elementos' do
  it 'retorna os três maiores elementos em ordem decrescente' do
    arr = [10, 4, 3, 50, 23, 90]
    resultados = encontrar_tres_maiores_elementos(arr)
    expect(resultados).to eq([90, 50, 23])
  end

  it 'lida com uma matriz com menos de três elementos' do
    arr = [10, 4]
    resultados = encontrar_tres_maiores_elementos(arr)
    expect(resultados).to eq([10, 4, -Float::INFINITY])
  end

  it 'lida com uma matriz vazia' do
    arr = []
    resultados = encontrar_tres_maiores_elementos(arr)
    expect(resultados).to eq([-Float::INFINITY, -Float::INFINITY, -Float::INFINITY])
  end

  it 'lida com uma matriz com elementos repetidos' do
    arr = [10, 10, 10, 20, 20, 20, 30, 30, 30]
    resultados = encontrar_tres_maiores_elementos(arr)
    expect(resultados).to eq([30, 20, 10])
  end
end