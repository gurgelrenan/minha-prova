class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  def index
    @teachers = Teacher.all
  end

  def show
  end

  def new
    @teacher = Teacher.new
  end

  def edit
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      flash[:success] = "Professor criado com sucesso!"
      redirect_to @teacher
    else
      render "new"
    end
  end

  def update
    if @teacher.update(teacher_params)
      flash[:success] = "Professor atualizado com sucesso!"
      redirect_to @teacher
    else
      render "edit"
    end
  end

  def destroy
    @teacher.destroy
    redirect_to teachers_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_params
      params.require(:teacher).permit(:name, :user_id, :course_id)
    end
end
