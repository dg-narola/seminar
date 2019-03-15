require 'rails_helper'

RSpec.describe "User", type: :feature do

  include UserModuleHelper

  let(:user){create(:user)}

  describe "Sign up" do
    before do
      sign_up_user("test@example", "test_example", "password")
    end

    it "successfully" do
      sleep 1
      expect(current_path).to eq('/')
    end
  end

  describe "Login" do
    before do
      login_user(user.email, user.password)
    end

    it "successfully" do
      sleep 2
      expect(current_path).to eq('/')
      expect(page).to have_css('h1', text: 'Seminartopics')
    end
  end

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
