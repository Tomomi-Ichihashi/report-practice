require 'test_helper'

class Users::ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_reports_index_url
    assert_response :success
  end

  test "should get new" do
    get users_reports_new_url
    assert_response :success
  end

  test "should get show" do
    get users_reports_show_url
    assert_response :success
  end

  test "should get edit" do
    get users_reports_edit_url
    assert_response :success
  end

end
