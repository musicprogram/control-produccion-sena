require 'test_helper'

class PmodulosControllerTest < ActionController::TestCase
  setup do
    @pmodulo = pmodulos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pmodulos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pmodulo" do
    assert_difference('Pmodulo.count') do
      post :create, pmodulo: { modulo_id: @pmodulo.modulo_id, proyecto_id: @pmodulo.proyecto_id }
    end

    assert_redirected_to pmodulo_path(assigns(:pmodulo))
  end

  test "should show pmodulo" do
    get :show, id: @pmodulo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pmodulo
    assert_response :success
  end

  test "should update pmodulo" do
    patch :update, id: @pmodulo, pmodulo: { modulo_id: @pmodulo.modulo_id, proyecto_id: @pmodulo.proyecto_id }
    assert_redirected_to pmodulo_path(assigns(:pmodulo))
  end

  test "should destroy pmodulo" do
    assert_difference('Pmodulo.count', -1) do
      delete :destroy, id: @pmodulo
    end

    assert_redirected_to pmodulos_path
  end
end
