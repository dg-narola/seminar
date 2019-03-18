require 'rails_helper'

RSpec.describe "User", type: :feature do

  include UserModuleHelper

  let(:user){create(:user)}

  describe "User Profile" do
    before do
      login_user(user.email, user.password)
    end

    it "edits profile with out changing password" do
      edit_profile
      sleep 2
      expect(page).to have_field('user_email')
      update_profile_attributes(user)
      sleep 2
      expect(current_path).to eq('/users')
    end
  end

end
