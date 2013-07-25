require 'spec_helper'

feature 'Creating Questions' do
  scenario "can create a question" do
    visit '/'
    click_link 'New Question'
    fill_in 'Inquiry', :with => 'What is Code Fellows?'
    click_button 'Create Question'
    page.should have_content('Question has been posted.')
  end
end
