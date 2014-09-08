class AnswersController < ApplicationController
  
  def new
    @daily = Question.find_by(show_month: Time.now.month, show_day: Time.now.day)
    @answer = Answer.new
  end
 

  def create
    @question = Question.find(params[:question_id])
    @question.answers.new( answer_params )
    @answer = Answer.last
    @answer.user_id = current_user.id
    if @answer.save
      redirect_to @question
    else
      render 'new'
    end
  end

  private

  def answer_params
      params.require(:answer).permit(:answer, :user_id, :question_id)
  end

end




  
 