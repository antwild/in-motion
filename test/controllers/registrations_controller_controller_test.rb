require 'test_helper'

class RegistrationsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get registrations_controller_create_url
    assert_response :success
  end

end
