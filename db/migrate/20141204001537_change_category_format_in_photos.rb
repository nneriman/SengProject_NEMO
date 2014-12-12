class ChangeCategoryFormatInPhotos < ActiveRecord::Migration
  def up
    change_column :photos, :category, :integer
  end

  def down
    change_column :photos, :category, :string
  end
end
