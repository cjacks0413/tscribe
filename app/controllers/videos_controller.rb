class VideosController < ApplicationController
  def index
  end

  def new
    @video = Video.new 
  end 
  
  def create
      @video = Video.new(video_params)
    if @video.save
     redirect_to @video
    else
      render 'new'
    end 
  end 
  
  def update
    
  end
  
  def show
    @video = Video.find(params[:id]) 
    @transcription = @video.transcriptions.build 
  end  

  private
    
    def video_params
      params.require(:video).permit(:title)
      
    end
end
