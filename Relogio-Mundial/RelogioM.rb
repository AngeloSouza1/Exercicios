
require 'tzinfo'

# Define uma lista de cidades e seus fusos horários
cidades = {
  'Nova York' => 'America/New_York',
  'Los Angeles' => 'America/Los_Angeles',
  'Londres' => 'Europe/London',
  'Tóquio' => 'Asia/Tokyo',
  'Sydney' => 'Australia/Sydney',
  'Brasília' => 'America/Sao_Paulo' #
}

# Loop principal para atualizar a hora das cidades
loop do
  system('clear') || system('cls') # Limpa a tela

  puts "Relógio Mundial".center(50, "=")
  puts

 # Obtém a hora local para cada cidade e exibe
 cidades.each do |cidade, fuso_horario|
    tz = TZInfo::Timezone.get(fuso_horario)
    hora_local = tz.now.strftime('%d %B %Y %H:%M:%S')
    puts "#{cidade}: #{hora_local}"
    puts
  end
  sleep 1 # Atualiza a cada segundo
end
