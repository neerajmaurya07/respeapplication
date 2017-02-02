require 'rails_helper'

RSpec.describe "articales/edit", type: :view do
  before(:each) do
    @articale = assign(:articale, Articale.create!(
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit articale form" do
    render

    assert_select "form[action=?][method=?]", articale_path(@articale), "post" do

      assert_select "input#articale_title[name=?]", "articale[title]"

      assert_select "textarea#articale_content[name=?]", "articale[content]"
    end
  end
end
