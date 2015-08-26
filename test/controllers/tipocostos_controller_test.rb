require 'test_helper'

class TipocostosControllerTest < ActionController::TestCase
  setup do
    @tipocosto = tipocostos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipocostos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipocosto" do
    assert_difference('Tipocosto.count') do
      post :create, tipocosto: { descripcion: @tipocosto.descripcion, nombre: @tipocosto.nombre }
    end

    assert_redirected_to tipocosto_path(assigns(:tipocosto))
  end

  test "should show tipocosto" do
    get :show, id: @tipocosto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipocosto
    assert_response :success
  end

  test "should update tipocosto" do
    patch :update, id: @tipocosto, tipocosto: { descripcion: @tipocosto.descripcion, nombre: @tipocosto.nombre }
    assert_redirected_to tipocosto_path(assigns(:tipocosto))
  end

  test "should destroy tipocosto" do
    assert_difference('Tipocosto.count', -1) do
      delete :destroy, id: @tipocosto
    end

    assert_redirected_to tipocostos_path
  end
end
