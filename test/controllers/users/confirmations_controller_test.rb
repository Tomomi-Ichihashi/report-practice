require 'test_helper'

class Users::ConfirmationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get users_confirmations_create_url
    assert_response :success
  end

  test "should get destroy" do
    get users_confirmations_destroy_url
    assert_response :success
  end

end
