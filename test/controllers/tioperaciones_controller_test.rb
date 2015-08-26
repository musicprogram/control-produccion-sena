require 'test_helper'

class TioperacionesControllerTest < ActionController::TestCase
  setup do
    @tioperacion = tioperaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tioperaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tioperacion" do
    assert_difference('Tioperacion.count') do
      post :create, tioperacion: { nombre: @tioperacion.nombre }
    end

    assert_redirected_to tioperacion_path(assigns(:tioperacion))
  end

  test "should show tioperacion" do
    get :show, id: @tioperacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tioperacion
    assert_response :success
  end

  test "should update tioperacion" do
    patch :update, id: @tioperacion, tioperacion: { nombre: @tioperacion.nombre }
    assert_redirected_to tioperacion_path(assigns(:tioperacion))
  end

  test "should destroy tioperacion" do
    assert_difference('Tioperacion.count', -1) do
      delete :destroy, id: @tioperacion
    end

    assert_redirected_to tioperaciones_path
  end
end
