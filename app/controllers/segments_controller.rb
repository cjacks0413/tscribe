class SegmentsController < ApplicationController
  def index
  	@segments = Segment.all 
  end
  
  def show
	@video = Video.find(params[:id]) 
	@segments = @video.segments 
  end
  
  def create
  end
  
end
