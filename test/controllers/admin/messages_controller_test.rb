require "test_helper"

class Admin::MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_messages_new_url
    assert_response :success
  end
end
