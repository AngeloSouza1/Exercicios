# app/models/user.rb

class User < ApplicationRecord
    # Exemplo de atributos:
    # attr_accessor :name, :email, :password
   
    # Adicione o atributo nickname
    attr_accessor :nickname

    # Adicione o atributo level
  attr_accessor :level

   # Adicione o atributo kind
   attr_accessor :kind
   
   enum kind: { knight: 'knight', wizard: 'wizard' }

    # Exemplo de associações:
    # has_many :posts
    # has_many :comments
  end
  