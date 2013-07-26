require 'spec_helper'

feature 'Viewing Questions' do
  scenario "Listing all questions" do
    question = Factory.create(:question, :inquiry => "What is Code Fellows?")
    visit '/'
    click_link 'What is Code Fellows?'
    page.current_url.should == question_url(question)
  end
end
