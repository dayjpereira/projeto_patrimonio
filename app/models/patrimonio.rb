class Patrimonio < ApplicationRecord
  belongs_to :ambiente
  belongs_to :funcionario
  has_many :movimentacao_patrimonios
end