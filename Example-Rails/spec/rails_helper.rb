# Configura o ambiente de teste para Rails
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)

# Requer o suporte do RSpec e configurações adicionais
require 'rspec/rails'
require 'factory_bot_rails'

# Configurações personalizadas do RSpec (se necessário)
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  # Adicione qualquer configuração adicional aqui
end
