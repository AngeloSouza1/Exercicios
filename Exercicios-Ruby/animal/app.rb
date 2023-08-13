require './animal.rb'
require_relative 'cachorro'
#require relative 'animal'   # usado qdo o arquivo estiver na mesma pasta


puts '*** Animal ***'
animal = Animal.new
animal.pular

puts '*** Cachorro ***'
cachorro = Cachorro.new
cachorro.pular
cachorro.latir
cachorro.dormir