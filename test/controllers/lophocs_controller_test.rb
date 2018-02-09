require 'test_helper'

class LophocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lophoc = lophocs(:one)
  end

  test "should get index" do
    get lophocs_url
    assert_response :success
  end

  test "should get new" do
    get new_lophoc_url
    assert_response :success
  end

  test "should create lophoc" do
    assert_difference('Lophoc.count') do
      post lophocs_url, params: { lophoc: { malop: @lophoc.malop, siso: @lophoc.siso, tengv: @lophoc.tengv, tenmh: @lophoc.tenmh } }
    end

    assert_redirected_to lophoc_url(Lophoc.last)
  end

  test "should show lophoc" do
    get lophoc_url(@lophoc)
    assert_response :success
  end

  test "should get edit" do
    get edit_lophoc_url(@lophoc)
    assert_response :success
  end

  test "should update lophoc" do
    patch lophoc_url(@lophoc), params: { lophoc: { malop: @lophoc.malop, siso: @lophoc.siso, tengv: @lophoc.tengv, tenmh: @lophoc.tenmh } }
    assert_redirected_to lophoc_url(@lophoc)
  end

  test "should destroy lophoc" do
    assert_difference('Lophoc.count', -1) do
      delete lophoc_url(@lophoc)
    end

    assert_redirected_to lophocs_url
  end
end
