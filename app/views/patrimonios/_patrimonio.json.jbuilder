json.extract! patrimonio, :id, :nome, :descricao, :placa, :data_aquisicao, :ambiente_id, :funcionario_id, :created_at, :updated_at
json.url patrimonio_url(patrimonio, format: :json)
