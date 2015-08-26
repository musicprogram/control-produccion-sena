require 'test_helper'

class MedidaTallasControllerTest < ActionController::TestCase
  setup do
    @medida_talla = medida_tallas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medida_tallas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medida_talla" do
    assert_difference('MedidaTalla.count') do
      post :create, medida_talla: { centimetros: @medida_talla.centimetros, fichatecnica_id: @medida_talla.fichatecnica_id, medida_id: @medida_talla.medida_id, talla_id: @medida_talla.talla_id, tolerancia: @medida_talla.tolerancia }
    end

    assert_redirected_to medida_talla_path(assigns(:medida_talla))
  end

  test "should show medida_talla" do
    get :show, id: @medida_talla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medida_talla
    assert_response :success
  end

  test "should update medida_talla" do
    patch :update, id: @medida_talla, medida_talla: { centimetros: @medida_talla.centimetros, fichatecnica_id: @medida_talla.fichatecnica_id, medida_id: @medida_talla.medida_id, talla_id: @medida_talla.talla_id, tolerancia: @medida_talla.tolerancia }
    assert_redirected_to medida_talla_path(assigns(:medida_talla))
  end

  test "should destroy medida_talla" do
    assert_difference('MedidaTalla.count', -1) do
      delete :destroy, id: @medida_talla
    end

    assert_redirected_to medida_tallas_path
  end
end
