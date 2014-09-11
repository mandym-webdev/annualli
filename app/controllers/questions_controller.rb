class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find( params[:id] ).answers.order(id: :ASC)
  end


end