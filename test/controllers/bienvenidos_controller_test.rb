require 'test_helper'

class BienvenidosControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
