class AnswersController < ApplicationController
  
before_action :authenticate_user!, except: [:index, :show, :new]

  def index
    if params[:tag]
      @answers = Answer.tagged_with(params[:tag])
    else
      @answers = Answer.all
    end
  end

  def show  
    @article = Answer.find(params[:id])
  end

  def new
    @daily = Question.find_by(show_month: Time.now.month, show_day: Time.now.day)
    @answer = Answer.new
  end
 
  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new( answer_params )
    @answer.user_id = current_user.id
    @answer.question_id = @question.id
    # request = Geocoder::Result.new
    # result = request.location

    if @answer.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def tagged
    if params[:tag].present? 
      @answers = Answer.tagged_with(params[:tag])
    else 
      @answers = Answer.postall
    end  
  end

  private

  def answer_params
      params.require(:answer).permit(:answer, :user_id, :question_id, :tag_list, :latitude, :longitude)
  end

end




  
 