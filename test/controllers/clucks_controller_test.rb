require "test_helper"

class ClucksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cluck = clucks(:one)
  end

  test "should get index" do
    get clucks_url
    assert_response :success
  end

  test "should get new" do
    get new_cluck_url
    assert_response :success
  end

  test "should create cluck" do
    assert_difference('Cluck.count') do
      post clucks_url, params: { cluck: { cluck: @cluck.cluck } }
    end

    assert_redirected_to cluck_url(Cluck.last)
  end

  test "should show cluck" do
    get cluck_url(@cluck)
    assert_response :success
  end

  test "should get edit" do
    get edit_cluck_url(@cluck)
    assert_response :success
  end

  test "should update cluck" do
    patch cluck_url(@cluck), params: { cluck: { cluck: @cluck.cluck } }
    assert_redirected_to cluck_url(@cluck)
  end

  test "should destroy cluck" do
    assert_difference('Cluck.count', -1) do
      delete cluck_url(@cluck)
    end

    assert_redirected_to clucks_url
  end
end
