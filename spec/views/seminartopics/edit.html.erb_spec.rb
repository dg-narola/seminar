require 'rails_helper'

RSpec.describe "seminartopics/edit", type: :view do
  before(:each) do
    @seminartopic = assign(:seminartopic, Seminartopic.create!(
      :title => "MyString",
      :descripton => "MyString",
      :studname => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit seminartopic form" do
    render

    assert_select "form[action=?][method=?]", seminartopic_path(@seminartopic), "post" do

      assert_select "input[name=?]", "seminartopic[title]"

      assert_select "input[name=?]", "seminartopic[descripton]"

      assert_select "input[name=?]", "seminartopic[studname]"

      assert_select "input[name=?]", "seminartopic[user_id]"
    end
  end
end
