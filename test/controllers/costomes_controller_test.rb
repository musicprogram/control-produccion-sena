require 'test_helper'

class CostomesControllerTest < ActionController::TestCase
  setup do
    @costome = costomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:costomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create costome" do
    assert_difference('Costome.count') do
      post :create, costome: { cajacompensaciontotal: @costome.cajacompensaciontotal, icbf: @costome.icbf, pension: @costome.pension, porcenjatesalud: @costome.porcenjatesalud, porcentajecajacompensacion: @costome.porcentajecajacompensacion, porcentajeicbf: @costome.porcentajeicbf, porcentajepension: @costome.porcentajepension, porcentajerprofesional: @costome.porcentajerprofesional, porcentajesena: @costome.porcentajesena, porcentajetotal_costom: @costome.porcentajetotal_costom, porcentajetotalneto: @costome.porcentajetotalneto, rprofesional: @costome.rprofesional, salud: @costome.salud, sena: @costome.sena, sueldo_id: @costome.sueldo_id, total_costom: @costome.total_costom, totalneto: @costome.totalneto }
    end

    assert_redirected_to costome_path(assigns(:costome))
  end

  test "should show costome" do
    get :show, id: @costome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @costome
    assert_response :success
  end

  test "should update costome" do
    patch :update, id: @costome, costome: { cajacompensaciontotal: @costome.cajacompensaciontotal, icbf: @costome.icbf, pension: @costome.pension, porcenjatesalud: @costome.porcenjatesalud, porcentajecajacompensacion: @costome.porcentajecajacompensacion, porcentajeicbf: @costome.porcentajeicbf, porcentajepension: @costome.porcentajepension, porcentajerprofesional: @costome.porcentajerprofesional, porcentajesena: @costome.porcentajesena, porcentajetotal_costom: @costome.porcentajetotal_costom, porcentajetotalneto: @costome.porcentajetotalneto, rprofesional: @costome.rprofesional, salud: @costome.salud, sena: @costome.sena, sueldo_id: @costome.sueldo_id, total_costom: @costome.total_costom, totalneto: @costome.totalneto }
    assert_redirected_to costome_path(assigns(:costome))
  end

  test "should destroy costome" do
    assert_difference('Costome.count', -1) do
      delete :destroy, id: @costome
    end

    assert_redirected_to costomes_path
  end
end
