require 'test_helper'

class UniverseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get universe_index_url
    assert_response :success
  end

end
