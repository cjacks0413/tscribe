class RemoveVideoIdFromTranscription < ActiveRecord::Migration
  def change
      remove_column :transcriptions, :video_id, :integer
  end
end
