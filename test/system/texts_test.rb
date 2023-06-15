require "application_system_test_case"

class TextsTest < ApplicationSystemTestCase
  setup do
    @text = texts(:one)
  end

  test "visiting the index" do
    visit texts_url
    assert_selector "h1", text: "Texts"
  end

  test "should create text" do
    visit texts_url
    click_on "New text"

    fill_in "Color", with: @text.color
    fill_in "Content", with: @text.content
    fill_in "Message", with: @text.message_id
    fill_in "Size", with: @text.size
    fill_in "Weight", with: @text.weight
    click_on "Create Text"

    assert_text "Text was successfully created"
    click_on "Back"
  end

  test "should update Text" do
    visit text_url(@text)
    click_on "Edit this text", match: :first

    fill_in "Color", with: @text.color
    fill_in "Content", with: @text.content
    fill_in "Message", with: @text.message_id
    fill_in "Size", with: @text.size
    fill_in "Weight", with: @text.weight
    click_on "Update Text"

    assert_text "Text was successfully updated"
    click_on "Back"
  end

  test "should destroy Text" do
    visit text_url(@text)
    click_on "Destroy this text", match: :first

    assert_text "Text was successfully destroyed"
  end
end
