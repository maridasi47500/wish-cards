require "test_helper"

class CodeformControllerTest < ActionDispatch::IntegrationTest
  test "should get pics" do
    get codeform_pics_url
    assert_response :success
  end
end
