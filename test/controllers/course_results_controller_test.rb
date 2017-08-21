require 'test_helper'

class CourseResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get cources" do
    get course_results_cources_url
    assert_response :success
  end

  test "should get cources_history" do
    get course_results_cources_history_url
    assert_response :success
  end

end
