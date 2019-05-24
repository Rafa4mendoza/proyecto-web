class FasesController < ApplicationController
  before_action :set_fase, only: [:edit, :update]


  def index
    @fase ||= Fase.all
  end

  def edit
    @fase = Fase.find(params[:id])
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fase
      @fase = Fase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fase_params
      params.require(:fase).permit(:video_id)
    end
end