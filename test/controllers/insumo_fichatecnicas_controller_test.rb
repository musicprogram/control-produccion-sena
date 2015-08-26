require 'test_helper'

class InsumoFichatecnicasControllerTest < ActionController::TestCase
  setup do
    @insumo_fichatecnica = insumo_fichatecnicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insumo_fichatecnicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insumo_fichatecnica" do
    assert_difference('InsumoFichatecnica.count') do
      post :create, insumo_fichatecnica: { cantidad: @insumo_fichatecnica.cantidad, fichatecnica_id: @insumo_fichatecnica.fichatecnica_id, material_id: @insumo_fichatecnica.material_id, observaciones: @insumo_fichatecnica.observaciones }
    end

    assert_redirected_to insumo_fichatecnica_path(assigns(:insumo_fichatecnica))
  end

  test "should show insumo_fichatecnica" do
    get :show, id: @insumo_fichatecnica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insumo_fichatecnica
    assert_response :success
  end

  test "should update insumo_fichatecnica" do
    patch :update, id: @insumo_fichatecnica, insumo_fichatecnica: { cantidad: @insumo_fichatecnica.cantidad, fichatecnica_id: @insumo_fichatecnica.fichatecnica_id, material_id: @insumo_fichatecnica.material_id, observaciones: @insumo_fichatecnica.observaciones }
    assert_redirected_to insumo_fichatecnica_path(assigns(:insumo_fichatecnica))
  end

  test "should destroy insumo_fichatecnica" do
    assert_difference('InsumoFichatecnica.count', -1) do
      delete :destroy, id: @insumo_fichatecnica
    end

    assert_redirected_to insumo_fichatecnicas_path
  end
end
