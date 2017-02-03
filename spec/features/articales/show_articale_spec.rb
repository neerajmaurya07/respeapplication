feature 'Create aricle' do
	before do
    @article = FactoryGirl.create(:artical)
    visit articale_path
  end
  scenario 'Show Articale' do
    expect(page).to have_content 'Article'
  end

end