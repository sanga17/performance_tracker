require 'test_helper'

class Admin::PerformanceParametersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_performance_parameters_new_url
    assert_response :success
  end

end
