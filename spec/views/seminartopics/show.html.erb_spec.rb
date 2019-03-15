require 'rails_helper'

RSpec.describe "seminartopics/show", type: :view do
  before(:each) do
    @seminartopic = assign(:seminartopic, Seminartopic.create!(
      :title => "Title",
      :descripton => "Descripton",
      :studname => "Studname",
      :user => "dharani"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Descripton/)
    expect(rendered).to match(/Studname/)
    expect(rendered).to match(/dharani/)
  end
end
