require 'test_helper'

class ConferencesControllerTest < ActionController::TestCase
  test "should get conferences" do
    get :index
    assert_response :success
  end

  test "should get conference by ID" do
    conference = conferences(:one)
    get(:show, { 'id' => conference.id})
    assert_response :success
  end
end
