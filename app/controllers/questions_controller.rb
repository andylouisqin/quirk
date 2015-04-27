class QuestionsController < ApplicationController
  def new
  	@question = Question.new(question_params)
  end

  def create
  	@question = Question.new(question_params)
  	@question.score = 0

    @question.save
      # redirect to room

  end

  def vote
  	@question.score += 1
  end

  private
      
  def question_params
      params.require(:question).permit(:body, :score)
  end
end
