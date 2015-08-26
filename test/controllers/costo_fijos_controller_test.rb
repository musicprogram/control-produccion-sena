require 'test_helper'

class CostoFijosControllerTest < ActionController::TestCase
  setup do
    @costo_fijo = costo_fijos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:costo_fijos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create costo_fijo" do
    assert_difference('CostoFijo.count') do
      post :create, costo_fijo: { arrendamiento: @costo_fijo.arrendamiento, gastos_mercadeo: @costo_fijo.gastos_mercadeo, honorarios: @costo_fijo.honorarios, impuestos_municipales: @costo_fijo.impuestos_municipales, nomina: @costo_fijo.nomina, otros: @costo_fijo.otros, otros_gastos: @costo_fijo.otros_gastos, papeleria: @costo_fijo.papeleria, prestaciones: @costo_fijo.prestaciones, servicios_publicos: @costo_fijo.servicios_publicos, total_costos: @costo_fijo.total_costos }
    end

    assert_redirected_to costo_fijo_path(assigns(:costo_fijo))
  end

  test "should show costo_fijo" do
    get :show, id: @costo_fijo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @costo_fijo
    assert_response :success
  end

  test "should update costo_fijo" do
    patch :update, id: @costo_fijo, costo_fijo: { arrendamiento: @costo_fijo.arrendamiento, gastos_mercadeo: @costo_fijo.gastos_mercadeo, honorarios: @costo_fijo.honorarios, impuestos_municipales: @costo_fijo.impuestos_municipales, nomina: @costo_fijo.nomina, otros: @costo_fijo.otros, otros_gastos: @costo_fijo.otros_gastos, papeleria: @costo_fijo.papeleria, prestaciones: @costo_fijo.prestaciones, servicios_publicos: @costo_fijo.servicios_publicos, total_costos: @costo_fijo.total_costos }
    assert_redirected_to costo_fijo_path(assigns(:costo_fijo))
  end

  test "should destroy costo_fijo" do
    assert_difference('CostoFijo.count', -1) do
      delete :destroy, id: @costo_fijo
    end

    assert_redirected_to costo_fijos_path
  end
end
