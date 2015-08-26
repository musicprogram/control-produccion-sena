require 'test_helper'

class ProveedorProcesoextsControllerTest < ActionController::TestCase
  setup do
    @proveedor_procesoext = proveedor_procesoexts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proveedor_procesoexts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proveedor_procesoext" do
    assert_difference('ProveedorProcesoext.count') do
      post :create, proveedor_procesoext: { descripcion: @proveedor_procesoext.descripcion, observaciones: @proveedor_procesoext.observaciones, precio: @proveedor_procesoext.precio, procesoext_id: @proveedor_procesoext.procesoext_id, proveedor_id: @proveedor_procesoext.proveedor_id }
    end

    assert_redirected_to proveedor_procesoext_path(assigns(:proveedor_procesoext))
  end

  test "should show proveedor_procesoext" do
    get :show, id: @proveedor_procesoext
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proveedor_procesoext
    assert_response :success
  end

  test "should update proveedor_procesoext" do
    patch :update, id: @proveedor_procesoext, proveedor_procesoext: { descripcion: @proveedor_procesoext.descripcion, observaciones: @proveedor_procesoext.observaciones, precio: @proveedor_procesoext.precio, procesoext_id: @proveedor_procesoext.procesoext_id, proveedor_id: @proveedor_procesoext.proveedor_id }
    assert_redirected_to proveedor_procesoext_path(assigns(:proveedor_procesoext))
  end

  test "should destroy proveedor_procesoext" do
    assert_difference('ProveedorProcesoext.count', -1) do
      delete :destroy, id: @proveedor_procesoext
    end

    assert_redirected_to proveedor_procesoexts_path
  end
end
