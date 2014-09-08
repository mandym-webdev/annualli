class UsersController < ApplicationController
  
# before_action :authenticate_user!, except: [:index, :show, :new]

  def index
    @users = User.all
  end

  def show
    @user = User.find( params[:id] )
    # @question = Question.find( params[:id] )
    # @answer = Answer.find( params[:id] )

  end

  def new
    # @daily = Question.find_by(show_month: Time.now.month, show_day: Time.now.day)
    # @answer = Answer.new
  end
 
  def create
    # @question = Question.find(params[:question_id])
    # @answer = Answer.new( answer_params )
    # @answer.user_id = current_user.id
    # @answer.question_id = @question.id
    # if @answer.save
    #   redirect_to @question
    # else
    #   render 'new'
    # end
  end

  private

  def answer_params
      params.require(:answer).permit(:answer, :user_id, :question_id)
  end

end




  
 