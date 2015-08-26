require 'test_helper'

class OperacionMaquinasControllerTest < ActionController::TestCase
  setup do
    @operacion_maquina = operacion_maquinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operacion_maquinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operacion_maquina" do
    assert_difference('OperacionMaquina.count') do
      post :create, operacion_maquina: { calibreaguja: @operacion_maquina.calibreaguja, fichatecnica_id: @operacion_maquina.fichatecnica_id, guia_acesorios: @operacion_maquina.guia_acesorios, maquina_id: @operacion_maquina.maquina_id, margencostura: @operacion_maquina.margencostura, observaciones: @operacion_maquina.observaciones, operacion_id: @operacion_maquina.operacion_id, ppp: @operacion_maquina.ppp, sam: @operacion_maquina.sam, tioperacion_id: @operacion_maquina.tioperacion_id }
    end

    assert_redirected_to operacion_maquina_path(assigns(:operacion_maquina))
  end

  test "should show operacion_maquina" do
    get :show, id: @operacion_maquina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operacion_maquina
    assert_response :success
  end

  test "should update operacion_maquina" do
    patch :update, id: @operacion_maquina, operacion_maquina: { calibreaguja: @operacion_maquina.calibreaguja, fichatecnica_id: @operacion_maquina.fichatecnica_id, guia_acesorios: @operacion_maquina.guia_acesorios, maquina_id: @operacion_maquina.maquina_id, margencostura: @operacion_maquina.margencostura, observaciones: @operacion_maquina.observaciones, operacion_id: @operacion_maquina.operacion_id, ppp: @operacion_maquina.ppp, sam: @operacion_maquina.sam, tioperacion_id: @operacion_maquina.tioperacion_id }
    assert_redirected_to operacion_maquina_path(assigns(:operacion_maquina))
  end

  test "should destroy operacion_maquina" do
    assert_difference('OperacionMaquina.count', -1) do
      delete :destroy, id: @operacion_maquina
    end

    assert_redirected_to operacion_maquinas_path
  end
end
