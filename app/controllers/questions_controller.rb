class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:success] = "Question added!"
      redirect_to questions_path
    else
      flash[:alert] = "Oops, something went wrong. Please try again."
      render :new
    end
  end

  private
    def question_params
      params.require(:question).permit(:title, :description, :option_a, :option_b)
  end
end
