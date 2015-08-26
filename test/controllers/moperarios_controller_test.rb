require 'test_helper'

class MoperariosControllerTest < ActionController::TestCase
  setup do
    @moperario = moperarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moperarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moperario" do
    assert_difference('Moperario.count') do
      post :create, moperario: { imodulo_id: @moperario.imodulo_id, operario_id: @moperario.operario_id }
    end

    assert_redirected_to moperario_path(assigns(:moperario))
  end

  test "should show moperario" do
    get :show, id: @moperario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moperario
    assert_response :success
  end

  test "should update moperario" do
    patch :update, id: @moperario, moperario: { imodulo_id: @moperario.imodulo_id, operario_id: @moperario.operario_id }
    assert_redirected_to moperario_path(assigns(:moperario))
  end

  test "should destroy moperario" do
    assert_difference('Moperario.count', -1) do
      delete :destroy, id: @moperario
    end

    assert_redirected_to moperarios_path
  end
end
