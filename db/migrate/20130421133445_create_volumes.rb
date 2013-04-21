class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.integer :manga_id
      t.string :picture

      t.timestamps
    end
  end
end
