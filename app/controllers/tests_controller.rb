# encoding: utf-8

class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    if current_user.teacher.nil?
      flash["info"] = "Seu usuário não está relacionado com nenhum professor."
    else
      @current_user_tests = Test.for_user(current_user.teacher.id)
    end
    
  end

  def show
    respond_to do |format|
     format.html
     format.pdf do
        pdf = TestPdf.new(@test)
        send_data pdf.render, filename: "test_#{@test.id}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
   end
  end

  def new
    @test = Test.new
  end

  def edit
  end

  def create
    @test = Test.new(test_params)
    discipline_questions = @test.discipline.questions

    if discipline_questions.count.zero?
      flash[:danger] = "A disciplina #{@test.discipline.name} não possui questões"
      redirect_to tests_path
    else
      @test.save
      flash[:success] = "Prova criada com sucesso!"
      redirect_to @test
    end
  end

  def update
    if @test.update(test_params)
      flash[:success] = "Prova atualizada com sucesso!"
      redirect_to @test
    else
      render "edit"
    end
  end

  def destroy
    @test.destroy
    redirect_to tests_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:name, :level, :teacher_id, :discipline_id)
    end
end
