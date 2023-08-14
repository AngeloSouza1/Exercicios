
 require '/home/linux/Área de Trabalho/Curso DEV/Test_RSpec_Desenvolvedor/gem_algoritmos_dev/lib/algoritmo1/Contar_Caracteres'

describe 'contar_caracteres' do
  it 'conta caracteres minúsculos corretamente' do
    resultado = contar_caracteres('Olá Desenvolvedor!!')
    expect(resultado[:caracteres_min]).to eq(13)
  end

  it 'conta caracteres maiúsculos corretamente' do
    resultado = contar_caracteres('Olá Desenvolvedor!!')
    expect(resultado[:caracteres_mai]).to eq(2)
  end

  it 'conta caracteres especiais corretamente' do
    resultado = contar_caracteres('Olá,Desenvolvedor!')
    expect(resultado[:caracteres_especiais]).to eq(3)
  end

  it 'conta valores numéricos corretamente' do
    resultado = contar_caracteres('12345')
    expect(resultado[:valores_numericos]).to eq(5)
  end

  it 'lida com uma string vazia' do
    resultado = contar_caracteres('')
    expect(resultado[:caracteres_min]).to eq(0)
    expect(resultado[:caracteres_mai]).to eq(0)
    expect(resultado[:caracteres_especiais]).to eq(0)
    expect(resultado[:valores_numericos]).to eq(0)
  end
end