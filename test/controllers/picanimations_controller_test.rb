require "test_helper"

class PicanimationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picanimation = picanimations(:one)
  end

  test "should get index" do
    get picanimations_url
    assert_response :success
  end

  test "should get new" do
    get new_picanimation_url
    assert_response :success
  end

  test "should create picanimation" do
    assert_difference("Picanimation.count") do
      post picanimations_url, params: { picanimation: { color: @picanimation.color, percent: @picanimation.percent, pic_id: @picanimation.pic_id, rotate: @picanimation.rotate, translatex: @picanimation.translatex, translatey: @picanimation.translatey } }
    end

    assert_redirected_to picanimation_url(Picanimation.last)
  end

  test "should show picanimation" do
    get picanimation_url(@picanimation)
    assert_response :success
  end

  test "should get edit" do
    get edit_picanimation_url(@picanimation)
    assert_response :success
  end

  test "should update picanimation" do
    patch picanimation_url(@picanimation), params: { picanimation: { color: @picanimation.color, percent: @picanimation.percent, pic_id: @picanimation.pic_id, rotate: @picanimation.rotate, translatex: @picanimation.translatex, translatey: @picanimation.translatey } }
    assert_redirected_to picanimation_url(@picanimation)
  end

  test "should destroy picanimation" do
    assert_difference("Picanimation.count", -1) do
      delete picanimation_url(@picanimation)
    end

    assert_redirected_to picanimations_url
  end
end
