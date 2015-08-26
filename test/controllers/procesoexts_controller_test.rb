require 'test_helper'

class ProcesoextsControllerTest < ActionController::TestCase
  setup do
    @procesoext = procesoexts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procesoexts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procesoext" do
    assert_difference('Procesoext.count') do
      post :create, procesoext: { nombre: @procesoext.nombre }
    end

    assert_redirected_to procesoext_path(assigns(:procesoext))
  end

  test "should show procesoext" do
    get :show, id: @procesoext
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procesoext
    assert_response :success
  end

  test "should update procesoext" do
    patch :update, id: @procesoext, procesoext: { nombre: @procesoext.nombre }
    assert_redirected_to procesoext_path(assigns(:procesoext))
  end

  test "should destroy procesoext" do
    assert_difference('Procesoext.count', -1) do
      delete :destroy, id: @procesoext
    end

    assert_redirected_to procesoexts_path
  end
end
