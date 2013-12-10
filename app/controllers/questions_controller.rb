class QuestionsController < ApplicationController
	before_action :set_question, only: [:show]
	def index
		@questions = Question.all
	end

	def show
	end

  def new
    @question = Question.new
  end

  def edit
  end

  def create
  end

  def destroy
  end

  def update
  end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end
end
