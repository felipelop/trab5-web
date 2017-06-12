json.array!(@pokemons) do |pokemon|
  json.extract! pokemon, :id, :nome, :cp, :hp, :treinador_id
  json.url pokemon_url(pokemon, format: :json)
end
