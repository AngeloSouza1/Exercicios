<h1 align="center"> Testes dos Algoritmos</h1>

## Descrição 
<p align="justify">Este repositório contém implementações de algoritmos e testes unitários associados a eles. Os testes são escritos usando o framework de testes RSpec para Ruby.</p>

* ### Como Executar os Testes
 <p align="justify">Para executar os testes, siga estas etapas:</p>

  - Certifique-se de que você tem Ruby instalado em seu sistema. Você pode verificar digitando o seguinte comando em seu terminal:
   
      ```bash
      ruby --version
  - Instale a gem RSpec, se ainda não estiver instalada, usando o seguinte comando:
      ```bash
     gem install rspec
  - Clone este repositório em seu sistema:
      ```bash
     git clone https://github.com/AngeloSouza1/Gem_AlgortimosDev.git
  - Navegue até o diretório do repositório:
      ```bash
     cd spec
  - Execute os testes para um algoritmo específico, substituindo algoritmo1 pelo nome do arquivo de teste que deseja executar:
     ```bash
     bundle exec rspec spec/algoritmo1/NomeDoArquivo_spec.rb
  - Por exemplo, para executar os testes para o primeiro algoritmo, use:
     ```bash
     bundle exec rspec spec/algoritmo1/Algoritmo1_spec.rb

 * ### Estrutura do Repositório

  - O diretório spec contém todos os arquivos de teste.
  - Cada algoritmo tem seu próprio diretório, por exemplo, 'algoritmo1'.
  - Dentro do diretório do algoritmo, você encontrará um arquivo _spec.rb que contém os testes para esse algoritmo.

     
* ### Contribuindo
<p align="justify">Sinta-se à vontade para contribuir com novos algoritmos ou melhorias nos testes existentes. Basta criar um novo arquivo de teste na pasta apropriada e adicionar os testes relacionados.</p>

* ### Licença
<p align="justify">Este programa é distribuído sob a Licença MIT.</p>
