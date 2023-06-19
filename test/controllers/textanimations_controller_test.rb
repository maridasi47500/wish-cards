require "test_helper"

class TextanimationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @textanimation = textanimations(:one)
  end

  test "should get index" do
    get textanimations_url
    assert_response :success
  end

  test "should get new" do
    get new_textanimation_url
    assert_response :success
  end

  test "should create textanimation" do
    assert_difference("Textanimation.count") do
      post textanimations_url, params: { textanimation: { color: @textanimation.color, percent: @textanimation.percent, pic_id: @textanimation.pic_id, rotate: @textanimation.rotate, translatex: @textanimation.translatex, translatey: @textanimation.translatey } }
    end

    assert_redirected_to textanimation_url(Textanimation.last)
  end

  test "should show textanimation" do
    get textanimation_url(@textanimation)
    assert_response :success
  end

  test "should get edit" do
    get edit_textanimation_url(@textanimation)
    assert_response :success
  end

  test "should update textanimation" do
    patch textanimation_url(@textanimation), params: { textanimation: { color: @textanimation.color, percent: @textanimation.percent, pic_id: @textanimation.pic_id, rotate: @textanimation.rotate, translatex: @textanimation.translatex, translatey: @textanimation.translatey } }
    assert_redirected_to textanimation_url(@textanimation)
  end

  test "should destroy textanimation" do
    assert_difference("Textanimation.count", -1) do
      delete textanimation_url(@textanimation)
    end

    assert_redirected_to textanimations_url
  end
end
