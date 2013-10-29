# encoding: utf-8

class CoresController < ApplicationController
  before_action :set_core, only: [:show, :edit, :update, :destroy]

  def index
    @cores = Core.all
  end

  def show
  end

  def new
    @core = Core.new
  end

  def edit
  end

  def create
    @core = Core.new(core_params)
    if @core.save
      flash[:success] = "Núcleo criado com sucesso!"
      redirect_to @core
    else
      render 'new'
    end
  end

  def update
      if @core.update(core_params)
        flash[:success] = "Núcleo atualizado com sucesso!"
        redirect_to @core
      else
        render 'edit'
      end
  end

  def destroy
    @core.destroy
    redirect_to cores_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_core
      @core = Core.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def core_params
      params.require(:core).permit(:name, :course_id)
    end
end
