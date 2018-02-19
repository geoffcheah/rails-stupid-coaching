class QuestionsController < ApplicationController
  ANSWERS = {
    1 => "Great",
    2 => "Silly question, get dressed and go to work!",
    3 => "I don't care, get dressed and go to work"
  }

  def ask

  end

  def answer
    question = params[:question]
    if question == "I am going to work"
      @answer = ANSWERS[1]
    elsif question.include? "?"
      @answer = ANSWERS[3]
    else
      @answer = ANSWERS[2]
    end
  end
end


