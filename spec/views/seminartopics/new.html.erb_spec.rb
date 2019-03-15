require 'rails_helper'

RSpec.describe "seminartopics/new", type: :view do
  before(:each) do
    assign(:seminartopic, Seminartopic.new(
      :title => "MyString",
      :descripton => "MyString",
      :studname => "MyString",
      :user_id => 1 
    ))
  end

  it "renders new seminartopic form" do
    render

    assert_select "form[action=?][method=?]", seminartopics_path, "post" do

      assert_select "input[name=?]", "seminartopic[title]"

      assert_select "input[name=?]", "seminartopic[descripton]"

      assert_select "input[name=?]", "seminartopic[studname]"

      assert_select "input[name=?]", "seminartopic[user_id]"
    end
  end
end
