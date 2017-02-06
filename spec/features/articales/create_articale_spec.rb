require 'rails_helper'
require 'capybara/rspec'
feature 'Create Aricale' do
	before do
    visit root_path
     find(:xpath, "//a[@href='/articales/new']").click
  end
  scenario 'Articale was successfully created.', :js, :driver => :chrome do
    fill_in 'articale[title]', with: 'Testing Articale'
    fill_in 'articale[content]', with: 'Test Body'
    click_on 'Create Articale'
    expect(page).to have_content 'Articale was successfully created.'
  end
  scenario 'Articale title can not be blank.', :js, :driver => :chrome do
    fill_in 'articale[title]', with: ''
    fill_in 'articale[content]', with: 'Test Body'

    click_on 'Create Articale'
    expect(page).to have_content "Title can\'t be blank"
  end

end
