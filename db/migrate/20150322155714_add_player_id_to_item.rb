class AddPlayerIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :player_id, :integer
  end
end
