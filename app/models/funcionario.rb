class Funcionario < ApplicationRecord
  belongs_to :ambiente
  has_many :patrimonios
  has_many :movimentacao_patrimonios

  validate :ambiente_deve_ser_departamento

  private

  def ambiente_deve_ser_departamento
    if ambiente.present? && ambiente.type != 'Departamento'
      errors.add(:ambiente, "deve ser um Departamento")
    end
  end
end
