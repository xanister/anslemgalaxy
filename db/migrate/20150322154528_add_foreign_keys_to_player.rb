class AddForeignKeysToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :race_id, :integer
    add_column :players, :profession_id, :integer
  end
end
