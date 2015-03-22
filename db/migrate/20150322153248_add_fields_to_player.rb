class AddFieldsToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :mental, :integer
    add_column :players, :physical, :integer
    add_column :players, :social, :integer
  end
end
