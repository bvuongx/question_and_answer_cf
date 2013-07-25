class QuestionsController < ApplicationController

  def index

  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      flash[:notice] = "Question has been posted."
      redirect_to @question
    else
      flash[:alert] = "Question has not been posted."
      render :action => "new"
    end
  end

  def show
    @question = Question.find(params[:id])
  end

end
