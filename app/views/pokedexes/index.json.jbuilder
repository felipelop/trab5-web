json.array!(@pokedexes) do |pokedex|
  json.extract! pokedex, :id, :numero, :pokemon_id
  json.url pokedex_url(pokedex, format: :json)
end
