require 'rails_helper'
require 'capybara/rspec'
feature 'Display Articale' do
  before do
  	@articale = FactoryGirl.create(:articale)
    visit articale_path(@articale)
    # click_link 'Show'
    # find(:xpath, "//a[@href='/articales/#{@articale.id}']").click
  end
  scenario 'Articale' do
    expect(page).to have_content 'Article'
     expect(page).to have_content @articale.content

  end

end