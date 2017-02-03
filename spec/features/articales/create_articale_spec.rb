feature 'Create aricle' do
	before do
    visit root_path
    find(:xpath, "//a[@href='articales/new']").click
  end
  
  scenario 'Articale was successfully created.' do
    fill_in 'title', with: 'MyString'
    fill_in 'content', with: 'MyText'
    click_on 'Create Articale'
    expect(page).to have_content 'Articale was successfully created.'
  end

end
