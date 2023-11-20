class QuestionsController < ApplicationController
  def ask
  end

  def answer
    answer1 = 'Great'
    answer2 = 'Silly question, get dressed and go to work!'
    answer3 = "I don't care, get dressed and go to work!"

    @answer = if params[:question] == 'I am going to work'
      answer1
    elsif params[:question][-1] == '?'
      answer2
    else
      answer3
              end
  end
end
