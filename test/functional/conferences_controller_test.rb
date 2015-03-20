require 'test_helper'

class ConferencesControllerTest < ActionController::TestCase
  test "should get conferences" do
    get :index
    assert_response :success
  end

end
