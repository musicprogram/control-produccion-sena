require 'test_helper'

class PrestacionesControllerTest < ActionController::TestCase
  setup do
    @prestacion = prestaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prestaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prestacion" do
    assert_difference('Prestacion.count') do
      post :create, prestacion: { cesantias: @prestacion.cesantias, cesantias_porcentaje: @prestacion.cesantias_porcentaje, intereses_cesantias: @prestacion.intereses_cesantias, intereses_porcenjate: @prestacion.intereses_porcenjate, prima: @prestacion.prima, prima_procentaje: @prestacion.prima_procentaje, sueldo_id: @prestacion.sueldo_id, total_porcentaje: @prestacion.total_porcentaje, total_prestacion: @prestacion.total_prestacion, vacaciones: @prestacion.vacaciones, vacaciones_porcentaje: @prestacion.vacaciones_porcentaje }
    end

    assert_redirected_to prestacion_path(assigns(:prestacion))
  end

  test "should show prestacion" do
    get :show, id: @prestacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prestacion
    assert_response :success
  end

  test "should update prestacion" do
    patch :update, id: @prestacion, prestacion: { cesantias: @prestacion.cesantias, cesantias_porcentaje: @prestacion.cesantias_porcentaje, intereses_cesantias: @prestacion.intereses_cesantias, intereses_porcenjate: @prestacion.intereses_porcenjate, prima: @prestacion.prima, prima_procentaje: @prestacion.prima_procentaje, sueldo_id: @prestacion.sueldo_id, total_porcentaje: @prestacion.total_porcentaje, total_prestacion: @prestacion.total_prestacion, vacaciones: @prestacion.vacaciones, vacaciones_porcentaje: @prestacion.vacaciones_porcentaje }
    assert_redirected_to prestacion_path(assigns(:prestacion))
  end

  test "should destroy prestacion" do
    assert_difference('Prestacion.count', -1) do
      delete :destroy, id: @prestacion
    end

    assert_redirected_to prestaciones_path
  end
end
