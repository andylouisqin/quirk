class QuestionsController < ApplicationController
  def new
  	@question = Question.new
  end

  def create
  	@question = Question.create(question_params)
  	@question.score = 0
  end

  def vote
  	@question.score += 1
  end
end
