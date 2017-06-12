require 'test_helper'

class TreinadorsControllerTest < ActionController::TestCase
  setup do
    @treinador = treinadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:treinadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create treinador" do
    assert_difference('Treinador.count') do
      post :create, treinador: { insignias: @treinador.insignias, nome: @treinador.nome, pokebolas: @treinador.pokebolas, regiao: @treinador.regiao }
    end

    assert_redirected_to treinador_path(assigns(:treinador))
  end

  test "should show treinador" do
    get :show, id: @treinador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @treinador
    assert_response :success
  end

  test "should update treinador" do
    patch :update, id: @treinador, treinador: { insignias: @treinador.insignias, nome: @treinador.nome, pokebolas: @treinador.pokebolas, regiao: @treinador.regiao }
    assert_redirected_to treinador_path(assigns(:treinador))
  end

  test "should destroy treinador" do
    assert_difference('Treinador.count', -1) do
      delete :destroy, id: @treinador
    end

    assert_redirected_to treinadors_path
  end
end
