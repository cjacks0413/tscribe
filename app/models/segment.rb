class Segment < ActiveRecord::Base
	belongs_to :video
	has_many :transcriptions
end
