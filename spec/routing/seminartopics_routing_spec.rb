require "rails_helper"

RSpec.describe SeminartopicsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/seminartopics").to route_to("seminartopics#index")
    end

    it "routes to #new" do
      expect(:get => "/seminartopics/new").to route_to("seminartopics#new")
    end

    it "routes to #show" do
      expect(:get => "/seminartopics/1").to route_to("seminartopics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/seminartopics/1/edit").to route_to("seminartopics#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/seminartopics").to route_to("seminartopics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/seminartopics/1").to route_to("seminartopics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/seminartopics/1").to route_to("seminartopics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/seminartopics/1").to route_to("seminartopics#destroy", :id => "1")
    end
  end
end
