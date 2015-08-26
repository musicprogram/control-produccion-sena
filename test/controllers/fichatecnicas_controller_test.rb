require 'test_helper'

class FichatecnicasControllerTest < ActionController::TestCase
  setup do
    @fichatecnica = fichatecnicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fichatecnicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fichatecnica" do
    assert_difference('Fichatecnica.count') do
      post :create, fichatecnica: { color_id: @fichatecnica.color_id, descripcion: @fichatecnica.descripcion, especificacion_id: @fichatecnica.especificacion_id, estandar_id: @fichatecnica.estandar_id, modulo_id: @fichatecnica.modulo_id, pieza_id: @fichatecnica.pieza_id, procesoext_id: @fichatecnica.procesoext_id, reference_id: @fichatecnica.reference_id, talla_id: @fichatecnica.talla_id, tallapromedio: @fichatecnica.tallapromedio, tela_id: @fichatecnica.tela_id }
    end

    assert_redirected_to fichatecnica_path(assigns(:fichatecnica))
  end

  test "should show fichatecnica" do
    get :show, id: @fichatecnica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fichatecnica
    assert_response :success
  end

  test "should update fichatecnica" do
    patch :update, id: @fichatecnica, fichatecnica: { color_id: @fichatecnica.color_id, descripcion: @fichatecnica.descripcion, especificacion_id: @fichatecnica.especificacion_id, estandar_id: @fichatecnica.estandar_id, modulo_id: @fichatecnica.modulo_id, pieza_id: @fichatecnica.pieza_id, procesoext_id: @fichatecnica.procesoext_id, reference_id: @fichatecnica.reference_id, talla_id: @fichatecnica.talla_id, tallapromedio: @fichatecnica.tallapromedio, tela_id: @fichatecnica.tela_id }
    assert_redirected_to fichatecnica_path(assigns(:fichatecnica))
  end

  test "should destroy fichatecnica" do
    assert_difference('Fichatecnica.count', -1) do
      delete :destroy, id: @fichatecnica
    end

    assert_redirected_to fichatecnicas_path
  end
end
