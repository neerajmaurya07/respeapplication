require 'rails_helper'
require 'capybara/rspec'

feature 'Delete Articale' do
	before do
    @articale = FactoryGirl.create(:articale)
    visit articale_path(@articale)
    
  end

  scenario 'Delete one Articale', :js, :driver => :chrome do
    expect{ @articale.destroy
     }.to change(Articale, :count).by(-1)
  end
end