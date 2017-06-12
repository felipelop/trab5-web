json.array!(@tipo_pokemons) do |tipo_pokemon|
  json.extract! tipo_pokemon, :id, :tipo_id, :pokemon_id
  json.url tipo_pokemon_url(tipo_pokemon, format: :json)
end
