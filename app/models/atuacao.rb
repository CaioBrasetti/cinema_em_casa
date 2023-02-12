class Atuacao < ApplicationRecord
  belongs_to :ator
  belongs_to :filme

  validates :ator, :filme, :nome_do_personagem, presence: true
end
