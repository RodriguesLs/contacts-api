require 'test_helper'

class KindPhonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kind_phone = kind_phones(:one)
  end

  test "should get index" do
    get kind_phones_url, as: :json
    assert_response :success
  end

  test "should create kind_phone" do
    assert_difference('KindPhone.count') do
      post kind_phones_url, params: { kind_phone: { kind: @kind_phone.kind } }, as: :json
    end

    assert_response 201
  end

  test "should show kind_phone" do
    get kind_phone_url(@kind_phone), as: :json
    assert_response :success
  end

  test "should update kind_phone" do
    patch kind_phone_url(@kind_phone), params: { kind_phone: { kind: @kind_phone.kind } }, as: :json
    assert_response 200
  end

  test "should destroy kind_phone" do
    assert_difference('KindPhone.count', -1) do
      delete kind_phone_url(@kind_phone), as: :json
    end

    assert_response 204
  end
end
