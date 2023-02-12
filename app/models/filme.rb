class Filme < ApplicationRecord
  has_many :atuacaos

  validates :titulo, :data_de_lancamento, presence: true
end
