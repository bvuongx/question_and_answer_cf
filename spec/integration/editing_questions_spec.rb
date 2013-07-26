require 'spec_helper'

feature 'Editing Questions' do
  before do
    Factory(:question, :inquiry => "What is Code Fellows?")
    visit '/'
    click_link "Edit"
    fill_in "Inquiry", :with => "When is the Code Fellows gold course?"
  end

  scenario "Updating a question" do
    click_button "Update Question"
    page.should have_content("Question has been updated.")
  end

  scenario "Updating a question with invalid attributes is bad" do
    fill_in "Inquiry", :with => ""
    click_button "Update Question"
    page.should have_content("Question has not been updated.")
  end

end
