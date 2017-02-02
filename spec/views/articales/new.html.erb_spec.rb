require 'rails_helper'

RSpec.describe "articales/new", type: :view do
  before(:each) do
    assign(:articale, Articale.new(
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new articale form" do
    render

    assert_select "form[action=?][method=?]", articales_path, "post" do

      assert_select "input#articale_title[name=?]", "articale[title]"

      assert_select "textarea#articale_content[name=?]", "articale[content]"
    end
  end
end
