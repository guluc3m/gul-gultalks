require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test 'should be redirected on index' do
    get rails_admin_url
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end
