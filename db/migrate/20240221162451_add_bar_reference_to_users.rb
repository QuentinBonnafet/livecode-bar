class AddBarReferenceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :bars, :user, index: true, foreign_key: true
  end
end
