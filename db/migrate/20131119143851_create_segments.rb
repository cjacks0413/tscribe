class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.integer :start_time
      t.integer :stop_time
      t.integer :video_id

      t.timestamps
    end
  end
end
