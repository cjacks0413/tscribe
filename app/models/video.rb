class Video < ActiveRecord::Base
  has_many :segments 
  has_many :transcriptions, through: :segments
end

