require 'spec_helper'

feature "Create topic" do

  before do
    visit new_topic_path
  end

  scenario "visiting the create topic page" do
    expect(page).to have_css("input#topic_title")
    expect(page).to have_content("Title")
    expect(page).to have_content("Body")
    expect(page).to have_content("Author")
  end

  scenario "submitting the form without a title" do
    expect {
      fill_in 'Body', with: 'topic body'
      fill_in 'Author', with: 'topic author'
      click_on 'Create Topic'
    }.not_to change(Topic, :count).by(1)
  end

  # js: true runs through FF/webkit gem
  scenario "submitting the form with a title", js: true do
    expect {
      fill_in 'Title', with: 'topic title'
      fill_in 'Body', with: 'topic body'
      fill_in 'Author', with: 'topic author'
      click_on 'Create Topic'
    }.to change(Topic, :count).by(1)
  end
end