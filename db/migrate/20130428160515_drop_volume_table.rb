class DropVolumeTable < ActiveRecord::Migration
  def change
    drop_table :volumes
  end
end
