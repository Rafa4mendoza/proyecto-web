class VideosController < ApplicationController
  before_action :set_video, only: [:edit, :update]


  def index
    @video = Video.all
  end

  def edit
    @video = Video.find(params[:id])
  end

 # def show
    #@phase = params[:id]
    #@documents = Document.where(phase: params[:id])
  #end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:fase_id)
    end
end