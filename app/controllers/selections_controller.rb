class SelectionsController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @selection = @question.selections.new(selection_params)
    if @selection.save
      respond_to do |format|
        format.html { redirect_to questions_path }
        format.js
      end
    else
      redirect_back
    end
  end

  private

  def selection_params
    params.require(:selection).permit(:choice)
  end
end
