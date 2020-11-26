require 'test_helper'

class ProfessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get professions_index_url
    assert_response :success
  end

end
