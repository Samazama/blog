class CreateMangaComments < ActiveRecord::Migration
  def change
    create_table :manga_comments do |t|
      t.integer :manga_id
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
