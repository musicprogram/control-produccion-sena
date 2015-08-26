require 'test_helper'

class OperariosControllerTest < ActionController::TestCase
  setup do
    @operario = operarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operario" do
    assert_difference('Operario.count') do
      post :create, operario: { apellido: @operario.apellido, ayuda_id: @operario.ayuda_id, documento: @operario.documento, email: @operario.email, grupo_id: @operario.grupo_id, nombre: @operario.nombre }
    end

    assert_redirected_to operario_path(assigns(:operario))
  end

  test "should show operario" do
    get :show, id: @operario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operario
    assert_response :success
  end

  test "should update operario" do
    patch :update, id: @operario, operario: { apellido: @operario.apellido, ayuda_id: @operario.ayuda_id, documento: @operario.documento, email: @operario.email, grupo_id: @operario.grupo_id, nombre: @operario.nombre }
    assert_redirected_to operario_path(assigns(:operario))
  end

  test "should destroy operario" do
    assert_difference('Operario.count', -1) do
      delete :destroy, id: @operario
    end

    assert_redirected_to operarios_path
  end
end
