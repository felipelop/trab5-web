require 'test_helper'

class TipoPokemonsControllerTest < ActionController::TestCase
  setup do
    @tipo_pokemon = tipo_pokemons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_pokemons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_pokemon" do
    assert_difference('TipoPokemon.count') do
      post :create, tipo_pokemon: { pokemon_id: @tipo_pokemon.pokemon_id, tipo_id: @tipo_pokemon.tipo_id }
    end

    assert_redirected_to tipo_pokemon_path(assigns(:tipo_pokemon))
  end

  test "should show tipo_pokemon" do
    get :show, id: @tipo_pokemon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_pokemon
    assert_response :success
  end

  test "should update tipo_pokemon" do
    patch :update, id: @tipo_pokemon, tipo_pokemon: { pokemon_id: @tipo_pokemon.pokemon_id, tipo_id: @tipo_pokemon.tipo_id }
    assert_redirected_to tipo_pokemon_path(assigns(:tipo_pokemon))
  end

  test "should destroy tipo_pokemon" do
    assert_difference('TipoPokemon.count', -1) do
      delete :destroy, id: @tipo_pokemon
    end

    assert_redirected_to tipo_pokemons_path
  end
end
