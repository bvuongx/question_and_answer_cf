require 'spec_helper'

feature 'Creating Questions' do
  scenario "can create a question" do
    visit '/'
    click_link 'New Question'
    fill_in 'Inquiry', :with => 'What is Code Fellows?'
    click_button 'Create Question'
    page.should have_content('Question has been posted.')

    question = Question.find_by_inquiry("What is Code Fellows?")
    page.current_url.should == question_url(question)
    title = "What is Code Fellows? - Question - QandA"
    find("title").should have_content(title)
  end
end
