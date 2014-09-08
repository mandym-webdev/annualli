class AnswersController < ApplicationController
  
  def new
    @daily = Question.find_by(show_month: Time.now.month, show_day: Time.now.day)
    @answer = Answer.new
  end
 
  def create
    @question = Question.find(params[:question_id])
    if @question.answers.create( answer_params )
      redirect_to @question
    else
      render 'new'
    end
  end

  private

  def answer_params
      params.require(:answer).permit(:answer, :question_id)
  end

end