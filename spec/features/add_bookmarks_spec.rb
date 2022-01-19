feature 'add bookmarks' do
  scenario 'add bookmarks to database' do
    visit ("/new")
    fill_in 'website', with: 'http://www.web.com'
    # fill_in(‘website’, {:with => “http://www.web.com”})
    click_button 'Submit'
    
    visit('/bookmarks')
    expect(page).to have_content 'http://www.web.com'
  end
end