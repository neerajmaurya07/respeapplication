require 'rails_helper'

RSpec.describe "articales/index", type: :view do
  before(:each) do
    assign(:articales, [
      Articale.create!(
        :title => "Title",
        :content => "MyText"
      ),
      Articale.create!(
        :title => "Title",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of articales" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
