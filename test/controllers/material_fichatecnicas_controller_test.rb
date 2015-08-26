require 'test_helper'

class MaterialFichatecnicasControllerTest < ActionController::TestCase
  setup do
    @material_fichatecnica = material_fichatecnicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:material_fichatecnicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material_fichatecnica" do
    assert_difference('MaterialFichatecnica.count') do
      post :create, material_fichatecnica: { cantidad: @material_fichatecnica.cantidad, fichatecnica_id: @material_fichatecnica.fichatecnica_id, material_id: @material_fichatecnica.material_id, observaciones: @material_fichatecnica.observaciones }
    end

    assert_redirected_to material_fichatecnica_path(assigns(:material_fichatecnica))
  end

  test "should show material_fichatecnica" do
    get :show, id: @material_fichatecnica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material_fichatecnica
    assert_response :success
  end

  test "should update material_fichatecnica" do
    patch :update, id: @material_fichatecnica, material_fichatecnica: { cantidad: @material_fichatecnica.cantidad, fichatecnica_id: @material_fichatecnica.fichatecnica_id, material_id: @material_fichatecnica.material_id, observaciones: @material_fichatecnica.observaciones }
    assert_redirected_to material_fichatecnica_path(assigns(:material_fichatecnica))
  end

  test "should destroy material_fichatecnica" do
    assert_difference('MaterialFichatecnica.count', -1) do
      delete :destroy, id: @material_fichatecnica
    end

    assert_redirected_to material_fichatecnicas_path
  end
end
