require 'test_helper'

class TipmoneysControllerTest < ActionController::TestCase
  setup do
    @tipmoney = tipmoneys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipmoneys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipmoney" do
    assert_difference('Tipmoney.count') do
      post :create, tipmoney: { descripcion: @tipmoney.descripcion, siglas: @tipmoney.siglas }
    end

    assert_redirected_to tipmoney_path(assigns(:tipmoney))
  end

  test "should show tipmoney" do
    get :show, id: @tipmoney
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipmoney
    assert_response :success
  end

  test "should update tipmoney" do
    patch :update, id: @tipmoney, tipmoney: { descripcion: @tipmoney.descripcion, siglas: @tipmoney.siglas }
    assert_redirected_to tipmoney_path(assigns(:tipmoney))
  end

  test "should destroy tipmoney" do
    assert_difference('Tipmoney.count', -1) do
      delete :destroy, id: @tipmoney
    end

    assert_redirected_to tipmoneys_path
  end
end
