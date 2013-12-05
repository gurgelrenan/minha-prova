class DisciplinesController < ApplicationController
  before_action :set_discipline, only: [:show, :edit, :update, :destroy]

  def index
    @disciplines = Discipline.all
  end

  def show
  end

  def new
    @discipline = Discipline.new
  end

  def edit
  end

  def create
    @discipline = Discipline.new(discipline_params)
      if @discipline.save
        flash[:success] = "Disciplina salva com sucesso!"
        redirect_to @discipline
      else
        render "new"
      end
  end

  def update
    if @discipline.update(discipline_params)
      flash[:success] = "Disciplina atualizada com sucesso!"
      redirect_to @discipline
    else
      render "edit"
    end
  end

  def destroy
    @discipline.destroy
    redirect_to disciplines_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discipline
      @discipline = Discipline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discipline_params
      params.require(:discipline).permit(:name, :description, :college_id, :teacher_id, :course_id)
    end
end
