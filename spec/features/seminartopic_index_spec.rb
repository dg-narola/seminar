require 'rails_helper'

RSpec.describe "Seminartopic", type: :feature do

  include SeminartopicModuleHelper

  let(:seminartopic){create(:seminartopic)}

  describe "New" do
    before do
     new_topic("title", "description", "dhafrsg")
    end

    it "successfully" do
      sleep 1
      expect(current_path).to eq(',')
    end
  end


end
