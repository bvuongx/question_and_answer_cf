require 'spec_helper'

feature 'Creating Questions' do
  before do
    visit '/'
    click_link 'New Question'
  end

  scenario "can create a question" do

    fill_in 'Inquiry', :with => 'What is Code Fellows?'
    click_button 'Create Question'
    page.should have_content('Question has been posted.')

    question = Question.find_by_inquiry("What is Code Fellows?")
    page.current_url.should == question_url(question)
    title = "What is Code Fellows? - Question - QandA"
    find("title").should have_content(title)
  end

  scenario "can not save a question without a question" do
    click_button 'Create Question'
    page.should have_content("Question has not been posted.")
    page.should have_content("Inquiry can't be blank")
  end
end
