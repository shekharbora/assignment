require 'test_helper'

class ContectsControllerTest < ActionDispatch::IntegrationTest
   test "should get new" do
	    get contects_url
	    assert_response :success
   end
   
end
