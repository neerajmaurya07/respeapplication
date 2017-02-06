require 'rails_helper'
require 'capybara/rspec'
feature 'Edit Articale' do
	before do
    @articale = FactoryGirl.create(:articale)
    visit edit_articale_path(@articale)
  end

  scenario 'Articale was successfully updated.', :js, :driver => :chrome do
    fill_in 'articale[title]', with: 'Udate testing'
    fill_in 'articale[content]', with: 'Udate testing body'
    click_on 'Update Articale'
    expect(page).to have_content 'Articale was successfully updated.'
  end

end