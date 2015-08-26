require 'test_helper'

class MmaquinasControllerTest < ActionController::TestCase
  setup do
    @mmaquina = mmaquinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mmaquinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mmaquina" do
    assert_difference('Mmaquina.count') do
      post :create, mmaquina: { maquina_id: @mmaquina.maquina_id, pmodulo_id: @mmaquina.pmodulo_id }
    end

    assert_redirected_to mmaquina_path(assigns(:mmaquina))
  end

  test "should show mmaquina" do
    get :show, id: @mmaquina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mmaquina
    assert_response :success
  end

  test "should update mmaquina" do
    patch :update, id: @mmaquina, mmaquina: { maquina_id: @mmaquina.maquina_id, pmodulo_id: @mmaquina.pmodulo_id }
    assert_redirected_to mmaquina_path(assigns(:mmaquina))
  end

  test "should destroy mmaquina" do
    assert_difference('Mmaquina.count', -1) do
      delete :destroy, id: @mmaquina
    end

    assert_redirected_to mmaquinas_path
  end
end
