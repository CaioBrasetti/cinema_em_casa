class Ator < ApplicationRecord
  has_many :atuacaos

  validates :nome, :data_de_nascimento, presence: true
end
