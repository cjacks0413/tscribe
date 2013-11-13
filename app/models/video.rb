class Video < ActiveRecord::Base
  has_many :transcriptions
end

