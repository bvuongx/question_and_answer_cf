require 'spec_helper'

feature "Deleting Questions" do
  scenario "Deleting a question" do
    Factory(:question, :inquiry => "What is Code Fellows?")
    visit '/'
    click_link "Delete"
    page.should have_content("Question has been deleted.")

    visit '/'
    page.should_not have_content("What is Code Fellows?")
  end
end
