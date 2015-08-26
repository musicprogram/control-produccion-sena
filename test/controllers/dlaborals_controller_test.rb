require 'test_helper'

class DlaboralsControllerTest < ActionController::TestCase
  setup do
    @dlaboral = dlaborals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dlaborals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dlaboral" do
    assert_difference('Dlaboral.count') do
      post :create, dlaboral: { dias_año: @dlaboral.dias_año, domingos: @dlaboral.domingos, festivos: @dlaboral.festivos, total_dias: @dlaboral.total_dias, vacaciones: @dlaboral.vacaciones }
    end

    assert_redirected_to dlaboral_path(assigns(:dlaboral))
  end

  test "should show dlaboral" do
    get :show, id: @dlaboral
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dlaboral
    assert_response :success
  end

  test "should update dlaboral" do
    patch :update, id: @dlaboral, dlaboral: { dias_año: @dlaboral.dias_año, domingos: @dlaboral.domingos, festivos: @dlaboral.festivos, total_dias: @dlaboral.total_dias, vacaciones: @dlaboral.vacaciones }
    assert_redirected_to dlaboral_path(assigns(:dlaboral))
  end

  test "should destroy dlaboral" do
    assert_difference('Dlaboral.count', -1) do
      delete :destroy, id: @dlaboral
    end

    assert_redirected_to dlaborals_path
  end
end
