require 'test_helper'

class DeptControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dept_index_url
    assert_response :success
  end

  test "should get show" do
    get dept_show_url
    assert_response :success
  end

  test "should get new" do
    get dept_new_url
    assert_response :success
  end

  test "should get edit" do
    get dept_edit_url
    assert_response :success
  end

end
