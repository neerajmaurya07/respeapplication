feature 'Edit Articale' do
	before do
    @article = FactoryGirl.create(:article)
    visit articales_path
    click_on 'Edit'
  end

  scenario 'with correct information' do
    fill_in 'Block Name', with: 'Internal Medicine'
    click_on 'Update Block'
    expect(page).to have_content 'Internal Medicine'
  end

  scenario 'without name info should fail' do
  	fill_in 'Block Name', with: ''
    click_on 'Update Block'
    expect(page).to have_content 'Name can\'t be blank'
  end

end