require 'net/http'
require 'json'
require 'uri'
require 'io/console'
require 'colorize'

class Tradutor
  def initialize(api_key)
    @api_key = api_key
  end

  def limpar_tela
    system('clear') || system('cls')
  end

  def exibir_menu
    limpar_tela
    puts "==========================================".center(50)
    puts "    Bem-vindo ao Tradutor!".center(50)
    puts "==========================================".center(50)
    puts "Selecione uma opção:".center(50)
    puts "1. Traduzir texto".center(50)
    puts "2. Sair".center(50)
    puts "==========================================".center(50)
  end

  def traduzir_texto(texto, idioma_origem, idioma_destino)
    url = URI.parse("https://translate.yandex.net/api/v1.5/tr.json/translate")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true if url.scheme == 'https'

    params = {
      'key' => @api_key,
      'text' => texto,
      'lang' => "#{idioma_origem}-#{idioma_destino}"
    }

    response = Net::HTTP.post_form(url, params)
    traducao = JSON.parse(response.body)["text"].first

    traducao
  end

  def obter_input(texto)
    print texto
    gets.chomp
  end

  def salvar_traducao(texto_original, texto_traduzido)
    data_hora = Time.now.strftime('%d-%m-%y_%H:%M')
    arquivo_nome = "#{data_hora}.txt"

    File.open(arquivo_nome, 'w') do |file|
      file.puts("Texto Original: #{texto_original}")
      file.puts("Texto Traduzido: #{texto_traduzido}")
    end

    puts "==========================================".center(50)
    puts "Tradução salva em #{arquivo_nome}".center(50).colorize(:blue)
    puts "                                          ".center(50)
    puts "==========================================".center(50)
  end

  def traduzir_e_salvar
    loop do
      exibir_menu
      opcao = obter_input("Escolha uma opção: ")

      case opcao
      when '1'
        texto_original = obter_input('Digite o texto que você deseja traduzir: ')
        idioma_origem = obter_input('Digite o idioma de origem (por exemplo, "en" para inglês): ')
        idioma_destino = obter_input('Digite o idioma de destino (por exemplo, "pt" para português): ')

        texto_traduzido = traduzir_texto(texto_original, idioma_origem, idioma_destino)

        limpar_tela
        puts "==========================================".center(50)
        puts "Texto Traduzido:".center(50)
        puts texto_traduzido.center(50).colorize(:yellow)
        
        puts "==========================================".center(50)

        salvar_traducao(texto_original, texto_traduzido)

        obter_input("\nPressione Enter para continuar...")
      when '2'
        puts "Saindo..."
        exit
      else
        puts "Opção inválida! Pressione Enter para continuar..."
        obter_input("")
      end
    end
  end
end

# Substitua 'API_KEY_AQUI' pela sua chave da API Yandex Translate
api_key = "trnsl.1.1.20230820T154541Z.e5ab58105126fe81.aa0277a1d67a584225b5a93697ed6753494d14a4"

tradutor = Tradutor.new(api_key)
tradutor.traduzir_e_salvar

