require 'test_helper'

class EstadoprosControllerTest < ActionController::TestCase
  setup do
    @estadopro = estadopros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estadopros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estadopro" do
    assert_difference('Estadopro.count') do
      post :create, estadopro: { estado: @estadopro.estado }
    end

    assert_redirected_to estadopro_path(assigns(:estadopro))
  end

  test "should show estadopro" do
    get :show, id: @estadopro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estadopro
    assert_response :success
  end

  test "should update estadopro" do
    patch :update, id: @estadopro, estadopro: { estado: @estadopro.estado }
    assert_redirected_to estadopro_path(assigns(:estadopro))
  end

  test "should destroy estadopro" do
    assert_difference('Estadopro.count', -1) do
      delete :destroy, id: @estadopro
    end

    assert_redirected_to estadopros_path
  end
end
