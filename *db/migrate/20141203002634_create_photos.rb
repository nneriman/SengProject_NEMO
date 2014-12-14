class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.date :post_time
      t.text :description

      t.timestamps
    end
  end
end
