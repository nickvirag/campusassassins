require 'test_helper'

class SeasonControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
