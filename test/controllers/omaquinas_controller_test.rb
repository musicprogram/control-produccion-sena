require 'test_helper'

class OmaquinasControllerTest < ActionController::TestCase
  setup do
    @omaquina = omaquinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:omaquinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create omaquina" do
    assert_difference('Omaquina.count') do
      post :create, omaquina: { maquina_id: @omaquina.maquina_id, moperario_id: @omaquina.moperario_id }
    end

    assert_redirected_to omaquina_path(assigns(:omaquina))
  end

  test "should show omaquina" do
    get :show, id: @omaquina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @omaquina
    assert_response :success
  end

  test "should update omaquina" do
    patch :update, id: @omaquina, omaquina: { maquina_id: @omaquina.maquina_id, moperario_id: @omaquina.moperario_id }
    assert_redirected_to omaquina_path(assigns(:omaquina))
  end

  test "should destroy omaquina" do
    assert_difference('Omaquina.count', -1) do
      delete :destroy, id: @omaquina
    end

    assert_redirected_to omaquinas_path
  end
end
