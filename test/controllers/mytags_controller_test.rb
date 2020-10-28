require 'test_helper'

class MytagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mytag = mytags(:one)
  end

  test "should get index" do
    get mytags_url
    assert_response :success
  end

  test "should get new" do
    get new_mytag_url
    assert_response :success
  end

  test "should create mytag" do
    assert_difference('Mytag.count') do
      post mytags_url, params: { mytag: { category: @mytag.category } }
    end

    assert_redirected_to mytag_url(Mytag.last)
  end

  test "should show mytag" do
    get mytag_url(@mytag)
    assert_response :success
  end

  test "should get edit" do
    get edit_mytag_url(@mytag)
    assert_response :success
  end

  test "should update mytag" do
    patch mytag_url(@mytag), params: { mytag: { category: @mytag.category } }
    assert_redirected_to mytag_url(@mytag)
  end

  test "should destroy mytag" do
    assert_difference('Mytag.count', -1) do
      delete mytag_url(@mytag)
    end

    assert_redirected_to mytags_url
  end
end
