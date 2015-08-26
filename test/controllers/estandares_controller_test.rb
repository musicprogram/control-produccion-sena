require 'test_helper'

class EstandaresControllerTest < ActionController::TestCase
  setup do
    @estandar = estandares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estandares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estandar" do
    assert_difference('Estandar.count') do
      post :create, estandar: { ayuda_id: @estandar.ayuda_id, descripcion: @estandar.descripcion }
    end

    assert_redirected_to estandar_path(assigns(:estandar))
  end

  test "should show estandar" do
    get :show, id: @estandar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estandar
    assert_response :success
  end

  test "should update estandar" do
    patch :update, id: @estandar, estandar: { ayuda_id: @estandar.ayuda_id, descripcion: @estandar.descripcion }
    assert_redirected_to estandar_path(assigns(:estandar))
  end

  test "should destroy estandar" do
    assert_difference('Estandar.count', -1) do
      delete :destroy, id: @estandar
    end

    assert_redirected_to estandares_path
  end
end
