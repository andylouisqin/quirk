class QuestionsController < ApplicationController
  def new
  	@question = Question.new
  end

  def create
    room_id = params[:id]
    @question = Question.new(body:"", room_id:room_id, score:0)

    @question.save
      # redirect to room

  end

  def vote
  	@question.score += 1
  end

  private
      
  def question_params
      params.require(:question).permit(:body)
  end
end
