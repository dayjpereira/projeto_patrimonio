class MovimentacaoPatrimonio < ApplicationRecord
  belongs_to :patrimonio
  belongs_to :origem, class_name: 'Ambiente'
  belongs_to :destino, class_name: 'Ambiente'
  belongs_to :funcionario
end