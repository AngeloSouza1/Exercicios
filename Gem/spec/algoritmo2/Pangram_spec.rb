
require '/home/linux/Área de Trabalho/Curso DEV/Test_RSpec_Desenvolvedor/gem_algoritmos_dev/lib/algoritmo2/Pangram'




RSpec.describe 'caracteres_ausentes_para_pangram' do
  it 'retorna uma mensagem de pangrama para uma string que já é um pangram' do
    string = "the quick brown fox jumps over the lazy dog"
    expect(caracteres_ausentes_para_pangram(string)).to eq('A string já é um pangram.')
  end

  it 'retorna uma mensagem de letras ausentes para uma string que não é um pangram' do
    string = "the quick brown fo jumps over the lazy dog "
    expect(caracteres_ausentes_para_pangram(string)).to eq('Faltam as seguintes letras: x')
  end

  it 'retorna uma mensagem de letras ausentes para uma string que não contém nenhuma letra' do
    string = ""
    expect(caracteres_ausentes_para_pangram(string)).to eq('Faltam as seguintes letras: a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z')
  end

  it 'retorna uma mensagem de letras ausentes para uma string que não contém vogais' do
    string = "rhythm"
    expect(caracteres_ausentes_para_pangram(string)).to eq('Faltam as seguintes letras: a, e, i, o, u')
  end
end


