require 'rails_helper'

RSpec.describe "articales/show", type: :view do
  before(:each) do
    @articale = assign(:articale, Articale.create!(
      :title => "Title",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
