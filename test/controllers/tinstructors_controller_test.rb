require 'test_helper'

class TinstructorsControllerTest < ActionController::TestCase
  setup do
    @tinstructor = tinstructors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tinstructors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tinstructor" do
    assert_difference('Tinstructor.count') do
      post :create, tinstructor: { instructor_id: @tinstructor.instructor_id, pturno_id: @tinstructor.pturno_id }
    end

    assert_redirected_to tinstructor_path(assigns(:tinstructor))
  end

  test "should show tinstructor" do
    get :show, id: @tinstructor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tinstructor
    assert_response :success
  end

  test "should update tinstructor" do
    patch :update, id: @tinstructor, tinstructor: { instructor_id: @tinstructor.instructor_id, pturno_id: @tinstructor.pturno_id }
    assert_redirected_to tinstructor_path(assigns(:tinstructor))
  end

  test "should destroy tinstructor" do
    assert_difference('Tinstructor.count', -1) do
      delete :destroy, id: @tinstructor
    end

    assert_redirected_to tinstructors_path
  end
end
