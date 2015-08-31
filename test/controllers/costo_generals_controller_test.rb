require 'test_helper'

class CostoGeneralsControllerTest < ActionController::TestCase
  setup do
    @costo_general = costo_generals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:costo_generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create costo_general" do
    assert_difference('CostoGeneral.count') do
      post :create, costo_general: { cajacompensaciontotal: @costo_general.cajacompensaciontotal, cesantias: @costo_general.cesantias, cesantias_porcentaje: @costo_general.cesantias_porcentaje, costo_dia: @costo_general.costo_dia, costo_hora: @costo_general.costo_hora, costo_minuto: @costo_general.costo_minuto, dias_año: @costo_general.dias_año, dlaborales_mes: @costo_general.dlaborales_mes, domingos: @costo_general.domingos, festivos: @costo_general.festivos, hlaborales: @costo_general.hlaborales, icbf: @costo_general.icbf, intereses_cesantias: @costo_general.intereses_cesantias, pension: @costo_general.pension, porcenjatesalud: @costo_general.porcenjatesalud, porcentajecajacompensacion: @costo_general.porcentajecajacompensacion, porcentajeicbf: @costo_general.porcentajeicbf, porcentajepension: @costo_general.porcentajepension, porcentajerprofesional: @costo_general.porcentajerprofesional, porcentajesena: @costo_general.porcentajesena, porcentajetotal_costom: @costo_general.porcentajetotal_costom, porcentajetotalneto: @costo_general.porcentajetotalneto, prima: @costo_general.prima, prima_procentaje: @costo_general.prima_procentaje, recargo_adicional: @costo_general.recargo_adicional, rprofesional: @costo_general.rprofesional, salario: @costo_general.salario, salario_porcentaje: @costo_general.salario_porcentaje, salud: @costo_general.salud, sena: @costo_general.sena, subsidio: @costo_general.subsidio, subsidio_procentaje: @costo_general.subsidio_procentaje, total_costom: @costo_general.total_costom, total_dias: @costo_general.total_dias, total_minuto: @costo_general.total_minuto, total_porcentaje: @costo_general.total_porcentaje, total_porcentaje: @costo_general.total_porcentaje, total_prestacion: @costo_general.total_prestacion, total_sueldo: @costo_general.total_sueldo, totalneto: @costo_general.totalneto, vacaciones: @costo_general.vacaciones, vacaciones: @costo_general.vacaciones, vacaciones_porcentaje: @costo_general.vacaciones_porcentaje }
    end

    assert_redirected_to costo_general_path(assigns(:costo_general))
  end

  test "should show costo_general" do
    get :show, id: @costo_general
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @costo_general
    assert_response :success
  end

  test "should update costo_general" do
    patch :update, id: @costo_general, costo_general: { cajacompensaciontotal: @costo_general.cajacompensaciontotal, cesantias: @costo_general.cesantias, cesantias_porcentaje: @costo_general.cesantias_porcentaje, costo_dia: @costo_general.costo_dia, costo_hora: @costo_general.costo_hora, costo_minuto: @costo_general.costo_minuto, dias_año: @costo_general.dias_año, dlaborales_mes: @costo_general.dlaborales_mes, domingos: @costo_general.domingos, festivos: @costo_general.festivos, hlaborales: @costo_general.hlaborales, icbf: @costo_general.icbf, intereses_cesantias: @costo_general.intereses_cesantias, pension: @costo_general.pension, porcenjatesalud: @costo_general.porcenjatesalud, porcentajecajacompensacion: @costo_general.porcentajecajacompensacion, porcentajeicbf: @costo_general.porcentajeicbf, porcentajepension: @costo_general.porcentajepension, porcentajerprofesional: @costo_general.porcentajerprofesional, porcentajesena: @costo_general.porcentajesena, porcentajetotal_costom: @costo_general.porcentajetotal_costom, porcentajetotalneto: @costo_general.porcentajetotalneto, prima: @costo_general.prima, prima_procentaje: @costo_general.prima_procentaje, recargo_adicional: @costo_general.recargo_adicional, rprofesional: @costo_general.rprofesional, salario: @costo_general.salario, salario_porcentaje: @costo_general.salario_porcentaje, salud: @costo_general.salud, sena: @costo_general.sena, subsidio: @costo_general.subsidio, subsidio_procentaje: @costo_general.subsidio_procentaje, total_costom: @costo_general.total_costom, total_dias: @costo_general.total_dias, total_minuto: @costo_general.total_minuto, total_porcentaje: @costo_general.total_porcentaje, total_porcentaje: @costo_general.total_porcentaje, total_prestacion: @costo_general.total_prestacion, total_sueldo: @costo_general.total_sueldo, totalneto: @costo_general.totalneto, vacaciones: @costo_general.vacaciones, vacaciones: @costo_general.vacaciones, vacaciones_porcentaje: @costo_general.vacaciones_porcentaje }
    assert_redirected_to costo_general_path(assigns(:costo_general))
  end

  test "should destroy costo_general" do
    assert_difference('CostoGeneral.count', -1) do
      delete :destroy, id: @costo_general
    end

    assert_redirected_to costo_generals_path
  end
end
