feature 'Delete Article' do
	before do
    @block = FactoryGirl.create(:article)
  end

  scenario 'soft delete' do
    visit articales_path
  	expect{click_on 'Destroy'}.to change(Article, :count).by(-1)
  	current_path.should == articales_path
  end

  scenario  'hard delete' do
    @articale.destroy
    visit articales_path
    expect{click_on 'ok'}.to change(Articale.unscoped, :count).by(-1)
    expect(page).to have_content 'Articale was successfully destroyed.'
  end
end