require 'test_helper'

class MoperacionesControllerTest < ActionController::TestCase
  setup do
    @moperacion = moperaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moperaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moperacion" do
    assert_difference('Moperacion.count') do
      post :create, moperacion: { omaquina_id: @moperacion.omaquina_id, operacion_id: @moperacion.operacion_id }
    end

    assert_redirected_to moperacion_path(assigns(:moperacion))
  end

  test "should show moperacion" do
    get :show, id: @moperacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moperacion
    assert_response :success
  end

  test "should update moperacion" do
    patch :update, id: @moperacion, moperacion: { omaquina_id: @moperacion.omaquina_id, operacion_id: @moperacion.operacion_id }
    assert_redirected_to moperacion_path(assigns(:moperacion))
  end

  test "should destroy moperacion" do
    assert_difference('Moperacion.count', -1) do
      delete :destroy, id: @moperacion
    end

    assert_redirected_to moperaciones_path
  end
end
