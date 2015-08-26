require 'test_helper'

class CateayudasControllerTest < ActionController::TestCase
  setup do
    @cateayuda = cateayudas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cateayudas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cateayuda" do
    assert_difference('Cateayuda.count') do
      post :create, cateayuda: { nombre: @cateayuda.nombre }
    end

    assert_redirected_to cateayuda_path(assigns(:cateayuda))
  end

  test "should show cateayuda" do
    get :show, id: @cateayuda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cateayuda
    assert_response :success
  end

  test "should update cateayuda" do
    patch :update, id: @cateayuda, cateayuda: { nombre: @cateayuda.nombre }
    assert_redirected_to cateayuda_path(assigns(:cateayuda))
  end

  test "should destroy cateayuda" do
    assert_difference('Cateayuda.count', -1) do
      delete :destroy, id: @cateayuda
    end

    assert_redirected_to cateayudas_path
  end
end
