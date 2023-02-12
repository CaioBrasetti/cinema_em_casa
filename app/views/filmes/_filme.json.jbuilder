json.extract! filme, :id, :titulo, :data_de_lancamento, :created_at, :updated_at
json.url filme_url(filme, format: :json)
