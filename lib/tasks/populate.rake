namespace :db do
  desc "Erase and Fill Database"
  task :populate => :environment do
    require 'populator'
 
 	[Video, Segment, Transcription].each(&:delete_all) 
 	   
    Video.populate 15 do |v| 
      v.title = Populator.words(1..3).titleize
      Segment.populate 5..15 do |s|
        s.video_id = v.id
        s.start_time = 0...3000
        s.stop_time = 3000...5000
      end 
	end 
  end 
end 
