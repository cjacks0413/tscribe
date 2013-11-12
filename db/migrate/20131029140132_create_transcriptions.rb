class CreateTranscriptions < ActiveRecord::Migration
  def change
    create_table :transcriptions do |t|

      t.timestamps
    end
  end
end
