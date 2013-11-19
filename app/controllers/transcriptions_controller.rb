class TranscriptionsController < ApplicationController
 
  def new
    @segment = Segment.find(params[:segment_id])
    @video = Video.find(@segment.video_id) 
    @transcription = @segment.transcriptions.build 
  end
  
  def create
    @segment = Segment.find(params[:segment_id])
	@video = Video.find(@segment.video_id)
    @transcription = @segment.transcriptions.build(trans_params)
    if @transcription.save
      redirect_to segment_path(@video.id)
    else
      redirect_to new_transcription_review_path(@restroom)
    end
  end 
  
    
  private
  
    def trans_params
      params.require(:transcription).permit(:data, :segment_id)
    end 
end
