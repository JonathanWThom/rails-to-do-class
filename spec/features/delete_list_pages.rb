require 'rails_helper'

describe 'the delete list process' do
  it 'deletes a list' do
    list = List.create(:name => 'Home stuff')
    visit list_path(list)
    click_on 'Delete List'
    expect(page).not_to have_content('Home stuff')
  end
end
