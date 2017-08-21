require 'test_helper'

class CourseResultControllerTest < ActionDispatch::IntegrationTest
  test "should get cources" do
    get course_result_cources_url
    assert_response :success
  end

  test "should get cources_history" do
    get course_result_cources_history_url
    assert_response :success
  end

end
