require 'rails_helper'

describe "add a task process" do
  it "adds a task" do
    list = List.create(:name => 'Home stuff')
    task = Task.create(:description => 'Wash the dishes', :list_id => list.id)
    visit list_path(list)
    click_on 'Add a task'
    fill_in 'Description', :with => 'Clean my room'
    click_on 'Create Task'
    expect(page).to have_content 'Clean my room'
  end
end
