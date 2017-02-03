feature 'Index Page' do

  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Welcome"
  scenario 'visit the articale index' do
    visit root_path
    expect(page).to have_content 'Articale List'
  end
end  