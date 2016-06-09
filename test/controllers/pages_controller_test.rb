require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get search_results" do
    get pages_search_results_url
    assert_response :success
  end

  test "should get filter_buttons" do
    get pages_filter_buttons_url
    assert_response :success
  end

  test "should get filter_form" do
    get pages_filter_form_url
    assert_response :success
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
  end

end
