class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.datetime :post_time

      t.timestamps
    end
  end
end
