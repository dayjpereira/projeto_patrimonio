json.extract! funcionario, :id, :nome, :ambiente_id, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
