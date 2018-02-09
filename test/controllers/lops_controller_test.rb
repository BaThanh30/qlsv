require 'test_helper'

class LopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lop = lops(:one)
  end

  test "should get index" do
    get lops_url
    assert_response :success
  end

  test "should get new" do
    get new_lop_url
    assert_response :success
  end

  test "should create lop" do
    assert_difference('Lop.count') do
      post lops_url, params: { lop: { malop: @lop.malop, siso: @lop.siso, tengv: @lop.tengv, tenmh: @lop.tenmh } }
    end

    assert_redirected_to lop_url(Lop.last)
  end

  test "should show lop" do
    get lop_url(@lop)
    assert_response :success
  end

  test "should get edit" do
    get edit_lop_url(@lop)
    assert_response :success
  end

  test "should update lop" do
    patch lop_url(@lop), params: { lop: { malop: @lop.malop, siso: @lop.siso, tengv: @lop.tengv, tenmh: @lop.tenmh } }
    assert_redirected_to lop_url(@lop)
  end

  test "should destroy lop" do
    assert_difference('Lop.count', -1) do
      delete lop_url(@lop)
    end

    assert_redirected_to lops_url
  end
end
