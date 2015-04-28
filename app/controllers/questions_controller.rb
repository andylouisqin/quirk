class QuestionsController < ApplicationController
    def new
    	@question = Question.new
    end
  
    def create
        @room_id = params[:id]
        @question = Question.new(question_params)
        puts @question.save
        redirect_to :back
    end
  
    def upvote
        @question = Question.find(params[:question_id])
    	@question.score += 1
        @question.save
        redirect_to :back
    end
  
    private
        
    def question_params
        params.require(:question).permit(:body, :room_id)
    end
end
