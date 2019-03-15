require 'rails_helper'

RSpec.describe "seminartopics/index", type: :view do
  before(:each) do
    assign(:seminartopics, [
      Seminartopic.create!(
        :title => "Title",
        :descripton => "Descripton",
        :studname => "Studname",
        :user => "1"
      ),
      Seminartopic.create!(
        :title => "Title",
        :descripton => "Descripton",
        :studname => "Studname",
        :user => "dharani"
      )
    ])
  end

  it "renders a list of seminartopics" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Descripton".to_s, :count => 2
    assert_select "tr>td", :text => "Studname".to_s, :count => 2
    assert_select "tr>td", :text => "1".to_i, :count => 2
  end
end
