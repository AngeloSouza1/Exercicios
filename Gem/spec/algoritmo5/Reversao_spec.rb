require '/home/linux/Área de Trabalho/Curso DEV/Test_RSpec_Desenvolvedor/gem_algoritmos_dev/lib/algoritmo5/Reversao'

describe 'reverter_rotacao_direita_matriz' do
  it 'reverte a rotação à direita na matriz corretamente' do
    # Matriz de exemplo
    matriz = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    # Teste para k = 3
    expect(reverter_rotacao_direita_matriz(matriz, 3)).to eq([8, 9, 10, 1, 2, 3, 4, 5, 6, 7])

    # Teste para k = 1
    expect(reverter_rotacao_direita_matriz(matriz, 1)).to eq([10, 1, 2, 3, 4, 5, 6, 7, 8, 9])

    # Teste para k = 0 (não deve ocorrer rotação)
    expect(reverter_rotacao_direita_matriz(matriz, 0)).to eq(matriz)

    # Teste para k maior que o tamanho da matriz
    expect(reverter_rotacao_direita_matriz(matriz, 12)).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  end
end



