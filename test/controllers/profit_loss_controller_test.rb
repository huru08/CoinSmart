require "test_helper"

class ProfitLossControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profit_loss_index_url
    assert_response :success
  end
end
