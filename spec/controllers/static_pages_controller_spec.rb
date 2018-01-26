require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
	describe "home" do
		it "has a 200 status code" do
		get :home	
		expect(response.status).to eq(200)
		end

		it "should get home" do
			get :home
			assert_response :success
		end
		it "should get root" do
    	get FILL_IN
    	assert_response FILL_IN
  		end
	end

end
