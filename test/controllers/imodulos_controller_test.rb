require 'test_helper'

class ImodulosControllerTest < ActionController::TestCase
  setup do
    @imodulo = imodulos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imodulos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imodulo" do
    assert_difference('Imodulo.count') do
      post :create, imodulo: { modulo_id: @imodulo.modulo_id, tinstructor_id: @imodulo.tinstructor_id }
    end

    assert_redirected_to imodulo_path(assigns(:imodulo))
  end

  test "should show imodulo" do
    get :show, id: @imodulo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imodulo
    assert_response :success
  end

  test "should update imodulo" do
    patch :update, id: @imodulo, imodulo: { modulo_id: @imodulo.modulo_id, tinstructor_id: @imodulo.tinstructor_id }
    assert_redirected_to imodulo_path(assigns(:imodulo))
  end

  test "should destroy imodulo" do
    assert_difference('Imodulo.count', -1) do
      delete :destroy, id: @imodulo
    end

    assert_redirected_to imodulos_path
  end
end
