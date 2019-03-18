require 'rails_helper'

RSpec.describe "User", type: :feature do

  include UserModuleHelper

  let(:user){create(:user)}
  before do
   login_user(user.email, user.password )
  end

  describe "New" do
    before do
     new_seminar
     sleep 2
     new_topic("title", "description", "dhafrsg")
    end

    it "successfully" do
      sleep 1
      expect(current_path).to eq('/seminartopics/1')
    end
  end

  describe "Edit" do
    before do
      new_topic("title", "description", "dhafrsg")
      sleep 2
      edit_seminar
      sleep 2
      edit_topic("title", "descripton", "dharani")
    end

    it "successfully" do
      sleep 1
      expect(current_path).to eq('/seminartopics/1')
    end
  end

  describe "Show" do
    before do
      new_topic("title", "description", "dhafrsg")
      sleep 2
      show_seminar
      sleep 2
      show_topic
    end

    it "successfully" do
      sleep 1
      expect(current_path).to eq('/seminartopics/1')
    end
  end

  describe "Delete" do
    before do
      new_topic("title", "description", "dhafrsg")
      sleep 2
      delete_seminar
      sleep 2
      delete_topic
    end

    it "successfully" do
      sleep 1
      expect(current_path).to eq('/seminartopics')
    end
  end

end
