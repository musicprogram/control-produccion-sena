require 'test_helper'

class EstadomsControllerTest < ActionController::TestCase
  setup do
    @estadom = estadoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estadoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estadom" do
    assert_difference('Estadom.count') do
      post :create, estadom: { descripcion: @estadom.descripcion, titulo: @estadom.titulo }
    end

    assert_redirected_to estadom_path(assigns(:estadom))
  end

  test "should show estadom" do
    get :show, id: @estadom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estadom
    assert_response :success
  end

  test "should update estadom" do
    patch :update, id: @estadom, estadom: { descripcion: @estadom.descripcion, titulo: @estadom.titulo }
    assert_redirected_to estadom_path(assigns(:estadom))
  end

  test "should destroy estadom" do
    assert_difference('Estadom.count', -1) do
      delete :destroy, id: @estadom
    end

    assert_redirected_to estadoms_path
  end
end
