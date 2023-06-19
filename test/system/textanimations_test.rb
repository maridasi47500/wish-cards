require "application_system_test_case"

class TextanimationsTest < ApplicationSystemTestCase
  setup do
    @textanimation = textanimations(:one)
  end

  test "visiting the index" do
    visit textanimations_url
    assert_selector "h1", text: "Textanimations"
  end

  test "should create textanimation" do
    visit textanimations_url
    click_on "New textanimation"

    fill_in "Color", with: @textanimation.color
    fill_in "Percent", with: @textanimation.percent
    fill_in "Pic", with: @textanimation.pic_id
    fill_in "Rotate", with: @textanimation.rotate
    fill_in "Translatex", with: @textanimation.translatex
    fill_in "Translatey", with: @textanimation.translatey
    click_on "Create Textanimation"

    assert_text "Textanimation was successfully created"
    click_on "Back"
  end

  test "should update Textanimation" do
    visit textanimation_url(@textanimation)
    click_on "Edit this textanimation", match: :first

    fill_in "Color", with: @textanimation.color
    fill_in "Percent", with: @textanimation.percent
    fill_in "Pic", with: @textanimation.pic_id
    fill_in "Rotate", with: @textanimation.rotate
    fill_in "Translatex", with: @textanimation.translatex
    fill_in "Translatey", with: @textanimation.translatey
    click_on "Update Textanimation"

    assert_text "Textanimation was successfully updated"
    click_on "Back"
  end

  test "should destroy Textanimation" do
    visit textanimation_url(@textanimation)
    click_on "Destroy this textanimation", match: :first

    assert_text "Textanimation was successfully destroyed"
  end
end
