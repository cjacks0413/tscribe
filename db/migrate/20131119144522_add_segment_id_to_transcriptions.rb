class AddSegmentIdToTranscriptions < ActiveRecord::Migration
  def change
    add_column :transcriptions, :segment_id, :integer
  end
end
