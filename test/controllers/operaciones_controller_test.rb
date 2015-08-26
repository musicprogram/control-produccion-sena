require 'test_helper'

class OperacionesControllerTest < ActionController::TestCase
  setup do
    @operacion = operaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operacion" do
    assert_difference('Operacion.count') do
      post :create, operacion: { descripcion: @operacion.descripcion, maquina_id: @operacion.maquina_id, modulo_id: @operacion.modulo_id, nombre: @operacion.nombre, sam: @operacion.sam }
    end

    assert_redirected_to operacion_path(assigns(:operacion))
  end

  test "should show operacion" do
    get :show, id: @operacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operacion
    assert_response :success
  end

  test "should update operacion" do
    patch :update, id: @operacion, operacion: { descripcion: @operacion.descripcion, maquina_id: @operacion.maquina_id, modulo_id: @operacion.modulo_id, nombre: @operacion.nombre, sam: @operacion.sam }
    assert_redirected_to operacion_path(assigns(:operacion))
  end

  test "should destroy operacion" do
    assert_difference('Operacion.count', -1) do
      delete :destroy, id: @operacion
    end

    assert_redirected_to operaciones_path
  end
end
