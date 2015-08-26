require 'test_helper'

class PturnosControllerTest < ActionController::TestCase
  setup do
    @pturno = pturnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pturnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pturno" do
    assert_difference('Pturno.count') do
      post :create, pturno: { proyecto_id: @pturno.proyecto_id, turno_id: @pturno.turno_id }
    end

    assert_redirected_to pturno_path(assigns(:pturno))
  end

  test "should show pturno" do
    get :show, id: @pturno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pturno
    assert_response :success
  end

  test "should update pturno" do
    patch :update, id: @pturno, pturno: { proyecto_id: @pturno.proyecto_id, turno_id: @pturno.turno_id }
    assert_redirected_to pturno_path(assigns(:pturno))
  end

  test "should destroy pturno" do
    assert_difference('Pturno.count', -1) do
      delete :destroy, id: @pturno
    end

    assert_redirected_to pturnos_path
  end
end
