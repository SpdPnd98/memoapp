require 'test_helper'

class MemoboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get memoboards_index_url
    assert_response :success
  end

end
