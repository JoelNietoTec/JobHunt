class User < ActiveRecord::Base
  include TheRole::Api::User
  authenticates_with_sorcery!
  validates :password, confirmation: true
  attr_accessor :password

  #Validamos el formato del E-mail
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }

  # Validamos campos que deben ser únicos
  validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
  validates :role_id, presence: { message: 'Favor seleccionar un tipo de Perfil' }
end
