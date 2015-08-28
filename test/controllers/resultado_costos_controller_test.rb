require 'test_helper'

class ResultadoCostosControllerTest < ActionController::TestCase
  setup do
    @resultado_costo = resultado_costos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resultado_costos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resultado_costo" do
    assert_difference('ResultadoCosto.count') do
      post :create, resultado_costo: { costo_dia: @resultado_costo.costo_dia, costo_hora: @resultado_costo.costo_hora, costo_minuto: @resultado_costo.costo_minuto, costome_id: @resultado_costo.costome_id, dlaboral_id: @resultado_costo.dlaboral_id, dlaborales_mes: @resultado_costo.dlaborales_mes, prestacion_id: @resultado_costo.prestacion_id, recargo_adicional: @resultado_costo.recargo_adicional, sueldo_id: @resultado_costo.sueldo_id, total_minuto: @resultado_costo.total_minuto }
    end

    assert_redirected_to resultado_costo_path(assigns(:resultado_costo))
  end

  test "should show resultado_costo" do
    get :show, id: @resultado_costo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resultado_costo
    assert_response :success
  end

  test "should update resultado_costo" do
    patch :update, id: @resultado_costo, resultado_costo: { costo_dia: @resultado_costo.costo_dia, costo_hora: @resultado_costo.costo_hora, costo_minuto: @resultado_costo.costo_minuto, costome_id: @resultado_costo.costome_id, dlaboral_id: @resultado_costo.dlaboral_id, dlaborales_mes: @resultado_costo.dlaborales_mes, prestacion_id: @resultado_costo.prestacion_id, recargo_adicional: @resultado_costo.recargo_adicional, sueldo_id: @resultado_costo.sueldo_id, total_minuto: @resultado_costo.total_minuto }
    assert_redirected_to resultado_costo_path(assigns(:resultado_costo))
  end

  test "should destroy resultado_costo" do
    assert_difference('ResultadoCosto.count', -1) do
      delete :destroy, id: @resultado_costo
    end

    assert_redirected_to resultado_costos_path
  end
end
