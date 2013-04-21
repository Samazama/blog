class AddPictureToMangas < ActiveRecord::Migration
  def change
    add_column :mangas, :picture, :string
  end
end
