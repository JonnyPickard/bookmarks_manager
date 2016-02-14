feature 'Adding tags' do

  scenario 'I can add a single tag to a new link' do
    visit '/links/new'
    fill_in 'url',   with: 'http://www.testlink.com'
    fill_in 'title', with: 'Test Links'
    fill_in 'tags',  with: 'education'

    click_button 'Create Link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('education')
  end

  scenario 'I can add multiple tags to a new link' do
    visit '/links/new'
    fill_in 'url',   with: 'http://www.testlink.com'
    fill_in 'title', with: 'Test Links'

    fill_in 'tags', with: 'education ruby'
    click_button 'Create Link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('education', 'ruby')
  end
end