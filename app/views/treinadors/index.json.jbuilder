json.array!(@treinadors) do |treinador|
  json.extract! treinador, :id, :nome, :regiao, :pokebolas, :insignias
  json.url treinador_url(treinador, format: :json)
end
