require 'test_helper'

class SinhviensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sinhvien = sinhviens(:one)
  end

  test "should get index" do
    get sinhviens_url
    assert_response :success
  end

  test "should get new" do
    get new_sinhvien_url
    assert_response :success
  end

  test "should create sinhvien" do
    assert_difference('Sinhvien.count') do
      post sinhviens_url, params: { sinhvien: { diachi: @sinhvien.diachi, hinh: @sinhvien.hinh, hoten: @sinhvien.hoten, namsinh: @sinhvien.namsinh } }
    end

    assert_redirected_to sinhvien_url(Sinhvien.last)
  end

  test "should show sinhvien" do
    get sinhvien_url(@sinhvien)
    assert_response :success
  end

  test "should get edit" do
    get edit_sinhvien_url(@sinhvien)
    assert_response :success
  end

  test "should update sinhvien" do
    patch sinhvien_url(@sinhvien), params: { sinhvien: { diachi: @sinhvien.diachi, hinh: @sinhvien.hinh, hoten: @sinhvien.hoten, namsinh: @sinhvien.namsinh } }
    assert_redirected_to sinhvien_url(@sinhvien)
  end

  test "should destroy sinhvien" do
    assert_difference('Sinhvien.count', -1) do
      delete sinhvien_url(@sinhvien)
    end

    assert_redirected_to sinhviens_url
  end
end
