class QuestionsController < ApplicationController
  def ask; end

  def answer
    if params[:ask] == 'I am going to work'
      @reply = 'Great!'
    elsif params[:ask].end_with?('?')
      @reply = 'Silly question, get dressed and go to work!'
    else
      @reply = "I don't care, get dressed and go to work!"
    end
  end
end
