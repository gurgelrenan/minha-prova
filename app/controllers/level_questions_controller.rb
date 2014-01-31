# encoding: utf-8

class LevelQuestionsController < ApplicationController
  before_action :set_level_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def new
  end

  def create
    @level_question = LevelQuestion.new(level_question_params)
    respond_to do |format| 
      if @level_question.save
        format.html {
          flash[:success] = "Questão avaliada com sucesso"
          redirect_to questions_path    
        }
        format.js {}
      else
        render "question/index"
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level_question
      @level_question = Teacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def level_question_params
      params.require(:level_question).permit(:value, :user_id, :question_id)
    end
end
