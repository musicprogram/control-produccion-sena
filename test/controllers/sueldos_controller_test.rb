require 'test_helper'

class SueldosControllerTest < ActionController::TestCase
  setup do
    @sueldo = sueldos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sueldos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sueldo" do
    assert_difference('Sueldo.count') do
      post :create, sueldo: { salario: @sueldo.salario, salario_porcentaje: @sueldo.salario_porcentaje, subsidio: @sueldo.subsidio, subsidio_procentaje: @sueldo.subsidio_procentaje, total_porcentaje: @sueldo.total_porcentaje, total_sueldo: @sueldo.total_sueldo }
    end

    assert_redirected_to sueldo_path(assigns(:sueldo))
  end

  test "should show sueldo" do
    get :show, id: @sueldo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sueldo
    assert_response :success
  end

  test "should update sueldo" do
    patch :update, id: @sueldo, sueldo: { salario: @sueldo.salario, salario_porcentaje: @sueldo.salario_porcentaje, subsidio: @sueldo.subsidio, subsidio_procentaje: @sueldo.subsidio_procentaje, total_porcentaje: @sueldo.total_porcentaje, total_sueldo: @sueldo.total_sueldo }
    assert_redirected_to sueldo_path(assigns(:sueldo))
  end

  test "should destroy sueldo" do
    assert_difference('Sueldo.count', -1) do
      delete :destroy, id: @sueldo
    end

    assert_redirected_to sueldos_path
  end
end
