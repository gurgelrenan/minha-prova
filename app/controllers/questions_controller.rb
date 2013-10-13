# encoding: utf-8

class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

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
    @question = Question.new(question_params)
    if @question.save
      flash[:success] = "Questão criada com sucesso!"
      redirect_to @question
    else
      render 'new'
    end
  end

  def update
    if @question.update(question_params)
      flash[:success] = 'Questão atualizada!'
      redirect_to @question
    else
      render action: 'edit'
    end
  end

  def destroy
    @question.destroy
    redirect_to questions_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:description, :type, :ranking, :image, :teacher_id, :discipline_id)
    end
end
