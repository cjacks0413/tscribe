class TranscriptionsController < ApplicationController
 
  def new
    @video = Video.find(params[:video_id]) 
    @transcription = @video.transcriptions.build 
#    render partial: "transcriptions/new", locals: {video: @video, transcription: @transcription}
  end
  
  def create
    @video = Video.find(params[:video_id])
    @transcription = @video.transcriptions.build(trans_params)
    if @transcription.save
      redirect_to videos_path
    else
      redirect_to new_transcription_review_path(@restroom)
    end
  end 
  
    
  private
  
    def trans_params
      params.require(:transcription).permit(:data, :video_id)
    end 
end
