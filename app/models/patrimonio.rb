class Patrimonio < ApplicationRecord
  belongs_to :ambiente
  belongs_to :funcionario, optional: true
  has_many :movimentacao_patrimonios
end