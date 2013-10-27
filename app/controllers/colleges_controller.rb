class CollegesController < ApplicationController
  before_action :set_college, only: [:show, :edit, :update, :destroy]

  def index
    @colleges = College.all
  end

  def show
  end

  def new
    @college = College.new
  end

  def edit
  end

  def create
    @college = College.new(college_params)
    if @college.save
      flash[:success] = "Universidade criada com sucesso"
      redirect_to @college
    else
      render "new"
    end
  end

  def update
    if @college.update(college_params)
      flash[:success] = "Universidade atualizada com sucesso!"
      redirect_to @college
    else
      render "edit"
    end
  end

  def destroy
    @college.destroy
    redirect_to colleges_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_college
      @college = College.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def college_params
      params.require(:college).permit(:name, :city, :state)
    end
end
