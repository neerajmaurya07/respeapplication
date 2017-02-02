feature 'Create aricle' do
	before do
    visit articales_path
    find(:xpath, "//a[@href='articales/new']").click
    @article = FactoryGirl.create(:aricale)
  end
  
  
  end

  scenario 'without Generic name' do
    click_on 'Create Drug'
    expect(page).to have_content 'Generic name can\'t be blank'
  end

end
