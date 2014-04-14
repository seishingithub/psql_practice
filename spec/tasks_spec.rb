require 'spec_helper'
require_relative '../app'

Capybara.app = App

feature "Managing Tasks" do
  scenario "user should be able to add a task into the database" do
    visit "/"
    fill_in "description", with: "Finish writing this blog post"
    click_on "Submit"
    expect(page).to have_content("Finish writing this blog post")
  end
end