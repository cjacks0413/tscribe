class AddVideoIdToTranscriptions < ActiveRecord::Migration
  def change
    add_column :transcriptions, :video_id, :integer
  end
end
