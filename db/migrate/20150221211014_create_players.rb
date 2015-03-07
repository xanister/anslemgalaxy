class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :sprite
      t.string :region_server

      t.timestamps
    end
  end
end
