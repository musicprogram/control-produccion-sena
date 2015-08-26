require 'test_helper'

class IoperariosControllerTest < ActionController::TestCase
  setup do
    @ioperario = ioperarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ioperarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ioperario" do
    assert_difference('Ioperario.count') do
      post :create, ioperario: { operario_id: @ioperario.operario_id, tinstructor_id: @ioperario.tinstructor_id }
    end

    assert_redirected_to ioperario_path(assigns(:ioperario))
  end

  test "should show ioperario" do
    get :show, id: @ioperario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ioperario
    assert_response :success
  end

  test "should update ioperario" do
    patch :update, id: @ioperario, ioperario: { operario_id: @ioperario.operario_id, tinstructor_id: @ioperario.tinstructor_id }
    assert_redirected_to ioperario_path(assigns(:ioperario))
  end

  test "should destroy ioperario" do
    assert_difference('Ioperario.count', -1) do
      delete :destroy, id: @ioperario
    end

    assert_redirected_to ioperarios_path
  end
end
