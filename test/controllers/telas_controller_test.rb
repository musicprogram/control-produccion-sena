require 'test_helper'

class TelasControllerTest < ActionController::TestCase
  setup do
    @tela = telas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tela" do
    assert_difference('Tela.count') do
      post :create, tela: { ayuda_id: @tela.ayuda_id, descripcion: @tela.descripcion, nombre: @tela.nombre, observaciones: @tela.observaciones }
    end

    assert_redirected_to tela_path(assigns(:tela))
  end

  test "should show tela" do
    get :show, id: @tela
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tela
    assert_response :success
  end

  test "should update tela" do
    patch :update, id: @tela, tela: { ayuda_id: @tela.ayuda_id, descripcion: @tela.descripcion, nombre: @tela.nombre, observaciones: @tela.observaciones }
    assert_redirected_to tela_path(assigns(:tela))
  end

  test "should destroy tela" do
    assert_difference('Tela.count', -1) do
      delete :destroy, id: @tela
    end

    assert_redirected_to telas_path
  end
end
