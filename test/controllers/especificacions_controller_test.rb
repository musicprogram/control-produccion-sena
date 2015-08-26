require 'test_helper'

class EspecificacionsControllerTest < ActionController::TestCase
  setup do
    @especificacion = especificacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:especificacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create especificacion" do
    assert_difference('Especificacion.count') do
      post :create, especificacion: { descripcion: @especificacion.descripcion }
    end

    assert_redirected_to especificacion_path(assigns(:especificacion))
  end

  test "should show especificacion" do
    get :show, id: @especificacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @especificacion
    assert_response :success
  end

  test "should update especificacion" do
    patch :update, id: @especificacion, especificacion: { descripcion: @especificacion.descripcion }
    assert_redirected_to especificacion_path(assigns(:especificacion))
  end

  test "should destroy especificacion" do
    assert_difference('Especificacion.count', -1) do
      delete :destroy, id: @especificacion
    end

    assert_redirected_to especificacions_path
  end
end
