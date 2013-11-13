class AddTextFieldToTranscriptions < ActiveRecord::Migration
  def change
    add_column :transcriptions, :data, :text
  end
end
