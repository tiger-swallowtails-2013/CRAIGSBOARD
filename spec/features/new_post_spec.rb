require 'spec_helper'

feature 'User visits new post page' do

  let!(:topic) { Topic.create(title: 'my topic') }

  before(:each) do
    visit new_post_path
  end

  scenario 'and sees a post form' do
    expect(page).to have_css('form.new_post')
  end

  scenario 'and submits a post without a title' do
    expect {
      find("option[value='#{topic.id}']").click
      fill_in 'Body', with: "whee!"
      fill_in 'Author', with: "whee!"
      click_on 'Create Post'
    }.not_to change(Post, :count)
    expect(page).to have_content("can't be blank")
  end

  scenario 'and submits a post with a title' do
    expect {
      find("option[value='#{topic.id}']").click
      fill_in 'Title', with: "whee!"
      fill_in 'Body', with: "whee!"
      fill_in 'Author', with: "whee!"
      click_on 'Create Post'
    }.to change(Post, :count)
  end

end
