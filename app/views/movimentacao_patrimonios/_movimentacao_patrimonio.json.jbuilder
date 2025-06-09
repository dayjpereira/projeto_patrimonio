json.extract! movimentacao_patrimonio, :id, :patrimonio_id, :origem_id, :destino_id, :data_movimentacao, :funcionario_id, :created_at, :updated_at
json.url movimentacao_patrimonio_url(movimentacao_patrimonio, format: :json)
