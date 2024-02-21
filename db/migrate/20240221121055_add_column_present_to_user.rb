class AddColumnPresentToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :present, :boolean, default: false
  end
end
