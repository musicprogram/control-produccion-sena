require 'test_helper'

class PiezaFichatecnicasControllerTest < ActionController::TestCase
  setup do
    @pieza_fichatecnica = pieza_fichatecnicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pieza_fichatecnicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pieza_fichatecnica" do
    assert_difference('PiezaFichatecnica.count') do
      post :create, pieza_fichatecnica: { cantidad: @pieza_fichatecnica.cantidad, fichatecnica_id: @pieza_fichatecnica.fichatecnica_id, material_id: @pieza_fichatecnica.material_id, observaciones: @pieza_fichatecnica.observaciones }
    end

    assert_redirected_to pieza_fichatecnica_path(assigns(:pieza_fichatecnica))
  end

  test "should show pieza_fichatecnica" do
    get :show, id: @pieza_fichatecnica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pieza_fichatecnica
    assert_response :success
  end

  test "should update pieza_fichatecnica" do
    patch :update, id: @pieza_fichatecnica, pieza_fichatecnica: { cantidad: @pieza_fichatecnica.cantidad, fichatecnica_id: @pieza_fichatecnica.fichatecnica_id, material_id: @pieza_fichatecnica.material_id, observaciones: @pieza_fichatecnica.observaciones }
    assert_redirected_to pieza_fichatecnica_path(assigns(:pieza_fichatecnica))
  end

  test "should destroy pieza_fichatecnica" do
    assert_difference('PiezaFichatecnica.count', -1) do
      delete :destroy, id: @pieza_fichatecnica
    end

    assert_redirected_to pieza_fichatecnicas_path
  end
end
