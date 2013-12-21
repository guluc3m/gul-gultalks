require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get talks" do
    get :talks
    assert_response :success
  end

end
