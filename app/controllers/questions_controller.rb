class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @daily = Question.find_by(show_month: Time.now.month, show_day: Time.now.day)
  end


end