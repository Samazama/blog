class CreateMangas < ActiveRecord::Migration
  def change
    create_table :mangas do |t|
      t.string :title
      t.text :plot
      t.integer :author_id
      t.integer :genre_id
      t.date :release

      t.timestamps
    end
  end
end
