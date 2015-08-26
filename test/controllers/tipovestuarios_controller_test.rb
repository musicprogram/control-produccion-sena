require 'test_helper'

class TipovestuariosControllerTest < ActionController::TestCase
  setup do
    @tipovestuario = tipovestuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipovestuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipovestuario" do
    assert_difference('Tipovestuario.count') do
      post :create, tipovestuario: { descripcion: @tipovestuario.descripcion, nombre: @tipovestuario.nombre }
    end

    assert_redirected_to tipovestuario_path(assigns(:tipovestuario))
  end

  test "should show tipovestuario" do
    get :show, id: @tipovestuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipovestuario
    assert_response :success
  end

  test "should update tipovestuario" do
    patch :update, id: @tipovestuario, tipovestuario: { descripcion: @tipovestuario.descripcion, nombre: @tipovestuario.nombre }
    assert_redirected_to tipovestuario_path(assigns(:tipovestuario))
  end

  test "should destroy tipovestuario" do
    assert_difference('Tipovestuario.count', -1) do
      delete :destroy, id: @tipovestuario
    end

    assert_redirected_to tipovestuarios_path
  end
end
