require 'rails_helper'
require 'capybara/rspec'
feature 'Index Page' do

 
  scenario 'visit the articale index', :js, :driver => :chrome do
    visit root_path
    expect(page).to have_content 'Articale List'
  end
end  