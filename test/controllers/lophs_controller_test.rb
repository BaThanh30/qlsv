require 'test_helper'

class LophsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loph = lophs(:one)
  end

  test "should get index" do
    get lophs_url
    assert_response :success
  end

  test "should get new" do
    get new_loph_url
    assert_response :success
  end

  test "should create loph" do
    assert_difference('Loph.count') do
      post lophs_url, params: { loph: { malop: @loph.malop, siso: @loph.siso, tengv: @loph.tengv, tenmh: @loph.tenmh } }
    end

    assert_redirected_to loph_url(Loph.last)
  end

  test "should show loph" do
    get loph_url(@loph)
    assert_response :success
  end

  test "should get edit" do
    get edit_loph_url(@loph)
    assert_response :success
  end

  test "should update loph" do
    patch loph_url(@loph), params: { loph: { malop: @loph.malop, siso: @loph.siso, tengv: @loph.tengv, tenmh: @loph.tenmh } }
    assert_redirected_to loph_url(@loph)
  end

  test "should destroy loph" do
    assert_difference('Loph.count', -1) do
      delete loph_url(@loph)
    end

    assert_redirected_to lophs_url
  end
end
