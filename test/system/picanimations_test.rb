require "application_system_test_case"

class PicanimationsTest < ApplicationSystemTestCase
  setup do
    @picanimation = picanimations(:one)
  end

  test "visiting the index" do
    visit picanimations_url
    assert_selector "h1", text: "Picanimations"
  end

  test "should create picanimation" do
    visit picanimations_url
    click_on "New picanimation"

    fill_in "Color", with: @picanimation.color
    fill_in "Percent", with: @picanimation.percent
    fill_in "Pic", with: @picanimation.pic_id
    fill_in "Rotate", with: @picanimation.rotate
    fill_in "Translatex", with: @picanimation.translatex
    fill_in "Translatey", with: @picanimation.translatey
    click_on "Create Picanimation"

    assert_text "Picanimation was successfully created"
    click_on "Back"
  end

  test "should update Picanimation" do
    visit picanimation_url(@picanimation)
    click_on "Edit this picanimation", match: :first

    fill_in "Color", with: @picanimation.color
    fill_in "Percent", with: @picanimation.percent
    fill_in "Pic", with: @picanimation.pic_id
    fill_in "Rotate", with: @picanimation.rotate
    fill_in "Translatex", with: @picanimation.translatex
    fill_in "Translatey", with: @picanimation.translatey
    click_on "Update Picanimation"

    assert_text "Picanimation was successfully updated"
    click_on "Back"
  end

  test "should destroy Picanimation" do
    visit picanimation_url(@picanimation)
    click_on "Destroy this picanimation", match: :first

    assert_text "Picanimation was successfully destroyed"
  end
end
